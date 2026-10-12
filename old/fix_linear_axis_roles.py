import owlready2 as owl
from ontologies import BFO, Construct, MTConnect

with MTConnect:
  # targetOf/hasTarget were subproperties of inheres_in/bearer_of, which collides
  # with the disposition/role's actual bearer relation (roleOf/hasRole). Make them
  # independent so a role/disposition can have both a bearer and a separate target.
  MTConnect.targetOf.is_a = [owl.ObjectProperty]
  MTConnect.targetOf.domain = [BFO.realizable_entity]

  MTConnect.hasTarget.is_a = [owl.ObjectProperty]
  MTConnect.hasTarget.inverse_property = MTConnect.targetOf

  labels = {
    MTConnect.LinearAxisRole: "Linear Axis Role",
    MTConnect.RotaryAxisRole: "Rotary Axis Role",
    MTConnect.XLinearAxisRole: "X Linear Axis Role",
    MTConnect.YLinearAxisRole: "Y Linear Axis Role",
    MTConnect.ZLinearAxisRole: "Z Linear Axis Role",
    MTConnect.ARotaryAxisRole: "A Rotary Axis Role",
    MTConnect.BRotaryAxisRole: "B Rotary Axis Role",
    MTConnect.CRotaryAxisRole: "C Rotary Axis Role",
  }
  for cls, text in labels.items():
    cls.label = owl.locstr(text, "en")

  MTConnect.LinearAxisRole.is_a.append(Construct.roleOf.some(MTConnect.LinearMotionSystem))
  MTConnect.LinearAxisRole.is_a.append(MTConnect.targetOf.some(MTConnect.Machine))

MTConnect.save(file="mtconnect.rdf", format="rdfxml")
print("Saved mtconnect.rdf")
