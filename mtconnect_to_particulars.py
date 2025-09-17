import xml.etree.ElementTree as ET
import owlready2 as owl
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging
import logger
from ontologies import *
from mappings import *

logger = logging.getLogger(__name__)

class MTConnectToParticulars:
  def __init__(self, device, data, types):
    self.ns = device.ns
    self.device = device
    self.Data = data
    self.types = types

    self.particulars = dict()
    self.motion = dict()

  def convert(self):
    """Convert the MTConnect device to an ontology."""
    self._add_component(self.device.element)
    self._add_relationships(self.device.element)
    return self.particulars
  
  @log_indent
  def _add_component(self, element, names = [], parent = None):
    """Add a component to the ontology."""
    type = self.device.type_name(element, names, parent)
    type_cls = self.types.type_by_id(element.get("id"))
    partic = None
    if type_cls:
      partic = self._create_particular(element, type_cls, type, names, parent)
    
      for composition in element.findall("./m:Compositions/*", self.ns):
        comp_id = composition.get("id", None)
        if comp_id:
          self._add_component(composition, names.copy(), partic)
        else:
          logger.error(f"Composition {composition} has no id")
          
      self._add_data_items(element, partic)

    for component in element.findall("./m:Components/*", self.ns):
      self._add_component(component, names.copy(), partic or parent)
      
    return partic

  @log_indent
  def _create_particular(self, element, type_cls, type, names, parent):
    """Create class particulars for the component."""
    logger.info(f"{type_cls}: Creating class particular {names}")
    
    with self.Data:
      id = element.get("id")
      pnames = names.copy()
      pnames[1] = self.device.serial
      name = "".join(pnames)
      partic = type_cls(name)
      self.particulars[id] = partic
      partic.label = owl.locstr(' '.join(pnames) + ' particular', "en")
      
      if parent and not any([issubclass(type_cls, _) for _ in Separate]):
        parent.hasComponent.append(partic)
      else:
        logger.info(f"{partic} is not a component of {parent} as it is in Separate")
        
      text_name = element.get("name", id)

      node = Des.Name()
      node.hasTextualName.append(text_name)
      partic.hasName.append(node)      

      ds = self._create_particular_specifications(element, partic, name)
      key = None
      motion = element.find("./m:Configuration/m:Motion", self.ns)
      if motion:
        key = motion.get("type", type)
        self.motion[motion.get('id')] = type_cls
        
      self._add_capability(partic, key, ds)      
      if type in Roles:
        for role in Roles[type]:
          role_partic = role(name + role.name)
          partic.hasRole.append(role_partic)
    
    return partic
  
  @log_indent
  def _add_data_items(self, element, partic):
    """Add data items to the component."""
    logger.info(f"Adding data items for {partic}")
    
    with self.Data:
      for di in element.findall("./m:DataItems/m:DataItem", self.ns):
        if di.get("category") == "CONDITION":
          continue
        
        base_type = di.get("type")
        type = '_'.join([r for r in [base_type, di.get('subType', None)] if r])        
        di_cls = DataItems.get(type, DataItems.get(base_type, None))
        
        if di_cls:
          logger.info(f"Adding data item {type} to {partic}")
          data_item = di_cls(partic.name + type)
          
          node = None
          comp_id = di.get("compositionId", None)
          if comp_id:
            node = self.particulars[comp_id]
          else:
            node = partic
            
          if issubclass(di_cls, BFO.quality):
            node.hasQuality.append(data_item)
          elif issubclass(di_cls, Example.State):
            node.observesAtSomeTime.append(data_item)
          else:
            node.measuresAtSomeTime.append(data_item)

  @log_indent
  def _add_capability(self, partic, type, design_spec):
    """Add capability to the component."""
    
    with self.Data:
      # Create a generic capability to state that all components have a capability.
      # The capability will allow for the inference of the capabililities of the component.
      cap = Core.Capability(partic.name + 'Capability')
      partic.hasCapability.append(cap)
      
      # Asserted capability
      if type in Capabilities:
        cap_cls = Capabilities[type]
        name = partic.name + cap_cls.name
        logger.info(f"Creating capbility {name} for {cap_cls}")
        cap = cap_cls(name)
        partic.hasCapability.append(cap)
        if design_spec: cap.prescribedBy.append(design_spec)
        
      # Asserted function
      if type in Functions:
        func_cls = Functions[type]
        name = partic.name + func_cls.name
        logger.info(f"Creating function {name} for {func_cls}")
        func = func_cls(name)
        partic.hasFunction.append(func)
        if design_spec: func.prescribedBy.append(design_spec)

  @log_indent
  def _create_particular_specifications(self, element, partic, name):
    """Create particular component specifications."""
    ds = None
    specifications = element.findall("./m:Configuration/m:Specifications/*", self.ns)
    if specifications:
      logger.info(f"Creating particular specifications")

      with self.Data:
        design_type = self.types.Vendor.search_one(iri = partic.is_instance_of[0].iri + "Design")
        ds = design_type()
        ds.label = owl.locstr(f"{design_type.name} particular", "en")
            
        partic.prescribedBy.append(ds)

        for spec in specifications:
          spec_name = spec.get("type")
          spec_name = name + ''.join([r.capitalize() for r in [spec_name, spec.get('subType', None)] if r])

          for des in spec:
            logger.info(f"Creating class particular specifications for {spec_name} value {spec.text}")
            exp = Core.ValueExpression(spec_name + des.tag.split('}')[-1])
            ds.hasValueExpressionAtSomeTime.append(exp)
            exp.hasSimpleExpressionValue.append(float(des.text))
            
            units = Units.get(spec.get("units", None), None)
            if units:
              exp.hasUnit.append(units)
    return ds    

  @log_indent
  def _add_relationships(self, element):
    partic = self.particulars.get(element.get('id'))
    
    if partic:
      expr = None        
      logger.info(f"Adding relationships for {partic}")
      rels = element.findall("./m:Configuration/m:Relationships/m:ComponentRelationship", self.ns)
      for rel in rels:
        rel_type = rel.get("type", "PEER")
        target = self.particulars[rel.get('idRef')]
        logger.info(f"  Adding {rel_type} relationship to {target}")
        with self.Data:
          partic.connectedTo.append(target)        

    for component in element.findall("./m:Components/*", self.ns):
      self._add_relationships(component)