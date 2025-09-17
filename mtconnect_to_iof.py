
import xml.etree.ElementTree as ET
import owlready2 as owl
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging
import logger
from ontologies import *
from mappings import *
import builtins
from mtconnect_to_types import MTConnectToTypes
from mtconnect_to_particulars import MTConnectToParticulars
from device import Device

logger = logging.getLogger(__name__)

class MTConnectToIOF:
  """Convert MTConnect XML to IOF OWL format."""
  def __init__(self, xml):
    self.xml_content = xml
    self.root = ET.fromstring(self.xml_content)
    print(self.root.tag)
    ns = self.root.tag[1:].split('}')[0]
    self.ns = {'m': ns }

  @log_indent
  def convert(self):
    """Convert the MTConnect XML to IOF OWL format.""" 
    for element in self.root.findall(".//m:Device", self.ns):
      device = Device(self.ns, element)
      
      self.VendorName = device.manufacturer
      self.VendorFileName = f"{self.VendorName}.rdf"
      self.Vendor = owl.get_ontology(f"http://example.org/{self.VendorName}/")
      self.Vendor.base_iri = f"http://example.org/{self.VendorName}/"
      self.Vendor.imported_ontologies = [Example]
      
      self.Data = owl.get_ontology("http://example.org/data/")
      self.Data.base_iri = "http://example.org/data/"
      self.Data.imported_ontologies.append(self.Vendor)

      logger.info(f"Converting device: {self.VendorName} creating ontology {self.Vendor.base_iri}")
      types = MTConnectToTypes(device, self.Vendor)
      types.convert()
      partics = MTConnectToParticulars(device, self.Data, types)
      partics.convert()
            
  def write(self):
    """Write the ontology to a file."""
    logger.info(f"Writing ontology to {self.VendorFileName}")
    self.Vendor.save(file = self.VendorFileName, format = "rdfxml")    
    self.Data.save(file = f"{self.VendorName}-Data.rdf", format = "rdfxml")
