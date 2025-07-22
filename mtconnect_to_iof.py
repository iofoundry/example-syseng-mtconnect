
import xml.etree.ElementTree as ET
import owlready2 as owl
import os
import types
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging
from ontologies import *
import builtins

Units = {
  'NEWTON': QUDT.N,
  'NEWTON_METER': QUDT.N_M,
  'MILLIMETER': QUDT.MilliM,
  'DEGREE': QUDT.DEG,
  'MILLIMETER/SECOND': QUDT.MilliM_PER_SEC,
  'REVOLUTION/MINUTE': QUDT.RPM
}

Components = {
  'Linear': Example.LinearMotionSystem,
  'Rotary': Example.RotaryMotionSystem,
  'Device': Example.NumericallyControlledMachine,
  'Controller': Example.ControlSystem,
  'Path': Example.ControlSystemPath,
  'Composition': BFO.object,
  'MOTOR': Example.Motor,
  'BALLSCREW': Example.Ballscrew,
  'Electric': Example.ElectricalSystem,
  'Hydraulic': Example.HydraulicSystem,
  'Pneumatic': Example.PneumaticSystem,
  'Lubrication': Example.LubricationSystem,
  'Stock': Example.Stock,
  'Personnel': Example.Personnel,
  'PartOccurrence': Example.ProductPart,
  'Link': Example.Structure,
  'Enclosure': Example.Structure,
  'Environmental': Example.Room,
  
  'Axes': False,
  'Systems': False,
  'Parts': False,
  'Auxiliaries': False,
  'Resources': False,
  'Structures': False,
  'Materials': False
}

Functions = {
  'Device': Example.MillingCapability,
  'PRISMATIC': Example.PrismaticMotionCapability,
  'REVOLUTE': Example.RevoluteMotionCapability,
  'CONTINUOUS': Example.ContinuousRevoluteCapability
}

Capabilities = {
  'Device': Example.TurningCapability
}

DataItems = {
  'TEMPERATURE': QualPhysical.Temperature,
  'POSITION': QualPhysical.Displacement,
  'LENGTH': QualPhysical.Length,
  'ANGLE': QualPhysical.Angle,
  'VELOCITY': Example.PrismaticVelocity,
  'VELOCITY_PROGRAMMED': Example.PrismaticVelocity,
  'VELOCITY_RAPID': Example.PrismaticRapidVelocity,
  'ROTARY_VELOCITY': Example.RevoluteVelocity,
  'PATH_FEED_RATE': Example.TranslationalVelocity,
  'LINEAR_FORCE': QualPhysical.Force
}

Roles = {
  'Device': Core.EquipmentRole
}

Separate = {
  'Room'
}

setup_logging(level = logging.DEBUG, indent_spaces=2, include_func=True, no_datetime=True)
logger = logging.getLogger(__name__)

class MTConnectToIOF:
  """Convert MTConnect XML to IOF OWL format."""
  def __init__(self, xml):
    self.xml_content = xml
    self.root = ET.fromstring(self.xml_content)
    print(self.root.tag)
    ns = self.root.tag[1:].split('}')[0]
    self.ns = {'m': ns }
    self.particulars = dict()
    self.motion = dict()
    self.types = dict()
    
  @log_indent
  def convert(self):
    """Convert the MTConnect XML to IOF OWL format.""" 
    for device in self.root.findall(".//m:Device", self.ns):
      desc = device.find("./m:Description", self.ns)
      name = device.get('name')
      self.manufacturer = desc.get('manufacturer', name)
      self.serial = desc.get('serialNumber')
      self.model = desc.get('model')
      
      self.VendorName = self.manufacturer
      self.VendorFileName = f"{self.VendorName}.rdf"
      self.Vendor = owl.get_ontology(f"http://example.org/{self.VendorName}/")
      self.Vendor.base_iri = f"http://example.org/{self.VendorName}/"
      self.Vendor.imported_ontologies = [Example]
      Data.imported_ontologies.append(self.Vendor)

      logger.info(f"Converting device: {self.VendorName} creating ontology {self.Vendor.base_iri}")
      self._add_component(device)
      self._add_relationships(device)      

            
  def write(self):
    """Write the ontology to a file."""
    logger.info(f"Writing ontology to {self.VendorFileName}")
    self.Vendor.save(file = self.VendorFileName, format = "rdfxml")    
    Data.save(file = f"{self.VendorName}-Data.rdf", format = "rdfxml")
    
  @log_indent
  def _translate_class_specifications(self, element, type_cls, parent):
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
              if issubclass(di_cls, BFO.quality):
                quality = owl.types.new_class(f"{type_cls.name}{spec_name}", (di_cls,))
                quality.is_a.append(di_cls & Core.hasMeasuredValueAtSomeTime.some(Core.MeasuredValueExpression & \
                    Core.hasSimpleExpressionValue.some(const)))
                type_cls.is_a.append(Core.hasQuality.some(quality))
              else:
                profile = owl.types.new_class(f"{type_cls.name}{spec_name}", (di_cls,))
                profile.is_a.append(di_cls & Core.hasSpecifiedOutput.some(Core.MeasuredValueExpression & \
                        Core.hasSimpleExpressionValue.some(const)))
                type_cls.is_a.append(BFO.participates_in_at_some_time.some(profile))
  
  @log_indent
  def _create_particular_specifications(self, element, partic, name):
    """Create particular component specifications."""
    ds = None
    specifications = element.findall("./m:Configuration/m:Specifications/*", self.ns)
    if specifications:
      logger.info(f"Creating particular specifications")

      with Data:
        design_type = self.Vendor.search_one(iri = partic.is_instance_of[0].iri + "Design")
        ds = design_type()
        ds.label = owl.locstr(f"{design_type.name} particular", "en")
            
        partic.prescribedBy.append(ds)

        for spec in specifications:
          spec_name = spec.get("type")
          spec_name = name + ''.join([r.capitalize() for r in [spec_name, spec.get('subType', None)] if r])

          for des in spec:
            logger.info(f"Creating class particular specifications for {spec_name} value {spec.text}")
            exp = Core.ValueExpression(spec_name + des.tag.split('}')[-1])
            ds.hasValueExpressionAtAllTimes.append(exp)
            exp.hasSimpleExpressionValue.append(float(des.text))
            
            units = Units.get(spec.get("units", None), None)
            if units:
              exp.hasUnit.append(units)
    return ds
  
  @log_indent
  def _add_capability(self, partic, type, design_spec):
    """Add capability to the component."""
    
    with Data:
      if type in Capabilities:
        cap_cls = Capabilities[type]
        name = partic.name + cap_cls.name
        logger.info(f"Creating capbility {name} for {cap_cls}")
        cap = cap_cls(name)
        partic.hasCapability.append(cap)
        if design_spec: cap.prescribedBy.append(design_spec)
        
      if type in Functions:
        func_cls = Functions[type]
        name = partic.name + func_cls.name
        logger.info(f"Creating function {name} for {func_cls}")
        func = func_cls(name)
        partic.hasFunction.append(func)
        if design_spec: func.prescribedBy.append(design_spec)
        
  @log_indent
  def _add_data_items(self, element, partic):
    """Add data items to the component."""
    logger.info(f"Adding data items for {partic}")
    
    with Data:
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
          else:
            node.measuresAtSomeTime.append(data_item)
          

  @log_indent
  def _create_particular(self, element, type_cls, type, names, parent):
    """Create class particulars for the component."""
    logger.info(f"{type_cls}: Creating class particular {names}")
    
    with Data:
      id = element.get("id")
      pnames = names.copy()
      pnames[1] = self.serial
      name = "".join(pnames)
      partic = type_cls(name)
      self.particulars[id] = partic
      partic.label = owl.locstr(' '.join(pnames) + ' particular', "en")
      
      if parent and not type_cls.name in Separate:
        parent.hasComponentPartAtAllTimes.append(partic)
        
      text_name = element.get("name", id)

      node = Des.Name()
      node.hasTextualName.append(text_name)
      partic.hasName.append(node)      

      ds = self._create_particular_specifications(element, partic, name)
      key = type
      motion = element.find("./m:Configuration/m:Motion", self.ns)
      if motion:
        key = motion.get("type", type)
        self.motion[motion.get('id')] = type_cls
        
      self._add_capability(partic, key, ds)      
      #if type in Roles:
      #  partic.hasRole.append(Roles[type]())
      
    return partic

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
        with Data:
          partic.connectedTo.append(target)
        
        with self.Vendor:
          e = Example.connectedTo.some(type(target))
          if expr:
            expr = expr & e
          else:
            expr = e
      
      with self.Vendor:
        fc = type(partic).is_a[0]
        if expr:
          type(partic).is_a.append(expr)
          
        motion = element.find("./m:Configuration/m:Motion", self.ns)
        if motion:
          pid = motion.get('parentIdRef')
          if pid:
            parent = self.motion[motion.get('parentIdRef')]
            if parent:
              type(partic).is_a.append(Example.hasKinematicParent.some(parent))

    for component in element.findall("./m:Components/*", self.ns):
      self._add_relationships(component)
    
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
  def _add_component(self, element, names = [], parent = None):
    """Add a component to the ontology."""
    id = element.get("id")
    name = element.get("name", id)
    uuid = element.get("uuid")
    type = element.get("type", element.tag.split('}')[-1])
    if parent:
      path_part = uuid or name or id
      names.append(path_part)
    else:
      names.append(self.manufacturer)
      names.append(self.model)
    
    type_cls = None
    cls = Components.get(type, BFO.object)
    parts = []
    logger.info(f"{type} {id} {name} {uuid}: {cls}")
    if cls:
      # Special handling for linear motors
      save = False
      label_names = names
      if cls == Example.Motor and issubclass(builtins.type(parent), Example.LinearMotionSystem):
        label_names = names[0:2]
        label_names.append('Motor')
        label_names.extend(self._specification_name(element))
        type_name = "".join(label_names)
      else:
        type_name = "".join(names)      
        
      created = False
      with self.Vendor:
        type_cls = self.types.get(type_name)
        if not type_cls:
          type_cls = owl.types.new_class(type_name, (cls,))
          type_cls.label = owl.locstr(' '.join(label_names), "en")
          self.types[type_name] = type_cls
          created = True
          logger.info(f"Created {type_name} {type_cls.iri}")
        else:
          logger.info(f"Using existing {type_name} {type_cls.iri}")          

      if created:
        self._translate_class_specifications(element, type_cls, cls)      
      parent = self._create_particular(element, type_cls, type, names, parent)
      for composition in element.findall("./m:Compositions/*", self.ns):
        parts.extend(self._add_component(composition, names.copy(), parent))
      self._add_data_items(element, parent)
    
    for component in element.findall("./m:Components/*", self.ns):
      parts.extend(self._add_component(component, names.copy(), parent))
      
    if type_cls:
      with self.Vendor:
        for part in parts:
          logger.info(f"{type_cls}: Adding subclass axiom for #{part}")
          if not part.name in Separate:
            type_cls.is_a.append(Core.hasComponentPartAtAllTimes.some(part))

    if type_cls:
      return [type_cls]
    else:
      return parts