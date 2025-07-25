import owlready2 as owl
import os
import re

# owl.default_world.set_backend(filename = "./ontologies.sqlite3")

path = os.path.dirname(os.path.abspath(__file__))
cache = f"{path}/cache"

# owl.set_log_level(10)

print("Loading ontologies")
owl.onto_path.append(f"file:///{cache}")
owl.onto_path.append(f"file:///{path}")

with open(f"{cache}/bfo.rdf", "rb") as f:
  BFO = owl.get_ontology(f"http://purl.obolibrary.org/obo/bfo/2020/bfo.owl").load(only_local = True, fileobj=f)
BFO.world.ontologies["http://purl.obolibrary.org/obo/"] = BFO
with open(f"{cache}/AnnotationVocabulary.rdf", "rb") as f:
  AnnVocab = owl.get_ontology("https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/").load(only_local = True, fileobj=f)
AnnVocab.world.ontologies["https://spec.industrialontologies.org/ontology/202401/core/meta/AnnotationVocabulary/"] = AnnVocab
with open(f"{cache}/Core.rdf", "rb") as f:
  Core = owl.get_ontology("https://spec.industrialontologies.org/ontology/core/Core/").load(only_local = True, fileobj=f)
Core.world.ontologies["https://spec.industrialontologies.org/ontology/202401/core/Core/"] = Core
with open(f"{cache}/IOF_Qualities.rdf", "rb") as f:
  Qual = owl.get_ontology("https://spec.industrialontologies.org/ontology/qualities/Qualities/").load(only_local = True, fileobj=f)
with open(f"{cache}/IOF_Qualities-Physical.rdf", "rb") as f:
  QualPhysical = owl.get_ontology("https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/").load(only_local = True, fileobj=f)
with open(f"{cache}/Designators.rdf", "rb") as f:
  Des = owl.get_ontology(f"https://www.omg.org/spec/Commons/Designators/").load(only_local = True, fileobj=f)
print("done")

for cls in BFO.classes():
  name = re.sub(r"[ \-]", "_", str(cls.label.first()))
  setattr(BFO, name, cls)
  
for prop in BFO.object_properties():
  if prop.label:
    name = re.sub(r"[ \-]", "_", str(prop.label.first()))
    prop.python_name = name
    setattr(BFO, name, prop)
    

Example = owl.get_ontology(f"file:///{path}/example.rdf")
Example.base_iri = "http://example.org/ontology/"
if os.path.exists(f"{path}/example.rdf"):
  Example.load(only_local= True)

Data = owl.get_ontology("http://example.org/data/")
Data.base_iri = "http://example.org/data/"


QUDT = owl.get_ontology(f"http://qudt.org/vocab/unit/")
QUDT.base_iri = 'http://qudt.org/vocab/unit/'
with QUDT:
  class Unit(owl.Thing):
    pass
  
  QUDT.N = Unit('N')
  QUDT.N_M = Unit('N-M')
  QUDT.MilliM = Unit('MilliM')
  QUDT.MilliM_PER_SEC = Unit('MilliM-PER-SEC')
  QUDT.RPM = Unit('REV-PER-MIN')

