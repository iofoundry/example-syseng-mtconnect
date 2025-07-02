import sys
import requests
import owlready2 as owl
from ontologies import BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example, Data
from mtconnect_to_iof import MTConnectToIOF
from generate_diagram import GenerateDiagram

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
print(entities)

GenerateDiagram.linked_terms = entities

data = list(owl.default_world.sparql(f"""select ?s ?p ?o {{ ?s ?p ?o . FILTER(LIKE(STR(?s), "{Data.base_iri}%")) }}"""))
print(data)
