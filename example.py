import owlready2 as owl
import os
import re

if os.path.exists("example.rdf"):
    os.remove("example.rdf")

from ontologies import BFO, Core, AnnVocab, Des, QUDT

Example = owl.get_ontology("http://example.org/ontology/")
Example.imported_ontologies = [Core, Des]
Example.label = [owl.locstr("Machine Ontology", "en")]
Example.base_iri = "http://example.org/ontology/"

with Example:
  """The IOF ontology for engineered systems and their components."""  
  class Actuator(BFO.object):
    label = owl.locstr("Actuator", "en")
    
  class SystemRole(BFO.role):
    """A system role in the IOF ontology."""
    label = owl.locstr("System Role", "en")
      
  class EngineeredSystemRole(SystemRole):
    """An engineered system role in the IOF ontology."""
    label = owl.locstr("Engineered System Role", "en")

  class MaterialArtifactRole(BFO.role):
    """A material artifact role in the IOF ontology."""
    label = owl.locstr("Material Artifact Role", "en")

  class _System(BFO.material_entity):
    """A system in the IOF ontology."""
    label = owl.locstr("System", "en")
    is_a = [Core.hasComponentPartAtSomeTime.some(BFO.material_entity)]
    equivalent_to = [BFO.material_entity & Core.hasRole.some(SystemRole)]

  class _EngineeredSystem(_System):
    """A system in the IOF ontology."""
    label = owl.locstr("Engineered System", "en")
    equivalent_to = [_System & Core.hasRole.some(EngineeredSystemRole)]

  class _MaterialArtifact(BFO.material_entity):
    """A material artifact in the IOF ontology."""
    label = owl.locstr("Material Artifact", "en")
    equivalent_to = [BFO.material_entity & Core.hasRole.some(MaterialArtifactRole)]
      
  class MotionCapability(Core.Capability):
    """A motion capability in the IOF ontology."""
    label = owl.locstr("Motion Capability", "en")

  class PrismaticMotionCapability(MotionCapability):
    """A prismatic motion capability in the IOF ontology."""
    label = owl.locstr("Prismatic Motion Capability", "en")

  class RevoluteMotionCapability(MotionCapability):
    """A revoluted motion capability in the IOF ontology."""
    label = owl.locstr("Revolute Motion Capability", "en")

  class ContinuousRevoluteCapability(RevoluteMotionCapability):
    """A continuous motion capability in the IOF ontology."""
    label = owl.locstr("Continuous Motion Capability", "en")

  class MotionSystem(BFO.object):
    """A motion system in the IOF ontology."""
    label = owl.locstr("Motion System", "en")
    is_a = [Core.hasComponentPartAtAllTimes.some(Actuator), Core.hasRole.some(EngineeredSystemRole)]

  class LinearMotionSystem(MotionSystem):
    """A linear motion system in the IOF ontology."""
    label = owl.locstr("Linear Motion System", "en")
    is_a = [Core.hasCapability.some(PrismaticMotionCapability)]
    
  class RotaryMotionSystem(MotionSystem):
    """A rotary motion system in the IOF ontology."""
    label = owl.locstr("Rotary Motion System", "en")
    is_a = [Core.hasCapability.some(RevoluteMotionCapability)]
      
  class ControlSystem(BFO.material_entity):
    """A control system in the IOF ontology."""
    label = owl.locstr("Control System", "en")
    is_a = [Core.hasRole.some(EngineeredSystemRole)]

  class Machine(BFO.object):
    """A machine in the IOF ontology."""
    label = owl.locstr("Machine", "en")
    is_a = [Core.hasComponentPartAtSomeTime.some(MotionSystem), 
            Core.hasRole.some(EngineeredSystemRole), 
            Core.hasRole.some(Core.EquipmentRole)]

  class NumericallyControlledMachine(Machine):
    label = owl.locstr("Numerically Controlled Machine", "en")
    is_a = [Core.hasComponentPartAtSomeTime.some(ControlSystem)]

  class ControlSystemPath(ControlSystem):
    """A control system path in the IOF ontology."""
    label = owl.locstr("Control System Path", "en")
    
  class Motor(Actuator):
    """A motor in the IOF ontology."""
    label = owl.locstr("Motor", "en")
    is_a = [Core.hasRole.some(MaterialArtifactRole)]

  class Ballscrew(BFO.object):
    """A ballscrew in the IOF ontology."""
    label = owl.locstr("Ballscrew", "en")
    is_a = [Core.hasRole.some(MaterialArtifactRole)]
    
  class Door(BFO.object):
    """A door in the IOF ontology."""
    label = owl.locstr("Door", "en")
    is_a = [Core.hasRole.some(MaterialArtifactRole)]

  class ElectricalSystem(BFO.material_entity):
    """An electrical system in the IOF ontology."""
    label = owl.locstr("Electrical System", "en")
    is_a = [Core.hasRole.some(EngineeredSystemRole)]
    
  class HydraulicSystem(BFO.material_entity):
    """A hydraulic system in the IOF ontology."""
    label = owl.locstr("Hydraulic System", "en")
    is_a = [Core.hasRole.some(EngineeredSystemRole)]
    
  class PneumaticSystem(BFO.material_entity):
    """A pneumatic system in the IOF ontology."""
    label = owl.locstr("Pneumatic System", "en")
    is_a = [Core.hasRole.some(EngineeredSystemRole)]
    
  class LubricationSystem(BFO.material_entity):
    """A lubrication system in the IOF ontology."""
    label = owl.locstr("Lubrication System", "en")
    is_a = [Core.hasRole.some(EngineeredSystemRole)]
      
  class CoolantSystem(BFO.material_entity):
    """A coolant system in the IOF ontology."""
    label = owl.locstr("Coolant System", "en")
    is_a = [Core.hasRole.some(EngineeredSystemRole)]

  class Stock(BFO.object):
    """A stock in the IOF ontology."""
    label = owl.locstr("Stock", "en")
    is_a = [Core.hasRole.some(MaterialArtifactRole), Core.hasRole.some(Core.RawMaterialRole)]
    
  class ProductPart(BFO.object):
    """A part in the IOF ontology."""
    label = owl.locstr("Product Part", "en")
    is_a = [Core.hasRole.some(MaterialArtifactRole), Core.hasRole.some(Core.MaterialProductRole)]
        
  class MillingCapability(Core.Capability):
    """A milling capability in the IOF ontology."""
    label = owl.locstr("Milling Capability", "en")

  class TurningCapability(Core.Capability):
    """A turning capability in the IOF ontology."""
    label = owl.locstr("Turning Capability", "en")

  class Structure(BFO.object):
    """A structure in the IOF ontology."""
    label = owl.locstr("Structure", "en")
    is_a = [Core.hasRole.some(MaterialArtifactRole)]
    
  class Enclosure(Structure):
    """An enclosure in the IOF ontology."""
    label = owl.locstr("Enclosure", "en")
    is_a = [Core.hasRole.some(MaterialArtifactRole)]
    
  class Room(BFO.site):
    """A room in the IOF ontology."""
    label = owl.locstr("Room", "en")
    
  class Sensor(BFO.object):
    """A sensor in the IOF ontology."""
    label = owl.locstr("Sensor", "en")
    is_a = [Core.hasRole.some(MaterialArtifactRole)]
    
  class ProcessProfile(BFO.process):
    """A process profile not currently in BFO or Core"""
    label = owl.locstr("Process Profile", "en")
    
  class Velocity(ProcessProfile):
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
    
  class connectedTo(owl.ObjectProperty, owl.SymmetricProperty):
    """An object property for joining two entities."""    
    domain = [BFO.material_entity]
    range = [BFO.material_entity]
    label = owl.locstr("connected to", "en")
      
  class hasKinematicParent(owl.ObjectProperty):
    domain = [BFO.material_entity]
    range = [BFO.material_entity]
    label = owl.locstr("has kinematic parent", "en")

  class hasKinematicChild(owl.ObjectProperty):
    domain = [BFO.material_entity]
    range = [BFO.material_entity]
    label = owl.locstr("has kinematic child", "en")
    inverse_of = hasKinematicParent

  class satisfiedBy(owl.ObjectProperty):
    """An object property for linking a capability to a system that satisfies it."""
    label = owl.locstr("satisfied by", "en")

  class conformsTo(owl.ObjectProperty):
    """An object property for linking a system to a designator."""
    inverse_of = satisfiedBy
    label = owl.locstr("conforms to", "en")
    
  class hasUnit(Core.ValueExpression >> QUDT.Unit):
    label = owl.locstr("has unit", "en")

  class State(BFO.process):
    """A state in the IOF ontology."""
    label = owl.locstr("State", "en")
    naturalLanguageDefinition = owl.locstr("process that is homeomeric", 'en')
    is_a = [Core.temporallyStartedBy.some(Core.Event), Core.temporallyFinishedBy.some(Core.Event)]

  class ControllerMode(State):
    """A controller mode in the IOF ontology."""
    label = owl.locstr("Controller Mode", "en")

  class ExecutionState(State):
    """An execution state in the IOF ontology."""
    label = owl.locstr("Execution State", "en")

  class Temperature(BFO.quality):
    """A temperature in the IOF ontology."""
    label = owl.locstr("Temperature", "en")

  class Displacement(BFO.quality):
    """A displacement in the IOF ontology."""
    label = owl.locstr("Displacement", "en")

  class Length(BFO.quality):
    """A length in the IOF ontology."""
    label = owl.locstr("Length", "en")

  class Angle(BFO.quality):
    """An angle in the IOF ontology."""
    label = owl.locstr("Angle", "en")

  class Force(BFO.quality):
    """A force in the IOF ontology."""
    label = owl.locstr("Force", "en")
    
  class ThreeSpaceDisplacement(Displacement):
    """A three-dimensional displacement in the IOF ontology."""
    label = owl.locstr("Three Space Displacement", "en")



Example.save(file = "example.rdf", format = "rdfxml")