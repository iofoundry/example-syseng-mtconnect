from ontologies import *
import os
import owlready2 as owl
import owlready2.base as ob

class GenerateDiagram:
  linked_terms = None
  
  def _add_object(self, obj):
    if not obj in self.objects:
      self.objects[obj] = f"o{len(self.objects)}"
  
  def _obj(self, obj):
    return self.objects.get(obj, None)
  
  def __init__(self, filename, statements):
    self.filename = filename
    self.statements = statements
    self.objects = dict()
    
    for s, p, o in statements:
      if p != ob.rdf_type:
        self._add_object(s)
        if not isinstance(o, (str, int, float, owl.locstr)): self._add_object(o)
  
  def _print_object(self, f, o):
    if o == ob.rdf_nil: return
    
    if o in self.linked_terms:
      title = o.name # "#{iri.qname.first}:[[./#{iri.qname.last}.html #{iri.qname.last}]]"
    else:
      title = o.name

    f.write(f"individual({self._obj(o)}, {title}, {o.is_a[0]})\n")    
    #if t = @@types[iri]
    #  f.puts "individual(#{obj(iri)}, #{title}, #{self.class.uml_name(t)})"
    #else
    #  f.puts "individual(#{obj(iri)}, #{title})"
    #end
  
  def _print_statement(self, f, s, p, o):
    if p != ob.rdf_type and o != ob.rdf_nil:
      if isinstance(o, (int, str, float)):
        f.write(f"data({self._obj(s)}, {p}, {o})\n")
      else:
        f.write(f"property({self._obj(s)}, {p}, {self._obj(o)})\n")
  
  def generate(self):
    with open(f"{self.filename}.html", 'w') as f:
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
      
    with open(f"{self.filename}.puml", 'w') as f:
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
                      "ns1":"76608A" }}
""")
      color = {
        "core": "000000",
        "ex": "Green",
        "data": "76608A",
        "units": "8A2D3B",
        "cmns-dsg": "3A0519",
        "qp": "641B2E"
      }
      
      for o in self.objects:
        self._print_object(f, o)
        
      for s, p, o in self.statements:
        self._print_statement(f, s, p, o)
        
      f.write("@enduml\n")
      
