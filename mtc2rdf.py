import sys
import requests
import owlready2 as owl
from ontologies import BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example, Data
from mtconnect_to_iof import MTConnectToIOF
from generate_diagram import GenerateDiagram
from iof_render import dl_render_terminology, dl_render_class, Namespaces
import re
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging

setup_logging(level = logging.DEBUG, indent_spaces=2, include_func=True, no_datetime=True)
logger = logging.getLogger(__name__)

Example.load(only_local=True)

def render_ontology(items, level = 1) -> str:
  s = ''
  if isinstance(items, dict):
    s = "\n".join([f"<h{level} id=\"{k}\">" + k + f"</h{level}>" + render_ontology(v, level + 1) for k, v in items.items()])
  elif isinstance(items, list):
    s = '<ul><li class="axiom">' + \
      "</li>\n<li class=\"axiom\">".join(items) +  \
      '</li></ul>'
  else:
    s = items
  return s

with open(f"Example.html", 'w') as f:
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
  font-size: 1.35em;
  border: none;
  border-top: 2px solid #bbb;
  margin: 1em 0 0em 0;
  padding-top: 0.25em;
}}

h2 {{
  font-size: 1.25em;
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
    <ul>
""")
    f.write(render_ontology(dl_render_terminology(Example)))
    f.write("""
    </ul>
  </body>
</html>
""")

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

entities = [x[0] for x in owl.default_world.sparql("""select ?p { ?p a ?c . ?c rdfs:subClassOf* ?? . }""", \
                                                    [BFO.material_entity]) if x[0].namespace == Data]

GenerateDiagram.linked_terms = set(entities)

all_data = list(owl.default_world.sparql(f"""select ?s ?p ?o {{ ?s ?p ?o . FILTER(LIKE(STR(?s), "{Data.base_iri}%")) }}"""))
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
  for x in owl.default_world.sparql("select distinct ?s ?o { ?s ?? ?o .}", [Core.hasComponentPartAtAllTimes])]

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

with open(f"{Vendor.name}.html", 'w') as f:
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
  margin: 1em 0 0em 0;
  padding-top: 0.25em;
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
    <h1 class='section-divider'>Complete Diagram</h1>
    <ul><li><a href='diagrams/{Vendor.name}Full.html'>{Vendor.name}</a></li></ul>
    <h1 class='section-divider'>Topology Diagram</h1>
    <ul><li><a href='diagrams/{Vendor.name}Topo.html'>{Vendor.name} Topology</a></li></ul>
    <h1 class='section-divider'>Mereology Diagram</h1>
    <ul><li><a href='diagrams/{Vendor.name}Mere.html'>{Vendor.name} Mereology</a></li></ul>
    <h1 class='section-divider'>Part Diagrams</h1>
    <ul>
""")
    for e in entities:
        f.write(f"      <li><a href='diagrams/{e.name}.html'>{e.name}</a></li>\n")
    f.write("""    </ul>
    <h1 class='section-divider'>Classes</h1>
    <div class='indent'>
""")
    for cls in Vendor.classes():
        f.write(f"      <h2 id={cls.name}>{cls.name}</h2>\n")
        f.write("      <ul>\n        <li class='axiom'>")
        f.write("</li>\n        <li class='axiom'>".join(dl_render_class(cls)))
        f.write("</li>\n      </ul>\n")
    f.write("""
    </div>
  </body>
</html>
""")