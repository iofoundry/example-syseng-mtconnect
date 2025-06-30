import owlready2 as owl
import os
import re

path = os.path.dirname(os.path.abspath(__file__))
cache = f"{path}/../cache"

print("Loading ontologies")
owl.onto_path.append(f"file:///{cache}")
owl.onto_path.append(f"file:///{path}")

BFO = owl.get_ontology(f"file:///{cache}/bfo.rdf").load(only_local = True)
BFO.base_iri = "http://purl.obolibrary.org/obo/bfo.owl"
Core = owl.get_ontology(f"file:///{cache}/Core.rdf").load(only_local = True)
Core.base_iri = "https://spec.industrialontologies.org/ontology/core/Core/"
AnnVocab = owl.get_ontology(f"file:///{cache}/AnnotationVocabulary.rdf").load(only_local = True)
AnnVocab.base_iri = "https://spec.industrialontologies.org/ontology/202401/core/meta/AnnotationVocabulary/"
Des = owl.get_ontology(f"file:///{cache}/Designators.rdf").load(only_local = True)
Des.base_iri = "https://www.omg.org/spec/Commons/Designators/"
Qual = owl.get_ontology(f"file:///{cache}/IOF_Qualities.rdf").load(only_local = True)
Qual.base_iri = "https://spec.industrialontologies.org/ontology/qualities/Qualities/"
QualPhysical = owl.get_ontology(f"file:///{cache}/IOF_Qualities-Physical.rdf").load(only_local = True)
QualPhysical.base_iri = "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/"
print("done")

for cls in BFO.classes():
  name = re.sub(r"[ \-]", "_", str(cls.label.first()))
  setattr(BFO, name, cls)
  
for prop in BFO.object_properties():
  if prop.label:
    name = re.sub(r"[ \-]", "_", str(prop.label.first()))
    prop.python_name = name
    setattr(BFO, name, prop)
    

Example = owl.get_ontology(f"file:///{path}/example.rdf")
Example.base_iri = "http://example.org/ontology/"
if os.path.exists(f"{path}/example.rdf"):
  Example.load(only_local= True)

Data = owl.get_ontology("http://example.org/data/")
Data.imported_ontologies = [BFO, Core, AnnVocab, Des, Qual, QualPhysical, Example]
Data.base_iri = "http://example.org/data/"


QUDT = owl.get_ontology("http://qudt.org/vocab/unit/")
Units = {
  'NEWTON': QUDT['N'],
  'NEWTON_METER': QUDT['N-M'],
  'MILLIMETER': QUDT['MilliM'],
  'DEGREE': QUDT['DEG'],
  'MILLIMETER/SECOND': QUDT['MilliM-PER-SEC'],
  'REVOLUTION/MINUTE': QUDT['REV-PER-MIN']
}

Components = {
  'Linear': Example.LinearMotionSystem,
  'Rotary': Example.RotaryMotionSystem,
  'Device': Example.Machine,
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
  'PartOccurrence': Example.Part,
  'Link': Example.Structure,
  'Enclosure': Example.Structure,
  'Environmental': Example.Room,
  
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
  'REVOLUTE': Example.RevoluteMotionCapability,
  'CONTINUOUS': Example.ContinuousMotionCapability
}

Capabilities = {
  'Device': Example.TurningCapability
}

DataItems = {
  'TEMPERATURE': QualPhysical.Temperature,
  'POSITION': QualPhysical.Displacement,
  'LENGTH': QualPhysical.Length,
  'ANGLE': QualPhysical.Angle,
  'VELOCITY': Example.PrismaticVelocity,
  'VELOCITY_PROGERAMMED': Example.PrismaticVelocity,
  'VELOCITY_RAPID': Example.PrismaticRapidVelocity,
  'ROTARY_VELOCITY': Example.RevoluteVelocity,
  'PATH_FEED_RATE': Example.TranslationalVelocity
}

Roles = {
  'Device': Core.EquipmentRole
}
