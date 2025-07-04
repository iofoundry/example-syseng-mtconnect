import owlready2 as owl
import os
import re

from ontologies import BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example, QUDT

Example.imported_ontologies = [Core, Des, Qual, QualPhysical]
Example.label = [owl.locstr("Machine Ontology", "en")]

with Example:
  """The IOF ontology for engineered systems and their components."""  
  class Machine(Core.EngineeredSystem):
      """A machine in the IOF ontology."""
      label = owl.locstr("Machine", "en")
    
  class MotionSystem(Core.EngineeredSystem):
      """A motion system in the IOF ontology."""
      label = owl.locstr("Motion System", "en")
    
  class LinearMotionSystem(MotionSystem):
      """A linear motion system in the IOF ontology."""
      label = owl.locstr("Linear Motion System", "en")
    
  class RotaryMotionSystem(MotionSystem):
      """A rotary motion system in the IOF ontology."""
      label = owl.locstr("Rotary Motion System", "en")
    
  class ControlSystem(Core.EngineeredSystem):
      """A control system in the IOF ontology."""
      label = owl.locstr("Control System", "en")
    
  class ControlSystemPath(ControlSystem):
      """A control system path in the IOF ontology."""
      label = owl.locstr("Control System Path", "en")
    
  class Motor(BFO.object):
      """A motor in the IOF ontology."""
      label = owl.locstr("Motor", "en")

  class Ballscrew(BFO.object):
      """A ballscrew in the IOF ontology."""
      label = owl.locstr("Ballscrew", "en")
    
  class Door(BFO.object):
      """A door in the IOF ontology."""
      label = owl.locstr("Door", "en")

  class ElectricalSystem(Core.EngineeredSystem):
      """An electrical system in the IOF ontology."""
      label = owl.locstr("Electrical System", "en")
    
  class HydraulicSystem(Core.EngineeredSystem):
      """A hydraulic system in the IOF ontology."""
      label = owl.locstr("Hydraulic System", "en")
    
  class PneumaticSystem(Core.EngineeredSystem):
      """A pneumatic system in the IOF ontology."""
      label = owl.locstr("Pneumatic System", "en")
    
  class LubricationSystem(Core.EngineeredSystem):
      """A lubrication system in the IOF ontology."""
      label = owl.locstr("Lubrication System", "en")

  class Stock(BFO.object):
      """A stock in the IOF ontology."""
      label = owl.locstr("Stock", "en")
    
  class Part(BFO.object):
      """A part in the IOF ontology."""
      label = owl.locstr("Part", "en")
    
  class MotionCapability(Core.Capability):
      """A motion capability in the IOF ontology."""
      label = owl.locstr("Motion Capability", "en")
    
  class PrismaticMotionCapability(MotionCapability):
      """A prismatic motion capability in the IOF ontology."""
      label = owl.locstr("Prismatic Motion Capability", "en")
    
  class RevoluteMotionCapability(MotionCapability):
      """A revoluted motion capability in the IOF ontology."""
      label = owl.locstr("Revoluted Motion Capability", "en")
    
  class ContinuousMotionCapability(MotionCapability):
      """A continuous motion capability in the IOF ontology."""
      label = owl.locstr("Continuous Motion Capability", "en")
    
  class MillingCapability(Core.Capability):
      """A milling capability in the IOF ontology."""
      label = owl.locstr("Milling Capability", "en")

  class TurningCapability(Core.Capability):
      """A turning capability in the IOF ontology."""
      label = owl.locstr("Turning Capability", "en")

  class Enclosure(BFO.site):
      """An enclosure in the IOF ontology."""
      label = owl.locstr("Enclosure", "en")
    
  class Structure(BFO.object):
      """A structure in the IOF ontology."""
      label = owl.locstr("Structure", "en")
    
  class Room(BFO.object):
    """A room in the IOF ontology."""
    label = owl.locstr("Room", "en")
    
  class Sensor(BFO.object):
    """A sensor in the IOF ontology."""
    label = owl.locstr("Sensor", "en")
    
  class Velocity(QualPhysical.PhysicalProcessCharacteristic):
    """A velocity in the IOF ontology."""
    label = owl.locstr("Velocity", "en")    
    
  class RevoluteVelocity(Velocity):
    """A revolute velocity in the IOF ontology."""
    label = owl.locstr("Revolute Velocity", "en")
    
  class PrismaticVelocity(Velocity):
    """A prismatic velocity in the IOF ontology."""
    label = owl.locstr("Prismatic Velocity", "en")
    
  class PrismaticRapidVelocity(PrismaticVelocity):
    """A prismatic rapid velocity in the IOF ontology."""
    label = owl.locstr("Prismatic Rapid Velocity", "en")
    
  class TranslationalVelocity(Velocity):
    """A translational velocity in the IOF ontology."""
    label = owl.locstr("Translational Velocity", "en")
    
  class joinedTo(owl.ObjectProperty, owl.SymmetricProperty):
      """An object property for joining two entities."""    
      domain = [BFO.material_entity]
      range = [BFO.material_entity]
      label = owl.locstr("joined to", "en")

  class satisfiedBy(owl.ObjectProperty):
    """An object property for linking a capability to a system that satisfies it."""
    label = owl.locstr("satisfied by", "en")

  class conformsTo(owl.ObjectProperty):
    """An object property for linking a system to a designator."""
    inverse_of = satisfiedBy
    label = owl.locstr("conforms to", "en")
    
  class hasUnit(Core.ValueExpression >> QUDT.Unit):
      label = owl.locstr("has unit", "en")
    
Example.save(file = "example.rdf", format = "rdfxml")