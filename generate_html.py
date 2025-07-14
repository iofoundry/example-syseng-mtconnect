from iof_render import dl_render_class, dl_render_terminology

def _render_ontology(items, level = 1) -> str:
  s = ''
  if isinstance(items, dict):
    s = "\n".join([f"<h{level} id=\"{k}\">" + k + f"</h{level}>" + _render_ontology(v, level + 1) for k, v in items.items()])
  elif isinstance(items, list):
    s = '<ul><li class="axiom">' + \
      "</li>\n<li class=\"axiom\">".join(items) +  \
      '</li></ul>'
  else:
    s = items
  return s

def render_header(f, title):
  f.write(f"""
<!doctype html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>{title}</title>
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
""")
  
def render_footer(file):
  file.write("""
  </body>
</html>
""")

def render_terminology(name, ontology):
  with open(f"{name}.html", 'w') as f:
    render_header(f, f"{ontology.name} Ontology")
    f.write(_render_ontology(dl_render_terminology(ontology)))
    render_footer(f)


def render_vendor(name, ontology, entities):
  with open(f"{name}.html", 'w') as f:
    render_header(f, f"{ontology.name} Vendor Ontology")
    f.write(f"""
        <h1 class='section-divider'>Complete Diagram</h1>
    <ul><li><a href='diagrams/{ontology.name}Full.html'>{ontology.name}</a></li></ul>
    <h1 class='section-divider'>Topology Diagram</h1>
    <ul><li><a href='diagrams/{ontology.name}Topo.html'>{ontology.name} Topology</a></li></ul>
    <h1 class='section-divider'>Mereology Diagram</h1>
    <ul><li><a href='diagrams/{ontology.name}Mere.html'>{ontology.name} Mereology</a></li></ul>
    <h1 class='section-divider'>Part Diagrams</h1>
    <ul>
""")
    for e in entities:
        f.write(f"      <li><a href='diagrams/{e.name}.html'>{e.name}</a></li>\n")
    f.write("""    </ul>
    <h1 class='section-divider'>Classes</h1>
    <div class='indent'>
""")
    for cls in ontology.classes():
        f.write(f"      <h2 id={cls.name}>{cls.name}</h2>\n")
        f.write("      <ul>\n        <li class='axiom'>")
        f.write("</li>\n        <li class='axiom'>".join(dl_render_class(cls)))
        f.write("</li>\n      </ul>\n")
    f.write("\n    </div>")
    render_footer(f)
  