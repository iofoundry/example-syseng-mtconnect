"""Map an MTConnect device.xml (parsed into the xsdata pydantic model) onto the
MTConnect v2.8 OWL ontology, creating individuals for both layers of the model:

  * information layer -- a ``Component`` ICE individual per element (Device,
    Controller, Linear, ...) carrying its data values (id/name/uuid/nativeName/
    sampleRate), a ``Description`` (manufacturer/model/serialNumber), its
    ``Composition`` ICEs, and the literal ICE part structure.

  * realist layer -- the ``…Entity`` individual each ICE ``isAbout`` (DeviceEntity,
    ControllerEntity, LinearMotionSystem, ...), with continuant-part mereology
    that skips the organiser groupings (Axes, Systems, ...).

Special treatment (first pass, refinable):
  * a DeviceEntity also gets a minted ``ManufacturingSystem`` individual that is
    continuant-part-of the device;
  * a ControllerEntity also gets a ``ControlSystem`` individual that is
    continuant-part-of the controller (which is itself part of the device);
  * each such system bears a stub ``iof:Capability`` via ``hasCapability``.

This is a first pass and is not expected to be ontologically complete.
"""

import logging

import owlready2 as owl

logger = logging.getLogger(__name__)

# Organiser groupings: they get an ICE (faithful to the XML) but no realist
# entity, so the entity mereology attaches real parts to the nearest real
# ancestor (DeviceEntity hasContinuantPart LinearMotionSystem, not AxesEntity).
ORGANISERS = {
    "Axes", "Systems", "Controllers", "Resources", "Materials",
    "Parts", "Auxiliaries", "Structures", "Adapters", "Interfaces", "Processes",
}

# Direct children of these organisers are the functional subsystems.  We use the
# XML grouping rather than the ontology's SystemComponent subclassing, which is
# inconsistent (Hydraulic/Pneumatic miss it, Enclosure wrongly has it).
ORGANISER_CATEGORY = {
    "Axes": "motion",       # Linear / Rotary -> LinearMotionSystem / RotaryMotionSystem
    "Systems": "system",    # Coolant / Hydraulic / Electric / ...
}

# The data ontology declares these imports so a reader resolves the vocabulary:
# AboutMTConnect pulls the whole MTConnect v2.8 model (and, transitively, IOF /
# BFO / CMNS); the extension supplies ManufacturingSystem / ControlSystem.
DATA_IMPORTS = [
    "https://model.mtconnect.org/ontology/machinetool/AboutMTConnect/",
    "http://example.org/mtconnect-ext/",
]


class XMLToIndividuals:
    def __init__(self, device, data, ontology):
        """``device`` is a pydantic DeviceType, ``data`` the target owlready
        ontology for the individuals, ``ontology`` a ComponentsOntology."""
        self.device = device
        self.data = data
        self.o = ontology

        self.components = dict()   # mtconnect id -> Component ICE individual
        self.entities = dict()     # mtconnect id -> realist Entity individual
        self.systems = []          # minted ManufacturingSystem / ControlSystem

        self.manufacturing_system = None   # the Device's ManufacturingSystem
        self.control_systems = []          # the Controllers' ControlSystems
        self.motion_systems = []           # axis entities (LinearMotionSystem, ...)
        self.system_entities = []          # entities under a Systems organiser

        # Kinematic model, collected during the walk and wired as attachesTo after.
        self.relationships = []            # (component id, rel type, idRef)
        self.motion_parent = {}            # component id -> parent motion id
        self.motion_owner = {}             # motion id -> component id

        # BFO independent continuant, for the ICE -> IC aboutness guard.
        self._independent_continuant = ontology.BFO.BFO_0000004

        self.prefix = self._sanitize(device.uuid or device.id or "device") + "_"

    # -- public ----------------------------------------------------------------

    def convert(self):
        self._declare_imports()
        self._add_component(self.device, parent_ice=None, parent_entity=None)
        self._wire_system_membership()
        self._wire_attachment()
        return self.components

    def _declare_imports(self):
        """Declare owl:imports on the data ontology so its vocabulary resolves."""
        world = self.o.world
        for iri in DATA_IMPORTS:
            onto = world.get_ontology(iri)
            if onto not in self.data.imported_ontologies:
                self.data.imported_ontologies.append(onto)

    # -- traversal -------------------------------------------------------------

    def _add_component(self, element, parent_ice, parent_entity,
                       category=None, control_system=None):
        base = self._base_name(element)
        ice_cls = self.o.cls(base)
        if ice_cls is None:
            logger.warning("No ICE class for element %s (id=%s)", base, self._id(element))
            return

        ice = self._create_ice(element, ice_cls, base)

        # ICE mereology: literal XML nesting (parent has continuant part child).
        if parent_ice is not None:
            with self.data:
                self.o.relate(parent_ice, "hasContinuantPartICE", ice)

        # Realist layer.  A real component gets its entity, aboutness, part
        # mereology and system treatment.  An organiser gets only the ICE ->
        # independent-continuant aboutness (its entity is not inserted into the
        # part mereology, so real parts still attach to the nearest real
        # ancestor entity passed straight through).
        entity = None
        minted_system = None
        if base not in ORGANISERS:
            entity = self._create_entity(element, ice_cls, base)
            if entity is not None:
                with self.data:
                    self.o.relate(ice, "isAbout", entity)
                    if parent_entity is not None:
                        self.o.relate(parent_entity, "hasContinuantPart", entity)
                minted_system = self._special_treatment(element, base, entity)
                self._classify_entity(entity, category)
                self._collect_kinematics(element)
                # Entities inside a Controller subtree are member parts of its
                # ControlSystem (Path and any sub-parts).
                if control_system is not None:
                    with self.data:
                        self.o.relate(control_system, "hasMemberPartAtAllTimes", entity)
        else:
            self._add_aboutness(element, ice, ice_cls)

        self._add_compositions(element, ice, entity)

        next_ice = ice
        next_entity = entity or parent_entity
        child_category = ORGANISER_CATEGORY.get(base)
        child_control_system = minted_system if base == "Controller" else control_system
        for child in self._child_components(element):
            self._add_component(child, next_ice, next_entity,
                                child_category, child_control_system)

        return ice

    def _classify_entity(self, entity, category):
        if category == "motion":
            self.motion_systems.append(entity)
        elif category == "system":
            self.system_entities.append(entity)

    # -- information individuals ----------------------------------------------

    def _create_ice(self, element, ice_cls, base):
        id = self._id(element)
        if id in self.components:
            return self.components[id]

        with self.data:
            ice = ice_cls(self.prefix + self._sanitize(id))
            self.components[id] = ice
            name = getattr(element, "name", None)
            ice.label = owl.locstr(f"{base} {name or id}", "en")

            self._set(ice, "hasIdValue", id)
            self._set(ice, "hasNameValue", name)
            self._set(ice, "hasUuidValue", getattr(element, "uuid", None))
            self._set(ice, "hasNativeNameValue", getattr(element, "native_name", None))
            self._set(ice, "hasSampleRateValue", getattr(element, "sample_rate", None))
            self._set(ice, "hasSampleIntervalValue", getattr(element, "sample_interval", None))

            self._add_description(element, ice)
        return ice

    def _add_description(self, element, ice):
        description = getattr(element, "description", None)
        if description is None:
            return
        manufacturer = getattr(description, "manufacturer", None)
        model = getattr(description, "model", None)
        serial = getattr(description, "serial_number", None)
        if not any([manufacturer, model, serial]):
            return
        desc_cls = self.o.cls("Description")
        node = desc_cls(ice.name + "Description")
        self._set(node, "hasManufacturerValue", manufacturer)
        self._set(node, "hasModelValue", model)
        self._set(node, "hasSerialNumberValue", serial)
        self.o.relate(ice, "hasDescription", node)

    def _add_compositions(self, element, ice, entity):
        container = getattr(element, "compositions", None)
        if not container:
            return
        comp_cls = self.o.cls("Composition")
        for composition in container.composition:
            cid = self._id(composition)
            with self.data:
                node = comp_cls(self.prefix + self._sanitize(cid))
                self.components[cid] = node
                type_key = self._composition_key(composition)
                node.label = owl.locstr(f"{type_key} {composition.name or cid}", "en")
                self._set(node, "hasIdValue", cid)
                self._set(node, "hasNameValue", composition.name)
                self._set(node, "hasUuidValue", getattr(composition, "uuid", None))

                type_indv = self.o.composition_type(type_key)
                if type_indv is not None:
                    self.o.relate(node, "hasType", type_indv)

                self.o.relate(ice, "hasComposition", node)
                self.o.relate(node, "isCompositionOf", ice)

                # Physical entity for the composition (MotorEntity, Ballscrew
                # Entity, ...) so it participates in the realist model and the
                # kinematic attachment chain.
                self._add_composition_entity(composition, node, type_key, entity)

    def _add_composition_entity(self, composition, node, type_key, parent_entity):
        entity_cls = self.o.composition_entity_class(type_key)
        if entity_cls is None:
            return
        cid = self._id(composition)
        entity = entity_cls(node.name + "Entity")
        entity.label = owl.locstr(f"{entity_cls.name} {composition.name or cid}", "en")
        self.entities[cid] = entity
        self.o.relate(node, "isAbout", entity)
        if parent_entity is not None:
            self.o.relate(parent_entity, "hasContinuantPart", entity)
            self.o.relate(entity, "attachesTo", parent_entity)   # mounted on its component

    # -- realist individuals ---------------------------------------------------

    def _create_entity(self, element, ice_cls, base):
        id = self._id(element)
        if id in self.entities:
            return self.entities[id]
        entity_cls = self.o.entity_class(ice_cls)
        if entity_cls is None:
            logger.info("No realist entity for %s (id=%s)", base, id)
            return None
        with self.data:
            entity = entity_cls(self.prefix + self._sanitize(id) + "Entity")
            self.entities[id] = entity
            name = getattr(element, "name", None)
            entity.label = owl.locstr(f"{entity_cls.name} {name or id}", "en")
        return entity

    def _add_aboutness(self, element, ice, ice_cls):
        """ICE -> independent continuant aboutness for an organiser component.

        The organiser's realist entity (e.g. AxesEntity, SystemsEntity) is an
        independent continuant that the organiser ICE is about.  We create it and
        assert ``isAbout`` only -- it stays out of the part mereology.  Targets
        that are not independent continuants (e.g. a CMNS collection) are skipped.
        """
        entity_cls = self.o.entity_class(ice_cls)
        if entity_cls is None or self._independent_continuant not in entity_cls.ancestors():
            return
        id = self._id(element)
        with self.data:
            entity = self.entities.get(id)
            if entity is None:
                entity = entity_cls(ice.name + "Entity")
                entity.label = owl.locstr(f"{entity_cls.name} {getattr(element, 'name', None) or id}", "en")
                self.entities[id] = entity
            self.o.relate(ice, "isAbout", entity)

    def _special_treatment(self, element, base, entity):
        """DeviceEntity -> ManufacturingSystem, ControllerEntity -> ControlSystem.

        The system is continuant-part-of its entity and bears a stub capability.
        """
        if base == "Device":
            system_cls, suffix = self.o.ManufacturingSystem, "ManufacturingSystem"
        elif base == "Controller":
            system_cls, suffix = self.o.ControlSystem, "ControlSystem"
        else:
            return None

        with self.data:
            system = system_cls(self.prefix + self._sanitize(self._id(element)) + suffix)
            system.label = owl.locstr(f"{suffix} for {entity.name}", "en")
            self.o.relate(system, "continuantPartOf", entity)   # part of the physical device
            self.systems.append(system)

            capability = self.o.iof("Capability")(system.name + "Capability")
            capability.label = owl.locstr(f"capability of {system.name}", "en")
            self.o.relate(system, "hasCapability", capability)

        if base == "Device":
            self.manufacturing_system = system
        else:
            self.control_systems.append(system)
        return system

    def _wire_system_membership(self):
        """has-member-part-at-all-times from the minted systems to their members.

        ControlSystem: the device's motion systems (its own Path parts were wired
        inline during the walk).  ManufacturingSystem: the ControlSystem(s) plus
        the functional subsystems -- the Systems-organiser entities and the
        motion systems.
        """
        with self.data:
            for control_system in self.control_systems:
                for motion_system in self.motion_systems:
                    self.o.relate(control_system, "hasMemberPartAtAllTimes", motion_system)

            if self.manufacturing_system is not None:
                members = self.control_systems + self.system_entities + self.motion_systems
                for member in members:
                    self.o.relate(self.manufacturing_system, "hasMemberPartAtAllTimes", member)

    # -- kinematic attachment --------------------------------------------------

    def _collect_kinematics(self, element):
        """Record a component's ComponentRelationships and Motion for attachment."""
        configuration = getattr(element, "configuration", None)
        if not configuration:
            return
        cid = self._id(element)
        for item in getattr(configuration, "content", []) or []:
            relationships = getattr(item, "component_relationship", None)
            if relationships:
                for rel in relationships:
                    rel_type = rel.type_value
                    rel_type = rel_type.value if hasattr(rel_type, "value") else str(rel_type)
                    self.relationships.append((cid, rel_type, rel.id_ref))
            if type(item).__name__ == "Motion":
                self.motion_owner[item.id] = cid
                if item.parent_id_ref:
                    self.motion_parent[cid] = item.parent_id_ref

    def _wire_attachment(self):
        """Materialise the kinematic model as ``attachesTo`` between physical
        entities: a mounted entity attaches to the one that supports it."""
        with self.data:
            # ComponentRelationships: PARENT -> this attaches to its parent/support;
            # CHILD -> the referenced child attaches to this.
            for cid, rel_type, id_ref in self.relationships:
                source = self.entities.get(cid)
                target = self.entities.get(id_ref)
                if source is None or target is None:
                    continue
                if rel_type == "CHILD":
                    self.o.relate(target, "attachesTo", source)
                else:                                   # PARENT (and PEER) default
                    self.o.relate(source, "attachesTo", target)

            # Motion kinematic chain: a component attaches to its motion parent's
            # component (e.g. the Z axis attaches to the Y axis it rides on).
            for cid, parent_motion in self.motion_parent.items():
                source = self.entities.get(cid)
                target = self.entities.get(self.motion_owner.get(parent_motion))
                if source is not None and target is not None:
                    self.o.relate(source, "attachesTo", target)

    # -- pydantic helpers ------------------------------------------------------

    def _child_components(self, element):
        container = getattr(element, "components", None)
        if not container:
            return
        for field_name in type(container).model_fields:
            value = getattr(container, field_name)
            if isinstance(value, list):
                for child in value:
                    yield child

    def _composition_key(self, composition):
        type_value = composition.type_value
        key = type_value.value if hasattr(type_value, "value") else str(type_value)
        if ":" in key:
            key = key.split(":")[-1]
        return key

    def _base_name(self, element):
        name = type(element).__name__
        return name[:-4] if name.endswith("Type") else name

    def _id(self, element):
        return getattr(element, "id", None)

    # -- owlready helpers ------------------------------------------------------

    def _set(self, individual, property_key, value):
        """Append a data value via the exact property object, skipping None/empty."""
        if value is None or value == "":
            return
        self.o.relate(individual, property_key, value)

    @staticmethod
    def _sanitize(value):
        import re
        cleaned = re.sub(r"[^0-9A-Za-z_]", "_", str(value))
        if cleaned and cleaned[0].isdigit():
            cleaned = "_" + cleaned
        return cleaned


def _vendor_name(device):
    description = getattr(device, "description", None)
    manufacturer = getattr(description, "manufacturer", None) if description else None
    return manufacturer or device.name or device.id or "Device"


# owlready2 only serialises RDF/XML and NTriples; Turtle (and anything else) is
# routed through rdflib so the file content matches its extension.
_OWLREADY_FORMATS = {"nt": "ntriples", "rdf": "rdfxml", "owl": "rdfxml", "xml": "rdfxml"}
_RDFLIB_FORMATS = {"ttl": "turtle", "n3": "n3", "jsonld": "json-ld", "trig": "trig"}
_PREFIXES = {
    "mtc": "https://model.mtconnect.org/ontology/construct/",
    "iof": "https://spec.industrialontologies.org/ontology/construct/",
    "bfo": "http://purl.obolibrary.org/obo/",
    "ext": "http://example.org/mtconnect-ext/",
    "cmns-col": "https://www.omg.org/spec/Commons/Collections/",
}


def write_individuals(data, output):
    """Serialise the data ontology, choosing the format from the file extension."""
    ext = output.rsplit(".", 1)[-1].lower() if "." in output else "ttl"
    if ext in _OWLREADY_FORMATS:
        data.save(file=output, format=_OWLREADY_FORMATS[ext])
        return

    import os
    import tempfile
    import rdflib

    with tempfile.NamedTemporaryFile(suffix=".nt", delete=False) as tmp:
        tmp_path = tmp.name
    try:
        data.save(file=tmp_path, format="ntriples")
        graph = rdflib.Graph()
        graph.parse(tmp_path, format="ntriples")
        for prefix, iri in {**_PREFIXES, "data": data.base_iri}.items():
            graph.bind(prefix, iri)
        graph.serialize(destination=output, format=_RDFLIB_FORMATS.get(ext, "turtle"))
    finally:
        os.remove(tmp_path)


def main(argv=None):
    import sys
    from components_ontology import ComponentsOntology
    from generated import MtconnectDevices
    from xsdata_pydantic.bindings import XmlParser

    logging.basicConfig(level=logging.INFO)
    argv = list(argv if argv is not None else sys.argv[1:])
    diagrams = "--diagrams" in argv
    argv = [a for a in argv if a != "--diagrams"]
    if not argv:
        print("Usage: python xml_to_individuals.py <device.xml> [output.ttl] [--diagrams]")
        return 1

    xml_file = argv[0]
    ontology = ComponentsOntology()
    root = XmlParser().parse(xml_file, MtconnectDevices)

    for device in root.devices.device:
        vendor = XMLToIndividuals._sanitize(_vendor_name(device))
        data = ontology.world.get_ontology(f"http://example.org/{vendor}/data/")
        generator = XMLToIndividuals(device, data, ontology)
        generator.convert()
        output = argv[1] if len(argv) > 1 else f"{vendor}-Individuals.ttl"
        write_individuals(data, output)
        logger.info("Wrote %d individuals for %s -> %s",
                    len(generator.components), vendor, output)
        if diagrams:
            from generate_individuals_diagram import generate_diagrams
            generate_diagrams(ontology, data, generator)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
