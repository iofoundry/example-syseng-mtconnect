"""Generate a root ``catalog-v001.xml`` (OASIS XML catalog) that resolves every
local ontology the new stack depends on: the MTConnect v2.8 Turtle modules under
``mtconnect/owl`` and the IOF/BFO/CMNS closure under the ``ontology`` submodule.

It harvests the IRI->file mappings from the two authoritative sub-catalogs
(``mtconnect/owl/catalog-v001.xml`` and ``ontology/catalog-v001.xml``), keeps
only the entries whose target file is in our dependency closure, and rewrites the
paths relative to the repository root.  Any dependency file not covered by a
sub-catalog is mapped by its own declared ontology IRI / versionIRI as a
fallback.  Run: ``python generate_catalog.py``.
"""

import os
import glob
import xml.etree.ElementTree as ET

import components_ontology as co

ROOT = co.PATH
OUTPUT = os.path.join(ROOT, "catalog-v001.xml")
SUB_CATALOGS = [
    os.path.join(co.OWL_DIR, "catalog-v001.xml"),
    os.path.join(co.ONTOLOGY_DIR, "catalog-v001.xml"),
]
CATALOG_NS = "urn:oasis:names:tc:entity:xmlns:xml:catalog"


def _dependency_files():
    """Absolute paths of every local ontology file the loader consumes."""
    files = set(glob.glob(os.path.join(co.OWL_DIR, "*.ttl")))
    files.update(co._iof_sources())
    if os.path.exists(co.EXT_FILE):
        files.add(co.EXT_FILE)
    return {os.path.normpath(f) for f in files}


# MTConnectCore imports the ROOT AboutIOFDev, but our loader (and catalog) only
# carry the core closure; redirect that IRI to the core AboutIOFDev so the import
# chain resolves to what we actually use.
REDIRECTS = {
    "https://spec.industrialontologies.org/ontology/AboutIOFDev/":
        os.path.join(co.ONTOLOGY_DIR, "core", "AboutIOFDev.rdf"),
}


def _harvest(sub_catalog, dependencies):
    """{import IRI: abs path} from a sub-catalog, limited to dependency files."""
    base = os.path.dirname(sub_catalog)
    mapping = {}
    for element in ET.parse(sub_catalog).getroot().iter():
        if element.tag.endswith("}uri") or element.tag == "uri":
            name, uri = element.get("name"), element.get("uri")
            if not (name and uri):
                continue
            target = os.path.normpath(os.path.join(base, uri))
            if target in dependencies:
                mapping[name] = target
    return mapping


def _fallback_iris(path):
    """Declared ontology IRI + versionIRI for a file no sub-catalog covered."""
    import rdflib

    graph = rdflib.Graph()
    graph.parse(path, format="turtle" if path.endswith(".ttl") else None)
    iris = []
    for onto in graph.subjects(rdflib.RDF.type, rdflib.OWL.Ontology):
        iris.append(str(onto))
        for version in graph.objects(onto, rdflib.OWL.versionIRI):
            iris.append(str(version))
    return iris


def build():
    dependencies = _dependency_files()

    # IRI -> abs path, from the sub-catalogs first.
    resolved = {}
    for sub_catalog in SUB_CATALOGS:
        if os.path.exists(sub_catalog):
            resolved.update(_harvest(sub_catalog, dependencies))

    covered = set(resolved.values())
    for path in sorted(dependencies - covered):
        for iri in _fallback_iris(path):
            resolved.setdefault(iri, path)

    for iri, path in REDIRECTS.items():
        if os.path.exists(path):
            resolved.setdefault(iri, os.path.normpath(path))

    # Also map the trailing-slash-less form of each IRI: owlready writes
    # owl:imports without the trailing "/", so a strict consumer needs both.
    for name in list(resolved):
        if name.endswith("/"):
            resolved.setdefault(name.rstrip("/"), resolved[name])

    # Emit, paths relative to the repo root, grouped and sorted for stable diffs.
    ET.register_namespace("", CATALOG_NS)
    catalog = ET.Element(f"{{{CATALOG_NS}}}catalog", {"prefer": "public"})
    for name in sorted(resolved):
        rel = os.path.relpath(resolved[name], ROOT)
        ET.SubElement(catalog, f"{{{CATALOG_NS}}}uri", {
            "id": "Dependency Resolution", "name": name, "uri": rel,
        })

    tree = ET.ElementTree(catalog)
    ET.indent(tree, space="    ")
    tree.write(OUTPUT, encoding="UTF-8", xml_declaration=True)
    print(f"Wrote {len(resolved)} mappings -> {OUTPUT}")


if __name__ == "__main__":
    build()
