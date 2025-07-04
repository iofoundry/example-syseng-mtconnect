import sys
import requests
import owlready2 as owl
from ontologies import BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example, Data
from mtconnect_to_iof import MTConnectToIOF
from generate_diagram import GenerateDiagram
from owlready2.dl_render import dl_render_terminology_str, dl_render_class_str
import re
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging

setup_logging(level = logging.DEBUG, indent_spaces=2, include_func=True, no_datetime=True)
logger = logging.getLogger(__name__)

Example.load(only_local=True)

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

entities = [x[0] for x in owl.default_world.sparql("""select ?p { ?p a ?c . ?c rdfs:subClassOf* ?? . }""", \
                                                    [BFO.material_entity]) if x[0].namespace == Data]

GenerateDiagram.linked_terms = set(entities)

all_data = list(owl.default_world.sparql(f"""select ?s ?p ?o {{ ?s ?p ?o . FILTER(LIKE(STR(?s), "{Data.base_iri}%")) }}"""))
full = GenerateDiagram(f"{Vendor.name}Full", all_data, Vendor.name)
logger.info("Generating full diagram")
full.generate()

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
  gen = GenerateDiagram(f"{part.name}", statements, part.name)
  gen.generate()
  

with open("index.html", 'w') as f:
    f.write(f"""
<!doctype html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>Types</title>
    <style>
body {{
  font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}}

h1 {{
  font-size: 1.5em;
}}

.section-divider {{
  border: none;
  border-top: 2px solid #bbb;
  margin: 2.5em 0 1.5em 0;
}}

h2 {{
  font-size: 1.35em;
}}

.axiom {{
  font-family: 'Fira Mono', 'Menlo', 'Consolas', 'Liberation Mono', 'Courier New', monospace;
  font-size: 1em;
}}

.indent {{
  margin-left: 3em;
}}
    </style>
  </head>
  <body>
""")
    f.write("<h1 class='section-divider'>Complete Diagrams</h1>\n")
    f.write(f"<ul><li><a href='diagrams/{Vendor.name}Full.html'>{Vendor.name}</a></li></ul>")
    f.write("<h1 class='section-divider'>Part Diagrams</h1>\n<ul>")
    for e in entities:
        f.write(f"<li><a href='diagrams/{e.name}.html'>{e.name}</a></li>\n")
    f.write("</ul>\n")
    f.write("<h1 class='section-divider'>Classes</h1>\n")
    f.write("<div class='indent'>")
    for cls in Vendor.classes():
        f.write(f"<h2 id={cls.name}>{cls.name}</h2>")
        f.write("<ul><li class='axiom'>\n")
        axioms = dl_render_class_str(cls)
        f.write("</li>\n<li class='axiom'>".join([x for x in axioms.splitlines()]))
        f.write("</li></ul>\n")
    f.write("</div>\n")
    f.write("""
  </body>
</html>
""")

