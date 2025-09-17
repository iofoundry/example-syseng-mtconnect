from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging

setup_logging(level = logging.DEBUG, indent_spaces=2, include_func=True, no_datetime=True)
logger = logging.getLogger(__name__)

class Device:
  def __init__(self, ns, element):
    self.ns = ns
    self.element = element
    self.name = element.get('name')
    self.id = element.get('id')
    self.uuid = element.get('uuid')
    desc = element.find("./m:Description", self.ns)
    self.manufacturer = desc.get('manufacturer', self.name)
    self.serial = desc.get('serialNumber')
    self.model = desc.get('model')
      
  @log_indent
  def type_name(self, element, names, parent):
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

    logger.info(f"{type} {id} {name} {uuid}")

    return type
