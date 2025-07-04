from ontologies import *
import os
import owlready2 as owl
import owlready2.base as ob
import subprocess

class GenerateDiagram:
  linked_terms = None
  
  def _add_object(self, obj):
    if not obj in self.objects:
      self.objects[obj] = f"o{len(self.objects)}"
  
  def _obj(self, obj):
    return self.objects.get(obj, None)
  
  def __init__(self, filename, statements, vendor):
    self.filename = filename
    self.statements = statements
    self.objects = dict()
    
    self.namespaces = {
      'https://spec.industrialontologies.org/ontology/core/Core/': 'core',
      'http://purl.obolibrary.org/obo/': 'bfo',
      'http://qudt.org/vocab/unit/': 'units',
      'https://www.omg.org/spec/Commons/Designators/': 'des',
      'https://spec.industrialontologies.org/ontology/qualities/Qualities/': 'qual',
      'https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/': 'qualphys',
      'http://example.org/data/': 'data',
      f"http://example.org/{vendor}/": 'vendor',
      "http://example.org/ontology/": 'ex',
      "http://www.w3.org/2002/07/owl#": 'owl',
      "http://www.w3.org/1999/02/22-rdf-syntax-ns#": 'rdf',
      "http://www.w3.org/2001/XMLSchema#": 'xsd',
      "http://www.w3.org/2000/01/rdf-schema#": 'rdfs'
    }
    
    for s, p, o in statements:
      if p != ob.rdf_type:
        self._add_object(s)
        if not isinstance(o, (str, int, float, owl.locstr)): self._add_object(o)
        
  def _name(self, o):
    if isinstance(o, (float, str, owl.locstr)):
      return o
    
    name = None
    ns = None
    if isinstance(o, (int)):
      iri = owl.default_world._unabbreviate(o)
      if not iri:
        return o
      
      if '#' in iri:
        ns, name = iri.rsplit('#', 1)
        ns += '#'
      else:
        ns, name = iri.rsplit('/', 1)
        ns += '/'
    else:      
      ns = o.namespace.base_iri
      if o.namespace.base_iri == BFO.base_iri:
        name = o._python_name
      else:
        name = o.name

    pre = self.namespaces.get(ns, "uns")
        
    return f"{pre}:{name}"
  
  def _print_object(self, f, o):
    if o == ob.rdf_nil: return
    
    if o in self.linked_terms:
      ns, name = self._name(o).split(':')
      title = f"{ns}:[[./{name}.html {name}]]"
    else:
      title = self._name(o)

    f.write(f"individual({self._obj(o)}, {title}, {self._name(o.is_a[0])})\n")    
    #if t = @@types[iri]
    #  f.puts "individual(#{obj(iri)}, #{title}, #{self.class.uml_name(t)})"
    #else
    #  f.puts "individual(#{obj(iri)}, #{title})"
    #end
  
  def _print_statement(self, f, s, p, o):
    if p != ob.rdf_type and o != ob.rdf_nil:
      if isinstance(o, (int, str, float)):
        f.write(f"data({self._obj(s)}, \"{self._name(p)}\", \"{self._name(o)}\")\n")
      else:
        f.write(f"property({self._obj(s)}, \"{self._name(p)}\", {self._obj(o)})\n")
  
  def _generate_html(self):
    with open(f"diagrams/{self.filename}.html", 'w') as f:
      f.write(f"""
<!doctype html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>{os.path.basename(self.filename)}</title>
  </head>
  <body>
    <object data="./#{os.path.basename(self.filename)}.svg"/>
  </body>
</html>
""")
  
  def _generate_diagram(self):
    with open(f"diagrams/{self.filename}.puml", 'w') as f:
      f.write(f"""
@startuml
' !include https://raw.githubusercontent.com/iofoundry/ontopuml/refs/heads/Development/iof.iuml
!include ../iof.iuml

<style>
object {{
  HyperlinkColor #C4E1E6
}}
</style>

left to right direction
skinparam linetype polyline
title {os.path.basename(self.filename)}

!$default_direction = down

!$namespace_colors = {{ "bfo":"DFA702", 
                      "iof":"1E90FF", 
                      "ns":"Green", 
                      "ns1":"76608A",
                      "core":"000000",
                      "ex":"Green",
                      "data":"76608A",
                      "vendor":"76608A",
                      "units":"8A2D3B",
                      "cmns-dsg":"3A0519",
                      "qp":"641B2E"
      }}
""")
      
      for o in self.objects:
        self._print_object(f, o)
        
      for s, p, o in self.statements:
        self._print_statement(f, s, p, o)
        
      f.write("@enduml\n")
  
  def generate(self):
    self._generate_html()
    self._generate_diagram()
    
    subprocess.run(['plantuml', '-tsvg', f"diagrams/{self.filename}.puml"])
        
      
  
      
