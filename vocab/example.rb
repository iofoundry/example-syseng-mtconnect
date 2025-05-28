$: << './vocab'

require 'rdf'
require 'rdf/vocab'
require 'BFO'
require 'Core'
require 'Qualities'
require 'QualitiesPhysical'
require 'AnnotationVocabulary'
require 'Designators'
require 'rdf/rdfxml'
require 'rdf/turtle'

include RDF

BFO::BFO.properties.each do |prop|  
  if prop.attributes[:label].is_a? Hash
    name = prop.attributes[:label][:en].gsub(/[ -]/, '_').to_sym
    target = prop.qname[1].to_sym
    # puts "Defining method: #{name} => #{target}"
    BFO::BFO.class.define_method(name) { return  self.send(target) }
  end
end

module Example
  Machine = Class.new(RDF::StrictVocabulary("http://example.com/ontology/")) do
    ontology :"http://example.com/ontology/",
      label: {"en-us": "Machine Ontology"},
      "http://www.w3.org/2002/07/owl#imports": [
        "http://purl.obolibrary.org/obo/bfo/2020/bfo.owl",
        "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/",
        "https://spec.industrialontologies.org/ontology/core/Core/",
        "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/"],
      type: "http://www.w3.org/2002/07/owl#Ontology"

    term :Machine,
         label: {"en-us": "machine"},
         subClassOf: IOF::Core.EngineeredSystem,
         type: "http://www.w3.org/2002/07/owl#Class"
    
    term :MotionSystem,
         label: {"en-us": "motion system"},
         subClassOf: IOF::Core.EngineeredSystem,
         type: "http://www.w3.org/2002/07/owl#Class"
               
    term :LinearMotionSystem,
         label: {"en-us": "linear motion system"},
         subClassOf: self.MotionSystem,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :RotaryMotionSystem,
         label: {"en-us": "rotary motion system"},
         subClassOf: self.MotionSystem,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :ControlSystem,
         label: {"en-us": "control system"},
         subClassOf: IOF::Core.EngineeredSystem,
         type: "http://www.w3.org/2002/07/owl#Class"
    
    term :ControlSystemPath,
         label: {"en-us": "control system path"},
         subClassOf: self.ControlSystem,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Motor, 
         label: {"en-us": "motor"},
         subClassOf: BFO::BFO.object,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Ballscrew, 
         label: {"en-us": "ballscrew"},
         subClassOf: BFO::BFO.object,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Door, 
         label: {"en-us": "door"},
         subClassOf: BFO::BFO.object,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :ElectricalSystem, 
         label: {"en-us": "electrical system"},
         subClassOf: IOF::Core.EngineeredSystem,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :HydraulicSystem, 
         label: {"en-us": "hydraulic system"},
         subClassOf: IOF::Core.EngineeredSystem,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :PneumaticSystem, 
         label: {"en-us": "pneumatic system"},
         subClassOf: IOF::Core.EngineeredSystem,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :LubricationSystem, 
         label: {"en-us": "lubrication system"},
         subClassOf: IOF::Core.EngineeredSystem,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Stock, 
         label: {"en-us": "stock"},
         subClassOf: BFO::BFO.object,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Part, 
         label: {"en-us": "part"},
         subClassOf: BFO::BFO.object,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :MotionCapability,
         label: {'en-us': 'motion capability'},
         subClassOf: IOF::Core.Capability,
         type: "http://www.w3.org/2002/07/owl#Class"        

    term :PrismaticMotionCapability,
         label: {'en-us': 'prismatic motion capability'},
         subClassOf: self.MotionCapability,
         type: "http://www.w3.org/2002/07/owl#Class"        
    
    term :RevoluteMotionCapability,
         label: {'en-us': 'revolute motion capability'},
         subClassOf: self.MotionCapability,
         type: "http://www.w3.org/2002/07/owl#Class"        
    
    term :ContinuousMotionCapability,
         label: {'en-us': 'continuous motion capability'},
         subClassOf: self.RevoluteMotionCapability,
         type: "http://www.w3.org/2002/07/owl#Class"        
    
    term :MillingCapability,
         label: {'en-us': 'milling capability'},
         subClassOf: IOF::Core.Capability,
         type: "http://www.w3.org/2002/07/owl#Class"        

    term :TurningCapability,
         label: {'en-us': 'turning capability'},
         subClassOf: IOF::Core.Capability,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Enclosure,
         label: {'en-us': 'enclosure'},
         subClassOf: BFO::BFO.site,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Structure,
         label: {'en-us': 'enclosure'},
         subClassOf: BFO::BFO.object,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Structure,
         label: {'en-us': 'structure'},
         subClassOf: BFO::BFO.object,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Room,
         label: {'en-us': 'room'},
         subClassOf: BFO::BFO.object,
         type: "http://www.w3.org/2002/07/owl#Class"

    term :Sensor,
         label: {'en-us': 'sensor'},
         subClassOf: BFO::BFO.object,
         type: "http://www.w3.org/2002/07/owl#Class"         

    property :joinedTo,
             label: {'en-us': 'joined to'},
             type: [RDF::OWL.ObjectProperty, RDF::OWL.SymmetricProperty],
             domain: BFO::BFO.material_entity,
             range: BFO::BFO.material_entity

  end

  Components = {
    Linear: Machine.LinearMotionSystem,
    Rotary: Machine.RotaryMotionSystem,
    Device: Machine.Machine,
    Controller: Machine.ControlSystem,
    Path: Machine.ControlSystemPath,
    Composition: BFO::BFO.object,
    MOTOR: Machine.Motor,
    BALLSCREW: Machine.Ballscrew,
    Electric: Machine.ElectricalSystem,
    Hydraulic: Machine.HydraulicSystem,
    Pneumatic: Machine.PneumaticSystem,
    Lubrication: Machine.LubricationSystem,
    Stock: Machine.Stock,
    Personnel: IOF::Core.Person,
    PartOccurrence: Machine.Part,
    Link: Machine.Structure,
    Structure: Machine.Structure,
    Enclosure: Machine.Structure,
    Environmental: Machine.Room,
    

    # Nil mapping
    Axes: false,
    Systems: false,
    Parts: false,
    Auxiliaries: false,
    Resources: false,
    Structures: false,
    Materials: false,
  }

  Independent = Set.new([:Environmental, :Personnel])

  Functions = {
    Device: Machine.MillingCapability,
    PRISMATIC: Machine.PrismaticMotionCapability,
    REVOLUTE: Machine.RevoluteMotionCapability,
    CONTINUOUS: Machine.ContinuousMotionCapability    
  }

  Capabilities = {
    Device: Machine.TurningCapability
  }

  DataItems = {
    TEMPERATURE: IOF::QualitiesPhysical.Temperature,
    POSITION: IOF::QualitiesPhysical.Displacement,
    ANGLE: IOF::QualitiesPhysical.Angle,
    VELOCITY: IOF::QualitiesPhysical.Speed,
    ROTARY_VELOCITY: IOF::QualitiesPhysical.Speed
  }

  Roles = {
    Device: IOF::Core.EquipmentRole
  }
end

module Inst
  Data = Class.new(RDF::Vocabulary("http://example.com/data/")) do
    ontology :"http://example.com/data/",
      label: {"en-us": "Machine Ontology"},
      "http://www.w3.org/2002/07/owl#imports": "http://example.com/ontology/",
      type: "http://www.w3.org/2002/07/owl#Ontology"
  end
end

QUDT = RDF::Vocabulary.new("http://qudt.org/vocab/unit/")

Prefixes = {
  ex: Example::Machine.to_uri,
  data: Inst::Data.to_uri,
  obo: BFO::BFO.to_uri,
  core: IOF::Core.to_uri,
  av: IOF::AnnotationVocabulary.to_uri,
  units: QUDT.to_uri,
  rdfs: RDF::RDFS.to_uri,
  rdfv: RDF::RDFV.to_uri,
  owl: RDF::OWL.to_uri,
  qp: IOF::QualitiesPhysical.to_uri,
  'cmns-dsg': OMG::Designators.to_uri
}

Units = {
  NEWTON: QUDT["N"],
  NEWTON_METER: QUDT["N-M"],
  MILLIMETER: QUDT["MilliM"],
  DEGREE: QUDT["DEG"],
  "MILLIMETER/SECOND": QUDT["MilliM-PER-SEC"],
  "REVOLUTION/MINUTE": QUDT["REV-PER-MIN"]
}

if __FILE__ == $0
  onto = RDF::Graph.new
  onto << Example::Machine.to_enum
  
  onto << [QUDT["MilliM-PER-SEC"], RDF.type, QUDT.Unit]
  onto << [QUDT["REV-PER-SEC"], RDF.type, QUDT.Unit]
  onto << [QUDT["MilliM"], RDF.type, QUDT.Unit]
  onto << [QUDT["N"], RDF.type, QUDT.Unit]
  onto << [QUDT["N-M"], RDF.type, QUDT.Unit]
  onto << [QUDT["DEG"], RDF.type, QUDT.Unit]
  onto << [QUDT["REV-PER-MIN"], RDF.type, QUDT.Unit]
  
  RDF::Writer.open("example.rdf", prefixes: Prefixes) do |w|
    w << onto
  end
end
