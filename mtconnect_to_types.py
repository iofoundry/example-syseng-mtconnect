import xml.etree.ElementTree as ET
import owlready2 as owl
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging
import logger
from ontologies import *
from mappings import *

logger = logging.getLogger(__name__)

class MTConnectToTypes:
  @log_indent
  def __init__(self, device, vendor):
    self.ns = device.ns
    self.device = device
    self.Vendor = vendor
    
    self.types = dict()
    self.motion = dict()
    self.types_by_id = dict()

  def type_by_name(self, name):
    """Get the type by name."""
    return self.types.get(name)
  
  def type_by_id(self, id):
    """Get the type by MTConnect id."""
    return self.types_by_id.get(id)
                                
  @log_indent
  def convert(self):
    """Convert the MTConnect device to an ontology."""
    self._add_component(self.device.element)
    self._add_relationships(self.device.element)
    return self.types
    
  @log_indent
  def _add_component(self, element, names = [], parent = None):
    """Add a component to the ontology."""
    type_cls = self._create_type(element, names, parent)
    
    for component in element.findall("./m:Components/*", self.ns):
      self._add_component(component, names.copy(), type_cls or parent)
      
    self._record_motion(element, type_cls)
    
    if type_cls:
      if parent and not any([issubclass(type_cls, _) for _ in Separate]):
        with self.Vendor:
          logger.info(f"{parent}: Adding subclass axiom for #{type_cls}")
          parent.is_a.append(Example.hasComponent.some(type_cls))
      else:
        logger.info(f"  {type_cls} is a not component of {parent} since it is in Separate")
    
    return type_cls
        
  @log_indent
  def _create_type(self, element, names, parent):
    type = self.device.type_name(element, names, parent)
    
    type_cls = None
    cls = Components.get(type, BFO.object)
    logger.info(f"** Adding component: {type} with class {cls}")
    
    if cls:
      # Special handling for linear motors
      label_names = names
      if cls == Example.Motor and issubclass(parent, Example.LinearMotionSystem):
        label_names = names[0:2]
        label_names.append('Motor')
        label_names.extend(self._specification_name(element))
        type_name = "".join(label_names)
      else:
        type_name = "".join(names)      
      
      with self.Vendor:
        type_cls = self.types.get(type_name)
        if not type_cls:
          type_cls = owl.types.new_class(type_name, (cls,))
          type_cls.label = owl.locstr(' '.join(label_names), "en")
          self.types[type_name] = type_cls
          self._translate_class_specifications(element, type_cls)
          
          # Check roles
          #if type in Roles:
          #  for role in Roles[type]:              
          #    type_cls.is_a.append(Core.hasRole.some(role))          
          logger.info(f"Created {type_name} {type_cls.iri}")
          compositions = self._add_compositions(element, names.copy(), type_cls)
          self._add_data_items(element, type_cls, compositions)
        else:
          logger.info(f"Using existing {type_name} {type_cls.iri}")
          
        self.types_by_id[element.get('id')] = type_cls
        
    return type_cls
  
  @log_indent
  def _specification_name(self, element):
    specifications = element.findall("./m:Configuration/m:Specifications/*", self.ns)
    np = []
    if specifications:
      for spec in specifications:
        np.append(spec.get('type'))
        np.extend([_.text for _ in spec if _.text != '0'])
    return np
  
  @log_indent
  def _add_compositions(self, element, names, parent):
    """Add compositions to the ontology."""
    compositions = {}
    for composition in element.findall("./m:Compositions/*", self.ns):
      comp_id = composition.get("id", None)
      if comp_id:
        comp = self._add_component(composition, names.copy(), parent)
        if comp: compositions[comp_id] = comp
      else:
        logger.error(f"Composition {composition} has no id")
        
    return compositions
       
  @log_indent
  def _add_data_items(self, element, klass, compositions):
    """Add data items to the component class."""
    logger.info(f"Adding data items for {klass}")
    
    with self.Vendor:
      for di in element.findall("./m:DataItems/m:DataItem", self.ns):
        if di.get("category") == "CONDITION":
          continue
        
        base_type = di.get("type")
        type = '_'.join([r for r in [base_type, di.get('subType', None)] if r])        
        di_cls = DataItems.get(type, DataItems.get(base_type, None))
        
        if di_cls:
          logger.info(f"Adding observation {type}")
          
          node = None
          comp_id = di.get("compositionId", None)
          if comp_id:
            node = compositions[comp_id]
          else:
            node = klass
                      
          if issubclass(di_cls, BFO.quality):
            node.is_a.append(Core.hasQuality.some(di_cls))
          elif issubclass(di_cls, Example.State):
            node.is_a.append(BFO.participates_in_at_some_time.some(di_cls))
          else:
            node.is_a.append(Core.measuresAtSomeTime.some(di_cls))

  @log_indent
  def _translate_class_specifications(self, element, type_cls):
    """Translate specifications from MTConnect to class axioms."""
    specifications = element.findall("./m:Configuration/m:Specifications/*", self.ns)
    if specifications:
      logger.info(f"{type_cls}: Adding specifications")

      with self.Vendor:
        design_type = f"{type_cls.name}Design"
        design = owl.types.new_class(design_type, (Core.DesignSpecification,))
        type_cls.is_a.append(Example.conformsTo.only(design))
        
        for spec in specifications:
          spec_name = spec.get("type")
          title = '_'.join([r for r in [spec_name, spec.get('subType', None)] if r])
          di_cls = DataItems.get(title, None)
        
          if di_cls:
            min = max = nominal = None
            for const in spec:
              if const.tag.endswith('Minimum'):
                min = float(const.text)
              elif const.tag.endswith('Maximum'):
                max = float(const.text)
              elif const.tag.endswith('Nominal'):
                nominal = float(const.text)
            
            if min or max or nominal:
              logger.info(f"> {type_cls}: Adding specification {title} for {di_cls} with min={min}, max={max}, nominal={nominal}")
              const = None
              args = dict()
              if nominal:
                args['min_inclusive'] = nominal
                args['max_inclusive'] = nominal
              if min:
                args['min_inclusive'] = min
              if max:
                args['max_inclusive'] = max
              
              const = owl.ConstrainedDatatype(float, **args)
                              
              spec_name = ''.join([r.capitalize() for r in [spec_name, spec.get('subType', None)] if r])
              units = None # Units.get(spec.get("units", None), None)
              if units:
                unit_const = Example.hasUnit.value(units)
              else:
                unit_const = Example.hasUnit.only(QUDT.Unit)

              if issubclass(di_cls, BFO.quality):
                quality = owl.types.new_class(f"{type_cls.name}{spec_name}", (di_cls,))
                quality.is_a.append(Core.hasMeasuredValueAtSomeTime.some(Core.MeasuredValueExpression & \
                    Core.hasSimpleExpressionValue.some(const) & unit_const))
                type_cls.is_a.append(Core.hasQuality.some(quality))
              else:
                profile = owl.types.new_class(f"{type_cls.name}{spec_name}", (di_cls,))
                profile.is_a.append(Core.hasSpecifiedOutput.some(Core.MeasuredValueExpression & \
                        Core.hasSimpleExpressionValue.some(const) & unit_const))
                type_cls.is_a.append(BFO.participates_in_at_some_time.some(profile))


  @log_indent
  def _record_motion(self, element, type_cls):
      motion = element.find("./m:Configuration/m:Motion", self.ns)
      if motion:
        self.motion[motion.get('id')] = type_cls
        
  def _add_relationships(self, element):
    type = self.types_by_id.get(element.get('id'))
    
    if type:
      expr = None        
      logger.info(f"Adding relationships for {type}")
      rels = element.findall("./m:Configuration/m:Relationships/m:ComponentRelationship", self.ns)
      for rel in rels:
        rel_type = rel.get("type", "PEER")
        target = self.types_by_id[rel.get('idRef')]
        logger.info(f"  Adding {rel_type} relationship to {target}")       
        with self.Vendor:
          e = Example.connectedTo.some(target)
          if expr:
            expr = expr & e
          else:
            expr = e
      
      with self.Vendor:
        if expr:
          type.is_a.append(expr)
          
        motion = element.find("./m:Configuration/m:Motion", self.ns)
        if motion:
          pid = motion.get('parentIdRef')
          if pid:
            parent = self.motion[motion.get('parentIdRef')]
            if parent:
              type.is_a.append(Example.hasKinematicParent.some(parent))

    for component in element.findall("./m:Components/*", self.ns):
      self._add_relationships(component)