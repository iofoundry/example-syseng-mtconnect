from iof_render import dl_render_class, dl_render_terminology
import treelib as tl


def _render_tree(tree, node = None, level = 0):
  s = []
  node = tree[tree.root] if (node is None) else node
  div = f"""<div id="{node.identifier.split('.')[1]}">"""
  indent = '  ' * level
  s.append(f"{indent}{div}\n{indent}  <details open><summary>{node.tag}</summary>\n")
  if node.data:
    axioms = "".join([f"""<li>{_}</li>""" for _ in node.data])
    s.append(f"""{indent}    <div class="axiom"><details><summary>Axioms</summary><ul>{axioms}</ul></details></div>\n""")
  for child in tree.children(node.identifier):
    s.extend(_render_tree(tree, child, level + 2))
  s.append(f"{indent}  </details>\n{indent}</div>\n")
  return s

def _render_ontology(items, level = 1) -> str:
  s = ''
  if isinstance(items, dict):
    s = "\n".join([f"<h{level} id=\"{k}\">" + k + f"</h{level}>\n" + _render_ontology(v, level + 1) for k, v in items.items()])
  elif isinstance(items, list):
    s = '<ul><li class="axiom">' + \
      "</li>\n<li class=\"axiom\">".join(items) +  \
      '</li></ul>'
  elif isinstance(items, tl.Tree):
    s = f"""<div class="tree">{''.join(_render_tree(items))}</div>"""
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
  background: white;
  color: black;
}}

:root {{
  --link-color: #1a0dab; /* light mode */
}}

@media (prefers-color-scheme: dark) {{
  :root {{
    --link-color: #d8b8ff; /* soft purple for dark mode */
  }}
  body {{
    background: black;
    color: white;
  }}
}}

a {{
  color: var(--link-color);
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

div.tree div {{
  margin-left: 1.5em;
}}

div.tree div.axiom {{
  margin-left: 2.5em;
}}

div.axiom ul {{
  margin: 0;
}}

div.axiom ul li {{
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
    f.write(_render_ontology(dl_render_terminology(ontology, show_characteristics = True)))
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
    <div class='indent'>
""")
    f.write(_render_ontology(dl_render_terminology(ontology, show_characteristics = True)))
    f.write("\n    </div>")
    render_footer(f)
  