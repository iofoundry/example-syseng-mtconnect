import sys
import owlready2 as owl
from ontologies import BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example
from mtconnect_to_iof import MTConnectToIOF
from generate_diagram import GenerateDiagram
from iof_render import dl_render_terminology, dl_render_class, Namespaces
import re
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging
import logger
from generate_html import render_vendor, render_terminology

logger = logging.getLogger(__name__)

Example.load(only_local=True)

render_terminology("Example", Example)

if len(sys.argv) < 2:
    print("Usage: python script.py <file>")
    sys.exit(1)

file_name = sys.argv[1]

trans = None
with open(file_name, 'r') as file:
    print("Gettig MTConnect XML from:", file_name)

    xml = file.read()
    trans = MTConnectToIOF(xml)
    trans.convert()
    trans.write()

Vendor = trans.Vendor
Namespaces[Vendor.base_iri] = Vendor.name

#owl.sync_reasoner_pellet(infer_property_values = True, infer_data_property_values = True, debug = 10)
#print(Vendor.classes)

entities = [x[0] for x in owl.default_world.sparql("""select ?p { ?p a ?c . ?c rdfs:subClassOf* ?? . }""", \
                                                    [BFO.material_entity]) if x[0].namespace == trans.Data]

GenerateDiagram.linked_terms = set(entities)

render_vendor(Vendor.name, Vendor, entities)

all_data = list(owl.default_world.sparql(f"""select ?s ?p ?o {{ ?s ?p ?o . FILTER(LIKE(STR(?s), "{trans.Data.base_iri}%")) }}"""))
full = GenerateDiagram(f"{Vendor.name}Full", all_data, Vendor)
logger.info("Generating full diagram")
full.generate()

logger.info("Generating topology")
statements = [[x[0], Example.connectedTo, x[1]] \
  for x in owl.default_world.sparql("select distinct ?s ?o { ?s ?? ?o .}", [Example.connectedTo])]

gen = GenerateDiagram(f"{Vendor.name}Topo", statements, Vendor)
gen.generate()

logger.info("Generating mereology")
statements = [[x[0], Core.hasComponentPartAtAllTimes, x[1]] \
  for x in owl.default_world.sparql("select distinct ?s ?o { ?s ?? ?o .}", [Core.hasComponentPartAtSomeTime])]

gen = GenerateDiagram(f"{Vendor.name}Mere", statements, Vendor)
gen.generate()

for part in entities:
  logger.info(f"Generating diagram for {part}")  
  raw = owl.default_world.sparql("""select distinct ?p ?o ?p2 ?o2 { ?? ?p ?o . ?o ?p2 ?o2 . }""", [part])
  statements = []
  for x in raw:
    l1 = [part, x[0], x[1]]
    if l1 not in statements:
      statements.append(l1)
    if x[1].namespace != Vendor:
      l2 = [x[1], x[2], x[3]]
      if l2 not in statements:
        statements.append(l2)
  pre = owl.default_world.sparql("select distinct ?s ?p { ?s ?p ?? .}", [part])
  for x in pre:
    statements.append([x[0], x[1], part])
  gen = GenerateDiagram(f"{part.name}", statements, Vendor)
  gen.generate()

