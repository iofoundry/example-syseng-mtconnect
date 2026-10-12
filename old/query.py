import sys
import owlready2 as owl
from ontologies import BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example
from mtconnect_to_iof import MTConnectToIOF
from generate_diagram import GenerateDiagram
from iof_render import dl_render_terminology, dl_render_class, Namespaces, dl_render_concept_str
import re
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging
import logger
from generate_html import render_vendor, render_terminology

with open(f"Mazak.rdf", "rb") as f:
  Mazak = owl.get_ontology(f"http://example.org/Mazak/").load(only_local = True, fileobj=f)
Mazak.base_iri = "http://example.org/Mazak/"

with open(f"Mazak-Data.rdf", "rb") as f:
  Data = owl.get_ontology(f"http://example.org/data/").load(only_local = True, fileobj=f)
Data.base_iri = "http://example.org/data/"

#owl.sync_reasoner(infer_property_values=True, ignore_unsupported_datatypes=True)

print("Classes and subclasses axioms")

for x in owl.default_world.sparql("""
  SELECT ?class ?property ?target ?a ?c WHERE {
  ?class rdfs:subClassOf+ [ a owl:Restriction ;
    owl:onProperty ?property ;
    owl:someValuesFrom ?target ] .
  ?target ?a ?c .

  FILTER (LIKE(str(?class), "http://example.org/Mazak/%"))
}
ORDER BY ?class
"""):
  print(x)
  print(dl_render_class(x[0]))
        
        
print("\n\nClasses and equivalent axioms\n\n")

for x in owl.default_world.sparql("""
  SELECT ?class ?property WHERE {
  ?class owl:equivalentClass [ a owl:Class ;
    owl:intersectionOf ?list ] .
  ?list rdf:rest*/rdf:first ?property .
  
  FILTER (LIKE(str(?class), "http://example.org/%"))
}
ORDER BY ?class
"""):
  print(x)
  
  
'''
  SELECT ?class ?property ?target WHERE {
  ?class rdfs:subClassOf+ [ a owl:Restriction ;
    owl:onProperty ?property ;
    owl:someValuesFrom ?target ] .

  FILTER regex(str(?class), "^http://example.org/Mazak/")
}
ORDER BY ?class
'''

'''
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX mt: <http://example.org/ontology/>
PREFIX data: <http://example.org/data/>
PREFIX mazak: <http://example.org/Mazak/>


SELECT ?class ?property WHERE {
  ?class owl:equivalentClass [ a owl:Class ;
    owl:intersectionOf ?list ] .
  ?list rdf:rest*/rdf:first ?property .
  
  FILTER regex(str(?class), "^http://example.org/")

}
ORDER BY ?class
'''