from ontologies import *

Units = {
  'NEWTON': QUDT.N,
  'NEWTON_METER': QUDT.N_M,
  'MILLIMETER': QUDT.MilliM,
  'DEGREE': QUDT.DEG,
  'MILLIMETER/SECOND': QUDT.MilliM_PER_SEC,
  'REVOLUTION/MINUTE': QUDT.RPM,
  'CELSIUS': QUDT.DEG_C
}

Components = {
  'Linear': MTConnect.LinearMotionSystem,
  'LinearX': MTConnect.LinearMotionSystem,
  'LinearY': MTConnect.LinearMotionSystem,
  'LinearZ': MTConnect.LinearMotionSystem,
  'Rotary': MTConnect.RotaryMotionSystem,
  'RotaryA': MTConnect.RotaryMotionSystem,
  'RotaryB': MTConnect.RotaryMotionSystem,
  'RotaryC': MTConnect.RotaryMotionSystem,
  'Device': MTConnect.NumericallyControlledMachine,
  'Controller': MTConnect.ControlSystem,
  'Path': MTConnect.ControlSystemPath,
  'Composition': BFO.object,
  'MOTOR': MTConnect.Motor,
  'BALLSCREW': MTConnect.Ballscrew,
  'Electric': MTConnect.ElectricalSystem,
  'Hydraulic': MTConnect.HydraulicSystem,
  'Pneumatic': MTConnect.PneumaticSystem,
  'Lubrication': MTConnect.LubricationSystem,
  'Stock': MTConnect.Stock,
  'Personnel': MTConnect.Personnel,
  'PartOccurrence': MTConnect.ProductPart,
  'Link': MTConnect.Structure,
  'Enclosure': MTConnect.Frame,
  'Environmental': MTConnect.Room,
  'Door': MTConnect.Door,
  'Coolant': MTConnect.CoolantSystem,
  'Chuck': MTConnect.Chuck,

  'Axes': False,
  'Systems': False,
  'Parts': False,
  'Auxiliaries': False,
  'Resources': False,
  'Structures': False,
  'Materials': False
}

Functions = {
  'Device': MTConnect.MillingCapability,
  'PRISMATIC': MTConnect.PrismaticMotionCapability,
  'REVOLUTE': MTConnect.IndexedRevoluteCapability,
  'CONTINUOUS': MTConnect.ContinuousRevoluteCapability
}

Capabilities = {
  'Device': MTConnect.TurningCapability,
  'Linear': MTConnect.PrismaticMotionCapability,
  'Rotary': MTConnect.RevoluteMotionCapability,
}

SystemCapabilities = {
  'BALLSCREW': MTConnect.PrismaticMotionCapability,
  'MOTOR': MTConnect.MotionCapability,
}

DataItems = {
  'TEMPERATURE': MTConnect.Temperature,
  'POSITION': MTConnect.Displacement,
  'LENGTH': MTConnect.Length,
  'ANGLE': MTConnect.Angle,
  'VELOCITY': MTConnect.PrismaticVelocity,
  'VELOCITY_PROGRAMMED': MTConnect.PrismaticVelocity,
  'VELOCITY_RAPID': MTConnect.PrismaticRapidVelocity,
  'ROTARY_VELOCITY': MTConnect.RevoluteVelocity,
  'PATH_FEED_RATE': MTConnect.TranslationalVelocity,
  'LINEAR_FORCE': MTConnect.Force,
  'PATH_POSITION': MTConnect.ThreeSpaceDisplacement,
  'CONTROLLER_MODE': MTConnect.ControllerMode,
  'EXECUTION': MTConnect.ExecutionState,
  'CHUCK_STATE': MTConnect.ChuckState
}

Roles = {
#  'Device': [Construct.EquipmentRole],
#  'Linear': [MTConnect.LinearMotionSystemRole],
  'LinearX': [MTConnect.XLinearAxisRole],
  'LinearY': [MTConnect.YLinearAxisRole],
  'LinearZ': [MTConnect.ZLinearAxisRole],
  'RotaryA': [MTConnect.ARotaryAxisRole],
  'RotaryB': [MTConnect.BRotaryAxisRole],
  'RotaryC': [MTConnect.CRotaryAxisRole],
#  'Controller': [Construct.EquipmentRole],
#  'Path': [Construct.EquipmentRole],
#  'Composition': [Construct.EquipmentRole],
#  'MOTOR': [Construct.EquipmentRole],
#  'BALLSCREW': [Construct.EquipmentRole],
#  'Electric': [Construct.EquipmentRole],
#  'Hydraulic': [Construct.EquipmentRole],
#  'Pneumatic': [Construct.EquipmentRole],
#  'Lubrication': [Construct.EquipmentRole],
  'Stock': [Construct.RawMaterialRole],
  'PartOccurrence': [Construct.MaterialResourceRole, Construct.MaterialProductRole],
#  'Link': [Construct.EquipmentRole],
#  'Enclosure': [Construct.EquipmentRole],
#  'Door': [Construct.EquipmentRole],
#  'Coolant': [Construct.EquipmentRole]
}

AxisRoles = {
  'LinearX': MTConnect.XLinearAxisRole,
  'LinearY': MTConnect.YLinearAxisRole,
  'LinearZ': MTConnect.ZLinearAxisRole,
}

Separate = {
  MTConnect.Room
}

Namespaces = {
    "http://purl.obolibrary.org/obo/": "bfo",
    "https://spec.industrialontologies.org/ontology/core/Core/": "core",
    "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/": "av",
    "https://www.omg.org/spec/Commons/Designators/": "des",
    "https://spec.industrialontologies.org/ontology/qualities/Qualities/": "qual",
    "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/": "qp",
    "http://example.org/ontology/": "ex",
    "http://example.org/data/": "data",
    "http://qudt.org/vocab/unit/": "unit"
}