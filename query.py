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

with open(f"Mazak.rdf", "rb") as f:
  Mazak = owl.get_ontology(f"http://example.org/Mazak/").load(only_local = True, fileobj=f)
Mazak.base_iri = "http://example.org/Mazak/"

with open(f"Mazak-Data.rdf", "rb") as f:
  Data = owl.get_ontology(f"http://example.org/data/").load(only_local = True, fileobj=f)
Data.base_iri = "http://example.org/data/"

owl.sync_reasoner(infer_property_values=True, ignore_unsupported_datatypes=True)

for x in owl.default_world.sparql("""
  SELECT ?class ?property ?target WHERE {
  ?class rdfs:subClassOf+ [ a owl:Restriction ;
    owl:onProperty ?property ;
    owl:someValuesFrom ?target ] .

  FILTER (LIKE(str(?class), "http://example.org/Mazak/%"))
}
ORDER BY ?class
"""):
  print(x)