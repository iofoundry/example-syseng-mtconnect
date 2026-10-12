"""PlantUML (ontopuml) diagrams of the individuals produced by
``xml_to_individuals``.  Decoupled version of the old ``generate_diagram`` so it
works against the new merged world (ComponentsOntology) and its namespaces
rather than the legacy ``ontologies`` module / default_world.

Emits the ontopuml ``individual()`` / ``property()`` / ``data()`` macros that
``iof.iuml`` understands, then renders SVG with the ``plantuml`` CLI.
"""

import os
import subprocess
import logging

import owlready2 as owl
import owlready2.base as ob

logger = logging.getLogger(__name__)

# base IRI -> short prefix used in the diagram labels / colours.
NAMESPACES = {
    "https://model.mtconnect.org/ontology/construct/": "mtc",
    "https://spec.industrialontologies.org/ontology/construct/": "iof",
    "http://purl.obolibrary.org/obo/": "bfo",
    "https://www.omg.org/spec/Commons/Collections/": "cmns-col",
    "https://www.omg.org/spec/Commons/Designators/": "cmns-dsg",
    "http://example.org/mtconnect-ext/": "ext",
    "http://www.w3.org/2002/07/owl#": "owl",
    "http://www.w3.org/1999/02/22-rdf-syntax-ns#": "rdf",
    "http://www.w3.org/2001/XMLSchema#": "xsd",
    "http://www.w3.org/2000/01/rdf-schema#": "rdfs",
}

NAMESPACE_COLORS = {
    "bfo": "DFA702", "iof": "1E90FF", "mtc": "76608A", "ext": "2E8B57",
    "data": "641B2E", "cmns-col": "3A0519", "cmns-dsg": "3A0519",
}


class IndividualsDiagram:
    def __init__(self, filename, statements, world, data_iri,
                 linked_terms=None, out_dir="diagrams"):
        self.filename = filename
        self.statements = statements
        self.world = world
        self.out_dir = out_dir
        self.linked_terms = linked_terms or set()
        self.objects = dict()

        # Per-run namespace map including this device's data namespace.
        self.namespaces = dict(NAMESPACES)
        self.namespaces[data_iri] = "data"

        for s, p, o in statements:
            if p != ob.rdf_type:
                self._add_object(s)
                if not isinstance(o, (str, int, float, owl.locstr)):
                    self._add_object(o)

    # -- naming ----------------------------------------------------------------

    def _add_object(self, obj):
        if obj not in self.objects:
            self.objects[obj] = f"o{len(self.objects)}"

    def _obj(self, obj):
        return self.objects.get(obj)

    def _name(self, o):
        """prefix:fragment for an entity (never the label -- fragments have no
        spaces, so they are safe in ontopuml macro positions and filenames)."""
        if isinstance(o, (float, str, owl.locstr)):
            return o
        if isinstance(o, int):                      # storid fallback
            iri = self.world._unabbreviate(o)
            if not iri:
                return str(o)
            ns, name = iri.rsplit("#", 1) if "#" in iri else iri.rsplit("/", 1)
            ns += "#" if "#" in iri else "/"
        elif hasattr(o, "namespace"):
            ns, name = o.namespace.base_iri, o.name
        else:
            return str(o)
        prefix = self.namespaces.get(ns, "_")
        return f"{prefix}:{name}"

    def _prop_name(self, p):
        """Readable property name (label when present) for a quoted edge label."""
        if hasattr(p, "namespace"):
            prefix = self.namespaces.get(p.namespace.base_iri, "_")
            label = str(p.label.first()) if p.label else p.name
            return f"{prefix}:{label}"
        return self._name(p)

    def _class_of(self, individual):
        for klass in individual.is_a:
            if isinstance(klass, owl.ThingClass):
                return klass
        return None

    # -- emit ------------------------------------------------------------------

    def _print_object(self, f, o):
        if o == ob.rdf_nil:
            return
        title = self._name(o)
        if o in self.linked_terms:
            prefix, name = title.split(":", 1)
            title = f"{prefix}:[[./{name}.html {name}]]"
        klass = self._class_of(o)
        klass_label = self._name(klass) if klass else "owl:NamedIndividual"
        f.write(f"individual({self._obj(o)}, {title}, {klass_label})\n")

    def _print_statement(self, f, s, p, o):
        if p == ob.rdf_type or o == ob.rdf_nil:
            return
        if isinstance(o, (int, str, float)) and not hasattr(o, "namespace"):
            f.write(f'data({self._obj(s)}, "{self._prop_name(p)}", "{o}")\n')
        else:
            f.write(f'property({self._obj(s)}, "{self._prop_name(p)}", {self._obj(o)})\n')

    def _colors(self):
        return "{ " + ", ".join(f'"{k}":"{v}"' for k, v in NAMESPACE_COLORS.items()) + " }"

    def _generate_diagram(self):
        path = os.path.join(self.out_dir, f"{self.filename}.puml")
        with open(path, "w") as f:
            f.write(f"""@startuml
!include ../iof.iuml

left to right direction
skinparam linetype polyline
title {self.filename}

!$default_direction = down
!$namespace_colors = {self._colors()}

""")
            for o in self.objects:
                self._print_object(f, o)
            for s, p, o in self.statements:
                self._print_statement(f, s, p, o)
            f.write("@enduml\n")
        return path

    def _generate_html(self):
        with open(os.path.join(self.out_dir, f"{self.filename}.html"), "w") as f:
            f.write(
                f'<!doctype html><html><head><meta charset="utf-8"/>'
                f"<title>{self.filename}</title></head>"
                f'<body><object data="./{self.filename}.svg"/></body></html>\n')

    def generate(self, render=True):
        os.makedirs(self.out_dir, exist_ok=True)
        self._generate_html()
        path = self._generate_diagram()
        if render:
            subprocess.run(["plantuml", "-tsvg", path], check=False)
        return path


# -- statement collection ------------------------------------------------------

def data_statements(data_ontology):
    """All object/data-property triples whose subject is in the data ontology."""
    statements = []
    for subject in data_ontology.individuals():
        for prop in subject.get_properties():
            for value in prop[subject]:
                statements.append([subject, prop, value])
    return statements


def generate_diagrams(ontology, data_ontology, generator, out_dir="diagrams",
                      render=True):
    """Produce the Full, Mereology and per-individual diagrams for a device.

    ``ontology`` is the ComponentsOntology, ``generator`` the finished
    XMLToIndividuals (for its individual/system collections).
    """
    data_iri = data_ontology.base_iri
    vendor = generator.prefix.rstrip("_")
    linked = set(generator.entities.values()) | set(generator.systems)

    all_statements = data_statements(data_ontology)

    def diagram(name, statements):
        IndividualsDiagram(name, statements, ontology.world, data_iri,
                           linked_terms=linked, out_dir=out_dir).generate(render)

    # (1) Full: every triple in the data namespace.
    diagram(f"{vendor}Full", all_statements)

    # (2) Mereology: part / member-part / composition structure only.
    mereology_props = {
        ontology.P[k] for k in
        ("hasContinuantPart", "hasMemberPartAtAllTimes", "hasComposition")
    }
    diagram(f"{vendor}Mereology",
            [t for t in all_statements if t[1] in mereology_props])

    # (3) Topology: the kinematic attachesTo chain between physical entities.
    attaches_to = ontology.P["attachesTo"]
    diagram(f"{vendor}Topology",
            [t for t in all_statements if t[1] is attaches_to])

    # (4) One diagram per realist individual + minted system: its neighbourhood.
    focus = list(generator.entities.values()) + list(generator.systems)
    for individual in focus:
        neighbourhood = [t for t in all_statements
                         if t[0] is individual or t[2] is individual]
        diagram(individual.name, neighbourhood)

    logger.info("Generated diagrams for %s in %s/", vendor, out_dir)
