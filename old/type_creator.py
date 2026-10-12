import xml.etree.ElementTree as ET
import owlready2 as owl
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging
from ontologies import *
from mappings import *
import builtins

logger = logging.getLogger(__name__)

class TypeCreator:
  @log_indent
  def __init__(self, xml_node, ontology):
    self.xml_node = xml_node
    self.ontology = ontology
    self.type_dict = {}
    
    self._add_component(xml_node)
    
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
    
    if type == 'Rotary' or type == 'Linear':
      type = f"{type}{name[0].upper()}"
    
    type_cls = None
    cls = Components.get(type, BFO.object)
    logger.info(f"** Adding component: {type} with class {cls}")
    
    parts = []
    logger.info(f"{type} {id} {name} {uuid}: {cls}")
    if cls:
      # Special handling for linear motors
      save = False
      label_names = names
      if cls == Example.Motor and issubclass(builtins.type(partic), Example.LinearMotionSystem):
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
          self._translate_class_specifications(element, type_cls, cls)
          
          # Check roles
          #if type in Roles:
          #  for role in Roles[type]:              
          #    type_cls.is_a.append(Core.hasRole.some(role))          
          created = True
          logger.info(f"Created {type_name} {type_cls.iri}")
        else:
          logger.info(f"Using existing {type_name} {type_cls.iri}")          

      partic = self._create_particular(element, type_cls, type, names, parent)
      compositions = {}
      for composition in element.findall("./m:Compositions/*", self.ns):
        comp_id = composition.get("id", None)
        if comp_id:
          comp = self._add_component(composition, names.copy(), partic)
          parts.extend(comp)
          compositions[comp_id] = comp[0]
        else:
          logger.error(f"Composition {composition} has no id")
      self._add_data_items(element, partic)
      if created:
        self._add_class_data_items(element, type_cls, compositions)
    
    for component in element.findall("./m:Components/*", self.ns):
      parts.extend(self._add_component(component, names.copy(), partic))
      
    if type_cls:
      with self.Vendor:
        for part in parts:
          logger.info(f"{type_cls}: Adding subclass axiom for #{part}")
          if not any([issubclass(part, _) for _ in Separate]):
            type_cls.is_a.append(Example.hasComponent.some(part))
          else:
            logger.info(f"  {part} is a not component of {partic} since it is in Separate")

    if type_cls:
      return [type_cls]
    else:
      return parts