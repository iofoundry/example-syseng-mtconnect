import sys
import requests
import owlready2 as owl
from ontologies import BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example, Data
from mtconnect_to_iof import MTConnectToIOF
from generate_diagram import GenerateDiagram
from owlready2.dl_render import dl_render_terminology_str, dl_render_class_str
import re

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

data = list(owl.default_world.sparql(f"""select ?s ?p ?o {{ ?s ?p ?o . FILTER(LIKE(STR(?s), "{Data.base_iri}%")) }}"""))

gen = GenerateDiagram(f"{Vendor.name}Full", data, Vendor.name)
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

