import re
import owlready2 as owl
from indented_logger import setup_logging, increase_indent, decrease_indent
from indented_logger.decorator import log_indent
import logging

from pydantic_xml import element
from requests.packages import target
from generated.mtconnect_devices_2_7 import RelationshipTypeEnumType
import logger
from ontologies import *
from mappings import *

logger = logging.getLogger(__name__)

# ---------------------------------------------------------------------------
# First-pass generator for relational dispositions.
#
# This walks the *pydantic* device model produced by xsdata
# (generated.mtconnect_devices_2_7) rather than the raw XML.  Every component
# and composition that maps to an MTConnect class (see mappings.Components)
# becomes an OWL individual (a particular).  On top of that we assert:
#
#   * mereology  -- parent ``hasComponent`` child (skipping the organiser
#                   components: Axes, Systems, Parts, ...).
#   * relational dispositions (STUBBED for now):
#       - every Axis component (child of ``Axes``)  bears a RelationalDisposition
#         whose co-bearers are its MOTOR / BALLSCREW compositions.
#       - every System component (child of ``Systems``) bears a SystemDisposition.
#       - the MachiningSystem (the Device) bears a SystemDisposition whose
#         co-bearers are the individual systems.
#   * topology   -- ``attachedTo`` (symmetric) between co-bearers (motor/ballscrew)
#                   and from any ``Configuration/Relationships`` references.
#
# None of this is expected to be ontologically correct on the first pass; the
# point is to get a populated graph we can look at and then refine.
# ---------------------------------------------------------------------------

# Organiser components do not become particulars themselves, but they tell us
# what *category* their direct children are.  That category drives which
# relational disposition (if any) each child bears.
ORGANISER_CATEGORY = {
  'Axes': 'axis',
  'Systems': 'system',
  'Structures': 'structure',
  'Enclosure': 'structure',
  'Controller': 'system'
}

# Composition types that act as co-bearers of an axis relational disposition.
AXIS_CO_BEARERS = {'MOTOR', 'BALLSCREW'}


class RelationalDispositions:
  def __init__(self, device, ontology):
    self.ontology = ontology          # target ontology for the individuals (Data)
    self.device = device              # pydantic DeviceType

    self.particulars = dict()         # mtconnect id -> owl individual
    self.systems = []                 # system particulars (co-bearers of the machine)
    self.axes = []                    # axis particulars
    self.structures = []              # structure particulars
    self.machine = None               # the MachiningSystem particular
    self.machine_disposition = None   # its (stub) relational disposition
    self.frame = None                 # the Frame particular

    # A safe, unique IRI-fragment prefix derived from the device uuid.
    serial = device.description.serial_number or ''
    self.prefix = self._sanitize(device.uuid or device.id or 'device') + serial + '_'

  # -- public ----------------------------------------------------------------

  @log_indent
  def convert(self):
    """Create relational dispositions from the pydantic device model."""
    self._add_component(self.device, parent=None, category='machine')
    self._link_machine_co_bearers()
    self._add_topology(self.device)
    return self.particulars

  # -- traversal -------------------------------------------------------------

  @log_indent
  def _add_component(self, component, parent, category):
    """Create the particular for ``component`` and recurse into its children.

    ``parent``   -- the nearest already-created ancestor particular (for
                    mereology); organisers pass their own parent straight
                    through so children attach to the real ancestor.
    ``category`` -- 'machine' | 'axis' | 'system' | None, decides the
                    relational disposition to attach.
    """
    key, cls = self._resolve(component)
    partic = None

    if cls:
      partic = self._create_particular(component, key, cls)
      logger.info(f"    category {category}")
      if parent is not None and isinstance(partic, BFO.material_entity):
        logger.info(f"  {parent.name} hasComponent {partic.name}")
        with self.ontology:
          parent.hasComponent.append(partic)
      elif parent is not None and isinstance(parent, BFO.disposition) and isinstance(partic, BFO.disposition):
        logger.info(f"  {parent.name} specifically_depended_on_by {partic.name}")
        parent.specifically_depended_on_by.append(partic)


      # Compositions (MOTOR / BALLSCREW / ...) are created as children now so
      # that the axis disposition below can pick them up as co-bearers.
      compositions = self._add_compositions(component, partic)

      if category == 'machine':
        self.machine = partic
        self.machine_disposition = self._new_disposition(
          partic, MTConnect.MachiningSystem, 'MachineRelationalDisposition')
      elif category == 'axis':
        self.axes.append(partic)
        self._add_axis_disposition(partic, compositions)
      elif category == 'system' or self._base_name(component) == 'Controller':
        # self._new_disposition(partic, MTConnect.SystemDisposition, 'SystemRelationalDisposition')
        self.systems.append(partic)
      elif category == 'structure':
        self.structures.append(partic)
        if isinstance(partic, MTConnect.Frame):
          self.frame = partic

    # Children inherit their category from *this* component if it is an
    # organiser (Axes -> axis, Systems -> system), otherwise None.
    child_category = ORGANISER_CATEGORY.get(self._base_name(component))
    next_parent = partic or parent
    for child in self._child_components(component):
      self._add_component(child, next_parent, child_category)

    return partic

  @log_indent
  def _add_compositions(self, component, partic):
    """Create particulars for a component's compositions.

    Returns a list of (type_key, particular) tuples.
    """
    result = []
    container = getattr(component, 'compositions', None)
    if not container:
      return result

    for composition in container.composition:
      key = self._composition_key(composition)
      cls = Components.get(key)
      if not cls:
        logger.info(f"  Skipping unmapped composition {key}")
        continue
      comp_partic = self._create_particular(composition, key, cls)
      #with self.ontology and isinstance(partic, BFO.material_entity) and isinstance(comp_partic, BFO.material_entity):
      #  partic.hasComponent.append(comp_partic)
      result.append((key, comp_partic))

    return result

  # -- particulars -----------------------------------------------------------

  @log_indent
  def _create_particular(self, element, key, cls):
    """Create (or reuse) the OWL individual for an MTConnect element."""
    id = element.get('id') if hasattr(element, 'get') else element.id
    if id in self.particulars:
      return self.particulars[id]

    with self.ontology:
      name = self.prefix + self._sanitize(id)
      partic = cls(name)
      label = f"{key} {getattr(element, 'name', None) or id}"
      partic.label = owl.locstr(label + ' particular', "en")
      self.particulars[id] = partic
      logger.info(f"Created {cls.name} particular {name}")

    return partic

  # -- relational dispositions -----------------------------------------------

  @log_indent
  def _new_disposition(self, bearer, disp_cls, suffix):
    """Create a stub relational disposition borne by ``bearer``."""
    with self.ontology:
      disposition = disp_cls(bearer.name + suffix)
      disposition.label = owl.locstr(f"{bearer.name} {disp_cls.name}", "en")
      if isinstance(bearer, BFO.disposition):
        bearer.specifically_depended_on_by.append(disposition)
      else:
        bearer.hasDisposition.append(disposition)
      logger.info(f"  {bearer.name} bears {disposition.name}")
    return disposition

  @log_indent
  def _add_axis_disposition(self, axis, compositions):
    """An axis bears a relational disposition; its motor/ballscrew are co-bearers."""
    cls = None
    #disposition = self._new_disposition(
    #  axis, MTConnect.RelationalDisposition, 'AxisRelationalDisposition')

    co_bearers = [p for key, p in compositions if key in AXIS_CO_BEARERS]
    with self.ontology:
      for p in co_bearers:
        logger.info(f"  {axis.name} hasCoBearer {p.name}")
        axis.hasCoBearer.append(p)

      # Topology: attach the ballscrew(s) and motor(s) to one another.
      ballscrews = [p for key, p in compositions if key == 'BALLSCREW']
      motors = [p for key, p in compositions if key == 'MOTOR']
      for ballscrew in ballscrews:
        for motor in motors:
          logger.info(f"  {ballscrew.name} attachedTo {motor.name}")
          ballscrew.attachedTo.append(motor)

    return axis

  @log_indent
  def _link_machine_co_bearers(self):
    """The MachiningSystem disposition has the individual systems as co-bearers."""
    if not self.machine_disposition:
      return
    with self.ontology:
      for system in self.systems:
        logger.info(f"  {self.machine_disposition.name} hasCoBearer {system.name}")
        self.machine_disposition.hasCoBearer.append(system)
      for axis in self.axes:
        logger.info(f"  {self.machine_disposition.name} hasCoBearer {axis.name}")
        self.machine_disposition.hasCoBearer.append(axis)

  # -- topology --------------------------------------------------------------

  @log_indent
  def _add_topology(self, component):
    """Map MTConnect Configuration/Relationships references to ``attachedTo``.

    ``attachedTo`` is symmetric, so we only assert it once per pair.
    """
    partic = self.particulars.get(self._id(component))
    parent = child = None
    if partic:
      for rel in self._component_relationships(component):
        target = self.particulars.get(rel.id_ref)                
        if not target:
          logger.info(f"  attachedTo target {rel.id_ref} not found (yet)")
          continue
        if rel.type_value == RelationshipTypeEnumType.PARENT:
          parent = target
        elif rel.type_value == RelationshipTypeEnumType.CHILD:
          child = target
        
      if isinstance(partic, BFO.disposition) and parent and child:
        self._link_components(child, parent, RelationshipTypeEnumType.PARENT)

      if child:
        self._link_compositions(component, child)

    for child in self._child_components(component):
      self._add_topology(child)

  def _link_components(self, partic, target, type):
    if type == RelationshipTypeEnumType.PARENT and \
        target not in target.hasKinematicChild:
      logger.info(f"  {target.name} hasKinematicChild {partic.name} ({type})")
      with self.ontology:
        target.hasKinematicChild.append(partic)
    if type == RelationshipTypeEnumType.CHILD and \
        target not in target.hasKinematicParent:
      logger.info(f"  {target.name} hasKinematicParent {partic.name} ({type})")
      with self.ontology:
        target.hasKinematicParent.append(partic)
        
  def _link_compositions(self, component, parent):
    container = getattr(component, 'compositions', None)
    if container:
      for composition in container.composition:
        id = composition.get('id') if hasattr(composition, 'get') else composition.id
        if id in self.particulars:
          target = self.particulars[id]
          self._link_components(target, parent, RelationshipTypeEnumType.PARENT)

  # -- pydantic helpers ------------------------------------------------------

  def _child_components(self, component):
    """Yield the sub-components of a pydantic component (across every element list)."""
    container = getattr(component, 'components', None)
    if not container:
      return
    for field_name in type(container).model_fields:
      value = getattr(container, field_name)
      if isinstance(value, list):
        for child in value:
          yield child

  def _component_relationships(self, component):
    """Yield ComponentRelationship objects from a component's configuration."""
    configuration = getattr(component, 'configuration', None)
    if not configuration:
      return
    for item in getattr(configuration, 'content', []) or []:
      relationships = getattr(item, 'component_relationship', None)
      if relationships:
        for rel in relationships:
          yield rel

  def _resolve(self, component):
    """Resolve a component to (type_key, owl_class); class is falsy when unmapped."""
    base = self._base_name(component)
    logger.debug(f"Resolving component with base name {base}")
    # Linear / Rotary axes carry the axis letter (LinearX, RotaryA, ...).
    axis_key = base
    name = getattr(component, 'name', None)
    if base in ('Linear', 'Rotary') and name:
      axis_key = f"{base}{name[0].upper()}"
    cls = Components.get(axis_key) or Components.get(base)
    return axis_key, cls

  def _composition_key(self, composition):
    """The MTConnect composition type, e.g. 'MOTOR', 'BALLSCREW'."""
    type_value = composition.type_value
    key = type_value.value if hasattr(type_value, 'value') else str(type_value)
    if ':' in key:            # strip any extension prefix, e.g. 'x:FOO'
      key = key.split(':')[-1]
    return key

  def _base_name(self, component):
    """The MTConnect element name for a pydantic component (DeviceType -> Device)."""
    name = type(component).__name__
    return name[:-4] if name.endswith('Type') else name

  def _id(self, component):
    return getattr(component, 'id', None)

  @staticmethod
  def _sanitize(value):
    """Make a string safe to use as an IRI fragment."""
    cleaned = re.sub(r'[^0-9A-Za-z_]', '_', str(value))
    if cleaned and cleaned[0].isdigit():
      cleaned = '_' + cleaned
    return cleaned
