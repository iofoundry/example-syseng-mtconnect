import sys
import requests
import owlready2 as owl
from ontologies import BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example, Data
from mtconnect_to_iof import MTConnectToIOF
from generate_diagram import GenerateDiagram
from owlready2.dl_render import dl_render_terminology_str
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

gen = GenerateDiagram("test", data)
gen.generate()

with open("test_types.html", 'w') as f:
    f.write(f"""
<!doctype html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>Types</title>
  </head>
  <body>
""")
    
    types = re.sub(r'^(.+)$', '<p>\\1</p>', \
                re.sub(r'[#]+\s+((\w+)\s+)+[#]+', '<h1>\\1</h1>', \
                    re.sub(r'^[#]+$', '', \
                        dl_render_terminology_str(onto = Vendor), \
                            flags= re.MULTILINE), \
                flags=re.MULTILINE), \
            flags=re.MULTILINE)
    
    f.write(types)
    f.write("""
  </body>
</html>
""")

