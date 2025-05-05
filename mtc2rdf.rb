$: << './vocab'

require 'net/http'
require 'rexml/document'
require 'time'
require 'rdf'
require 'rdf/vocab'
require 'BFO'
require 'Core'
require 'Qualities'
require 'QualitiesPhysical'
require 'AnnotationVocabulary'
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

machine = ARGV[0] 
path = "/#{machine}/probe"
puts "Getting https://demo.mtconnect.org#{path}"

client = Net::HTTP.new("demo.mtconnect.org", 443)
client.use_ssl = true
resp = client.get(path)
unless resp.code == '200'
  puts "Response failed: #{resp.code}"
  exit
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

    term :Link,
         label: {'en-us': 'link'},
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
    Link: Machine.Link,
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
end

RDF::Vocabulary.register(:ex, Example::Machine)

module Inst
  Data = Class.new(RDF::Vocabulary("http://example.com/data/")) do
    ontology :"http://example.com/data/",
      label: {"en-us": "Machine Ontology"},
      "http://www.w3.org/2002/07/owl#imports": "http://example.com/ontology/",
      type: "http://www.w3.org/2002/07/owl#Ontology"
  end
end

QUDT = RDF::Vocabulary.new("http://qudt.org/vocab/unit/")

prefixes = {
  ex: Example::Machine.to_uri,
  data: Inst::Data.to_uri,
  obo: BFO::BFO.to_uri,
  core: IOF::Core.to_uri,
  av: IOF::AnnotationVocabulary.to_uri,
  units: QUDT.to_uri,
  rdfs: RDF::RDFS.to_uri,
  rdfv: RDF::RDFV.to_uri,
  owl: RDF::OWL.to_uri,
  qp: IOF::QualitiesPhysical.to_uri
}

onto = RDF::Graph.new
onto << Example::Machine.to_enum

onto << [QUDT["MilliM-PER-SEC"], RDF.type, QUDT.Unit]
onto << [QUDT["REV-PER-SEC"], RDF.type, QUDT.Unit]
onto << [QUDT["MilliM"], RDF.type, QUDT.Unit]
onto << [QUDT["N"], RDF.type, QUDT.Unit]
onto << [QUDT["N-M"], RDF.type, QUDT.Unit]
onto << [QUDT["DEG"], RDF.type, QUDT.Unit]
onto << [QUDT["REV-PER-MIN"], RDF.type, QUDT.Unit]

Units = {
  NEWTON: QUDT["N"],
  NEWTON_METER: QUDT["N-M"],
  MILLIMETER: QUDT["MilliM"],
  DEGREE: QUDT["DEG"],
  "MILLIMETER/SECOND": QUDT["MilliM-PER-SEC"],
  "REVOLUTION/MINUTE": QUDT["REV-PER-MIN"]
}

RDF::Writer.open("example.rdf", prefixes: prefixes) do |w|
  w << onto
end

graph = RDF::Graph.new
graph << Inst::Data.to_enum

def sub_iri(names, ext)
  sub = (names + Array(ext)).join('-')
  Inst::Data[sub]
end

def add_instance(graph, iri, name, relation, type)
  graph << (s = Statement.new(name, RDF.type, type))
  graph << [iri, relation, s.subject]
  s
end

def add_capability(graph, iri, names, type)
  if cls = Example::Functions[type.to_sym]
    add_instance(graph, iri, sub_iri(names, 'function'), IOF::Core.hasFunction, cls)
  end
  if cls = Example::Capabilities[type.to_sym]    
    add_instance(graph, iri, sub_iri(names, 'capability'), IOF::Core.hasCapability, cls)
  end
end

def add_component(graph, comp, names = [], level = 0)
  type = (comp[:type] || comp.name).to_sym
  puts "#{'  ' * level}#{comp.name} #{comp[:id]} #{type.inspect}"
  cls = Example::Components[type]
  cls = BFO::BFO.object if cls.nil?

  if cls
    parent = Inst::Data[names.join('-')] unless names.empty? or type == :Environmental
    names = names.dup << "#{comp[:uuid] || comp[:id]}"
    iri = Inst::Data[names.join('-')]
    graph << [iri, RDF.type, cls]
    graph << [parent, BFO::BFO.has_member_part_at_some_time, iri] if parent
    
    s = add_instance(graph, iri, sub_iri(names, "name"), IOF::Core.denotedBy, IOF::Core.DesignativeInformationContentEntity)    
    graph << [s.subject, IOF::Core.hasSimpleExpressionValue, "#{comp['name'] || comp['id']}"]

    sp = nil
    comp.each_element('./Configuration/Specifications/*') do |spec|
      puts "#{'  ' * (level + 1)}-> #{spec[:type]} #{spec[:units]}"
      unless sp
        sp = add_instance(graph, iri, sub_iri(names, "spec"), IOF::Core.prescribedBy, IOF::Core.DesignSpecification)
      end
      spec.each_element do |des|
        puts "#{'  ' * (level + 2)}-> #{des.name}: #{des.text}"
        sn = ["spec", spec[:type], spec[:subType], des.name].compact
        v = add_instance(graph, sp.subject, sub_iri(names, sn), IOF::Core.hasValueExpressionAtAllTimes, IOF::Core.ValueExpression)        
        graph << [v.subject, IOF::Core.hasSimpleExpressionValue, des.text.to_f]
        graph << [v.subject, QUDT.hasUnit, Units[spec[:units].to_sym]]
      end
    end

    comp.each_element('./Configuration/Relationships/ComponentRelationship') do |rel|
      graph << [iri, Example::Machine.joinedTo, sub_iri(names[0...1], rel[:idRef])]
    end

    key = comp.name
    comp.each_element('./Configuration/Motion') do |motion|
      key = motion[:type]
    end

    add_capability(graph, iri, names, key)

    comp.each_element('./DataItems/DataItem') do |di|
      puts "#{'  ' * (level + 1)}** #{di[:type]} #{di[:subType]} #{di[:units]}"
      cls = Example::DataItems[di[:type].to_sym]
      if cls
        name = [di[:type], di[:subType]].compact.join('-').downcase
        puts "#{'  ' * (level + 2)}** adding #{name}"
        add_instance(graph, iri, sub_iri(names, name), IOF::Core.measuresAtSomeTime, cls)        
      end
    end
  end

  comp.each_element("./Compositions/*") do |cmp|
    add_component(graph, cmp, names, level + 1)    
  end

  comp.each_element('./Components/*') do |child|
    add_component(graph, child, names, level + 1)
  end
end

doc = REXML::Document.new(resp.body)

doc.each_element('//Device') do |dev|
  add_component(graph, dev)
end

RDF::Writer.open("#{machine}.rdf", prefixes: prefixes) do |w|
  w << graph
end

RDF::Writer.open("#{machine}.ttl", prefixes: prefixes) do |w|
  w << graph
end
