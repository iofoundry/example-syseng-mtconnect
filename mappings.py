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
  'LinearX': MTConnect.XLinearMotionSystem,
  'LinearY': MTConnect.YLinearMotionSystem,
  'LinearZ': MTConnect.ZLinearMotionSystem,
  'Rotary': MTConnect.RotaryMotionSystem,
  'RotaryA': MTConnect.ARotaryMotionSystem,
  'RotaryB': MTConnect.BRotaryMotionSystem,
  'RotaryC': MTConnect.CRotaryMotionSystem,
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
  'Enclosure': MTConnect.Structure,
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
  'Device': MTConnect.TurningCapability
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
  'Device': [Construct.EquipmentRole, MTConnect.EngineeredSystemRole],
  'Linear': [MTConnect.EngineeredSystemRole],
  'Rotary': [MTConnect.EngineeredSystemRole],
  'Controller': [MTConnect.EngineeredSystemRole],
  'Path': [MTConnect.EngineeredSystemRole],
  'Composition': [MTConnect.MaterialArtifactRole],
  'MOTOR': [MTConnect.MaterialArtifactRole],
  'BALLSCREW': [MTConnect.MaterialArtifactRole],
  'Electric': [MTConnect.EngineeredSystemRole],
  'Hydraulic': [MTConnect.EngineeredSystemRole],
  'Pneumatic': [MTConnect.EngineeredSystemRole],
  'Lubrication': [MTConnect.EngineeredSystemRole],
  'Stock': [MTConnect.MaterialArtifactRole],
  'PartOccurrence': [MTConnect.MaterialArtifactRole],
  'Link': [MTConnect.MaterialArtifactRole],
  'Enclosure': [MTConnect.MaterialArtifactRole],
  'Door': [MTConnect.MaterialArtifactRole],
  'Coolant': [MTConnect.EngineeredSystemRole]
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