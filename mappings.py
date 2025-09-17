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
  'Linear': Example.LinearMotionSystem,
  'LinearX': Example.XLinearMotionSystem,
  'LinearY': Example.YLinearMotionSystem,
  'LinearZ': Example.ZLinearMotionSystem,
  'Rotary': Example.RotaryMotionSystem,
  'RotaryA': Example.ARotaryMotionSystem,
  'RotaryB': Example.BRotaryMotionSystem,
  'RotaryC': Example.CRotaryMotionSystem,
  'Device': Example.NumericallyControlledMachine,
  'Controller': Example.ControlSystem,
  'Path': Example.ControlSystemPath,
  'Composition': BFO.object,
  'MOTOR': Example.Motor,
  'BALLSCREW': Example.Ballscrew,
  'Electric': Example.ElectricalSystem,
  'Hydraulic': Example.HydraulicSystem,
  'Pneumatic': Example.PneumaticSystem,
  'Lubrication': Example.LubricationSystem,
  'Stock': Example.Stock,
  'Personnel': Example.Personnel,
  'PartOccurrence': Example.ProductPart,
  'Link': Example.Structure,
  'Enclosure': Example.Structure,
  'Environmental': Example.Room,
  'Door': Example.Door,
  'Coolant': Example.CoolantSystem,
  'Chuck': Example.Chuck,

  'Axes': False,
  'Systems': False,
  'Parts': False,
  'Auxiliaries': False,
  'Resources': False,
  'Structures': False,
  'Materials': False
}

Functions = {
  'Device': Example.MillingCapability,
  'PRISMATIC': Example.PrismaticMotionCapability,
  'REVOLUTE': Example.IndexedRevoluteCapability,
  'CONTINUOUS': Example.ContinuousRevoluteCapability
}

Capabilities = {
  'Device': Example.TurningCapability
}

DataItems = {
  'TEMPERATURE': Example.Temperature,
  'POSITION': Example.Displacement,
  'LENGTH': Example.Length,
  'ANGLE': Example.Angle,
  'VELOCITY': Example.PrismaticVelocity,
  'VELOCITY_PROGRAMMED': Example.PrismaticVelocity,
  'VELOCITY_RAPID': Example.PrismaticRapidVelocity,
  'ROTARY_VELOCITY': Example.RevoluteVelocity,
  'PATH_FEED_RATE': Example.TranslationalVelocity,
  'LINEAR_FORCE': Example.Force,
  'PATH_POSITION': Example.ThreeSpaceDisplacement,
  'CONTROLLER_MODE': Example.ControllerMode,
  'EXECUTION': Example.ExecutionState,
  'CHUCK_STATE': Example.ChuckState
}

Roles = {
  'Device': [Core.EquipmentRole, Example.EngineeredSystemRole],
  'Linear': [Example.EngineeredSystemRole],
  'Rotary': [Example.EngineeredSystemRole],
  'Controller': [Example.EngineeredSystemRole],
  'Path': [Example.EngineeredSystemRole],
  'Composition': [Example.MaterialArtifactRole],
  'MOTOR': [Example.MaterialArtifactRole],
  'BALLSCREW': [Example.MaterialArtifactRole],
  'Electric': [Example.EngineeredSystemRole],
  'Hydraulic': [Example.EngineeredSystemRole],
  'Pneumatic': [Example.EngineeredSystemRole],
  'Lubrication': [Example.EngineeredSystemRole],
  'Stock': [Example.MaterialArtifactRole],
  'PartOccurrence': [Example.MaterialArtifactRole],
  'Link': [Example.MaterialArtifactRole],
  'Enclosure': [Example.MaterialArtifactRole],
  'Door': [Example.MaterialArtifactRole],
  'Coolant': [Example.EngineeredSystemRole]
}

Separate = {
  Example.Room
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