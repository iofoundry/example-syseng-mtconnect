"""Loader for the MTConnect v2.8 OWL (Turtle) ontology under ``mtconnect/owl``.

owlready2 reads RDF/XML and NTriples but NOT Turtle, so we parse the Turtle
closure (plus the IOF/BFO imports already cached as RDF/XML) with rdflib, merge
it into a single graph, strip the ``owl:imports`` (everything is already in the
one graph), and serialise an RDF/XML file that owlready can load.  The merged
file is cached and only rebuilt when a source ``.ttl`` is newer.

This module also mints the small extension vocabulary the generator needs
(ManufacturingSystem / ControlSystem as subclasses of iof:EngineeredSystem) and
assigns python_names to the handful of properties the generator writes to, so
owlready attribute access (``individual.hasIdValue``) works.
"""

import os
import glob
import logging

import owlready2 as owl

logger = logging.getLogger(__name__)

PATH = os.path.dirname(os.path.abspath(__file__))
OWL_DIR = os.path.join(PATH, "mtconnect", "owl")
CACHE = os.path.join(PATH, "cache")
MERGED = os.path.join(CACHE, "mtconnect_v28_merged.rdf")

# IOF ontologies come from the `ontology/` submodule (iofoundry/ontology), not
# the old hand-cached rdf files.  Its OASIS catalog maps import IRIs to local
# files; we seed from core/AboutIOFDev (core + CMNS commons + BFO, without the
# domain ontologies) and follow owl:imports transitively through the catalog.
ONTOLOGY_DIR = os.path.join(PATH, "ontology")
ONTOLOGY_CATALOG = os.path.join(ONTOLOGY_DIR, "catalog-v001.xml")
IOF_SEEDS = [os.path.join(ONTOLOGY_DIR, "core", "AboutIOFDev.rdf")]

# Local extension ontology (ManufacturingSystem / ControlSystem).  A real file so
# the generated data ontology can owl:import it and the terms resolve.
EXT_FILE = os.path.join(PATH, "mtconnect-ext.ttl")

# Base IRIs ------------------------------------------------------------------
MTC_IRI = "https://model.mtconnect.org/ontology/construct/"
IOF_IRI = "https://spec.industrialontologies.org/ontology/construct/"
BFO_IRI = "http://purl.obolibrary.org/obo/"
EXT_IRI = "http://example.org/mtconnect-ext/"   # our minted classes live here

# Properties the generator writes, resolved to exact property OBJECTS by full
# IRI.  We never rely on owlready's python_name attribute access for these: the
# IOF/CMNS closure contains colliding local names (e.g. a CMNS Designators
# `hasDescription` DATA property vs the MTConnect object property), and
# attribute access would pick the wrong one.  Keyed by the logical name the
# generator uses; ``prop[individual].append(value)`` writes with the exact one.
PROPERTY_IRIS = {
    # MTConnect data values
    "hasIdValue": MTC_IRI + "hasIdValue",
    "hasNameValue": MTC_IRI + "hasNameValue",
    "hasUuidValue": MTC_IRI + "hasUuidValue",
    "hasNativeNameValue": MTC_IRI + "hasNativeNameValue",
    "hasSampleRateValue": MTC_IRI + "hasSampleRateValue",
    "hasSampleIntervalValue": MTC_IRI + "hasSampleIntervalValue",
    "hasManufacturerValue": MTC_IRI + "hasManufacturerValue",
    "hasModelValue": MTC_IRI + "hasModelValue",
    "hasSerialNumberValue": MTC_IRI + "hasSerialNumberValue",
    # MTConnect object properties
    "hasDescription": MTC_IRI + "hasDescription",
    "hasType": MTC_IRI + "hasType",
    "hasComposition": MTC_IRI + "hasComposition",
    "isCompositionOf": MTC_IRI + "isCompositionOf",
    # IOF object properties
    "isAbout": IOF_IRI + "isAbout",
    "hasCapability": IOF_IRI + "hasCapability",
    # BFO mereology: entity side (178/176) and component-ICE side (110/177)
    "hasContinuantPart": BFO_IRI + "BFO_0000178",
    "continuantPartOf": BFO_IRI + "BFO_0000176",
    "hasContinuantPartICE": BFO_IRI + "BFO_0000110",
    "continuantPartOfICE": BFO_IRI + "BFO_0000177",
    # BFO member parthood (systems to their member subsystems)
    "hasMemberPartAtAllTimes": BFO_IRI + "BFO_0000172",
    # Extension: topological attachment (kinematic model)
    "attachesTo": EXT_IRI + "attachesTo",
}


def _load_catalog(catalog_path):
    """Parse an OASIS XML catalog into an {import IRI: absolute file path} dict."""
    import xml.etree.ElementTree as ET

    mapping = {}
    base = os.path.dirname(catalog_path)
    for element in ET.parse(catalog_path).getroot().iter():
        if element.tag.endswith("}uri") or element.tag == "uri":
            name, uri = element.get("name"), element.get("uri")
            if name and uri:
                mapping[name] = os.path.normpath(os.path.join(base, uri))
    return mapping


def _load_iof_closure(graph, catalog):
    """Parse the IOF seed files and everything they owl:import, via the catalog.

    Returns the set of absolute file paths parsed (for staleness tracking).
    """
    import rdflib

    parsed_files = set()
    pending_files = list(IOF_SEEDS)
    seen_iris = set()

    while pending_files:
        path = pending_files.pop()
        if path in parsed_files or not os.path.exists(path):
            if not os.path.exists(path):
                logger.warning("IOF source not found: %s", path)
            continue
        fragment = rdflib.Graph().parse(path)       # RDF/XML
        parsed_files.add(path)
        graph += fragment
        for _, _, target in fragment.triples((None, rdflib.OWL.imports, None)):
            iri = str(target)
            if iri in seen_iris:
                continue
            seen_iris.add(iri)
            resolved = catalog.get(iri)
            if resolved:
                pending_files.append(resolved)
            else:
                logger.warning("Unresolved owl:imports (not in catalog): %s", iri)
    return parsed_files


def _iof_sources(catalog=None):
    """All IOF files reachable from the seeds (for staleness), cheaply."""
    catalog = catalog or _load_catalog(ONTOLOGY_CATALOG)
    import rdflib
    graph = rdflib.Graph()
    return sorted(_load_iof_closure(graph, catalog))


def _build_merged():
    """Parse the Turtle closure + the IOF closure into one RDF/XML owlready reads."""
    import rdflib

    graph = rdflib.Graph()
    # (1) the mtconnect v2.8 combined ontology (unchanged: the one local source).
    for ttl in sorted(glob.glob(os.path.join(OWL_DIR, "*.ttl"))):
        graph.parse(ttl, format="turtle")
    # (2) the IOF/BFO/CMNS closure, resolved from the ontology/ submodule.
    catalog = _load_catalog(ONTOLOGY_CATALOG)
    _load_iof_closure(graph, catalog)
    # (3) the local extension (ManufacturingSystem / ControlSystem).
    if os.path.exists(EXT_FILE):
        graph.parse(EXT_FILE, format="turtle")

    # Everything is in one graph now; drop import directives so owlready does
    # not try to resolve them over the network.
    for triple in list(graph.triples((None, rdflib.OWL.imports, None))):
        graph.remove(triple)

    graph.serialize(destination=MERGED, format="xml")
    logger.info("Built merged ontology (%d triples) -> %s", len(graph), MERGED)


def _is_stale():
    if not os.path.exists(MERGED):
        return True
    built = os.path.getmtime(MERGED)
    sources = glob.glob(os.path.join(OWL_DIR, "*.ttl")) + [ONTOLOGY_CATALOG, EXT_FILE]
    try:
        sources += _iof_sources()
    except Exception as exc:                          # catalog/parse problem
        logger.warning("Could not enumerate IOF sources for staleness: %s", exc)
    return any(os.path.exists(s) and os.path.getmtime(s) > built for s in sources)


class ComponentsOntology:
    """Holds the loaded world, the namespaces, and the minted extension classes."""

    def __init__(self, rebuild=False):
        if rebuild or _is_stale():
            _build_merged()

        self.world = owl.World()
        self.onto = self.world.get_ontology("file://" + MERGED).load()

        self.MTC = self.world.get_namespace(MTC_IRI)
        self.IOF = self.world.get_namespace(IOF_IRI)
        self.BFO = self.world.get_namespace(BFO_IRI)

        self._resolve_properties()
        self._mint_extension()

    # -- setup -----------------------------------------------------------------

    def _resolve_properties(self):
        """Resolve each generator-written property to its exact property object."""
        self.P = {}
        for key, iri in PROPERTY_IRIS.items():
            prop = self.world.search_one(iri=iri)
            if prop is None:
                logger.warning("Property not found: %s (%s)", key, iri)
            self.P[key] = prop

    def _mint_extension(self):
        """Resolve ManufacturingSystem / ControlSystem from the extension file,
        minting them in code as a fallback if the file was not loaded."""
        self.ManufacturingSystem = self.world.search_one(iri=EXT_IRI + "ManufacturingSystem")
        self.ControlSystem = self.world.search_one(iri=EXT_IRI + "ControlSystem")
        if self.ManufacturingSystem and self.ControlSystem:
            return

        logger.warning("Extension ontology not loaded; minting classes in code")
        self.ext = self.world.get_ontology(EXT_IRI)
        base = self.world.search_one(iri=IOF_IRI + "EngineeredSystem") or owl.Thing
        with self.ext:
            if not self.ManufacturingSystem:
                self.ManufacturingSystem = owl.types.new_class("ManufacturingSystem", (base,))
                self.ManufacturingSystem.label = owl.locstr("Manufacturing System", "en")
            if not self.ControlSystem:
                self.ControlSystem = owl.types.new_class("ControlSystem", (base,))
                self.ControlSystem.label = owl.locstr("Control System", "en")

    # -- writing ---------------------------------------------------------------

    def relate(self, subject, key, value):
        """Append ``value`` onto ``subject``'s ``key`` property (exact object)."""
        prop = self.P.get(key)
        if prop is None:
            raise KeyError(f"Unknown property key: {key}")
        prop[subject].append(value)

    # -- lookups ---------------------------------------------------------------

    def cls(self, local_name):
        """An MTConnect construct class by local name (e.g. 'Device', 'Linear')."""
        return self.world.search_one(iri=MTC_IRI + local_name)

    def iof(self, local_name):
        return self.world.search_one(iri=IOF_IRI + local_name)

    def prop(self, local_name):
        """A property by local name, searching MTConnect then IOF namespaces."""
        return self.world.search_one(iri=MTC_IRI + local_name) or \
            self.world.search_one(iri=IOF_IRI + local_name)

    def composition_type(self, type_key):
        """The CompositionTypeEnum individual for e.g. 'MOTOR' -> ..._MOTOR."""
        return self.world.search_one(iri=MTC_IRI + "CompositionTypeEnum_" + type_key)

    def composition_entity_class(self, type_key):
        """The physical entity class for a composition type, e.g.
        'MOTOR' -> MotorEntity, 'BALLSCREW' -> BallscrewEntity (or None)."""
        return self.cls(type_key.capitalize() + "Entity")

    def entity_class(self, ice_cls):
        """The realist Entity class an ICE class ``isAbout`` (read from the axioms).

        Returns the class referenced by an ``iof:isAbout some X`` restriction on
        ``ice_cls`` (checking both its subclass axioms and its equivalent-class
        intersection), or None when the ICE has no realist counterpart.
        """
        is_about = self.iof("isAbout")
        if ice_cls is None or is_about is None:
            return None

        def restrictions(expr):
            # Yield Restriction nodes from is_a entries and And intersections.
            for part in expr:
                if isinstance(part, owl.Restriction):
                    yield part
                elif isinstance(part, owl.And):
                    yield from restrictions(part.Classes)

        for restriction in restrictions(list(ice_cls.is_a) + list(ice_cls.equivalent_to)):
            if restriction.property is is_about:
                value = restriction.value
                if isinstance(value, owl.ThingClass):
                    return value
        return None
