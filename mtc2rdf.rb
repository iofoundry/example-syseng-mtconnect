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
require 'Designators'
require 'example'
require 'rdf/rdfxml'
require 'rdf/turtle'
require 'set'

include RDF

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

    s = add_instance(graph, iri, sub_iri(names, "name"), OMG::Designators.hasName, OMG::Designators.Name)
    graph << [s.subject, IOF::Core.hasSimpleExpressionValue, "#{comp['name'] || comp['id']}"]

    specs = comp.get_elements('./Configuration/Specifications/*')
    unless specs.empty?
      sp = add_instance(graph, iri, sub_iri(names, "spec"), IOF::Core.prescribedBy, IOF::Core.DesignSpecification)
      specs.each do |spec|
        puts "#{'  ' * (level + 1)}-> #{spec[:type]} #{spec[:units]}"
        spec.each_element do |des|
          puts "#{'  ' * (level + 2)}-> #{des.name}: #{des.text}"
          sn = ["spec", spec[:type], spec[:subType], des.name].compact
          v = add_instance(graph, sp.subject, sub_iri(names, sn), IOF::Core.hasValueExpressionAtAllTimes, IOF::Core.ValueExpression)
          graph << [v.subject, IOF::Core.hasSimpleExpressionValue, des.text.to_f]
          graph << [v.subject, QUDT.hasUnit, Units[spec[:units].to_sym]]
        end
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
      if cls = Example::DataItems[di[:type].to_sym]
        name = [di[:type], di[:subType]].compact.join('-').downcase
        puts "#{'  ' * (level + 2)}** adding #{name}"
        add_instance(graph, iri, sub_iri(names, name), IOF::Core.measuresAtSomeTime, cls)
      end
    end
  end

  if role = Example::Roles[type]
    add_instance(graph, iri, sub_iri(names, 'role'), IOF::Core.hasRole, role)
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

def uml_name(iri)
  qn = iri.qname(prefixes: Prefixes)
  if qn[0] == :obo
    "obo:#{iri.attributes[:label][:en]}"
  else
    qn.join(':')
  end
end

def add_object(objects, iri)
  name = uml_name(iri)
  unless objects[name]
    objects[name] = objects.size + 1
  end
end

def add_type(types, iri, type)
  types[uml_name(iri)] = uml_name(type)
end


File.open("#{machine}.puml", 'w') do |f|
  f.puts "@startuml"
  f.puts "skinparam linetype polyline"
  f.puts "left to right direction"
  objects = Hash.new
  types = Hash.new
  graph.each_statement do |stmt|
    unless uml_name(stmt.predicate) == 'rdfv:type'      
      add_object(objects, stmt.subject)
      unless RDF::Literal === stmt.object
        add_object(objects, stmt.object)
      end
    else
      add_type(types, stmt.subject, stmt.object)
    end
    
  end

  objects.each do |k, v|
    f.print "object \"#{k}\" as o#{v}"
    if types[k]
      f.puts "{\n type = #{types[k]}\n }"
    else
      f.puts
    end
  end

  graph.each_statement do |stmt|
    unless uml_name(stmt.predicate) == 'rdfv:type'      
      if RDF::Literal === stmt.object
        f.puts "o#{objects[uml_name(stmt.subject)]} : #{uml_name(stmt.predicate)} = #{stmt.object.value}"
      else
        f.puts "o#{objects[uml_name(stmt.subject)]} --> o#{objects[uml_name(stmt.object)]} : #{uml_name(stmt.predicate)}"
      end
    end
  end

#    f.puts "object #{stmt.subject.qname(prefixes: Prefixes).join(':')}"
#    if RDF::Literal === stmt.object
#      p stmt.object.value
#    else
#      p stmt.object.qname(prefixes: Prefixes).join(':')
#    end
#    p stmt.subject.qname(prefixes: Prefixes).join(':')
#    p stmt.predicate.qname(prefixes: Prefixes).join(':')
#    puts '======'
#  end
  f.puts("@enduml")
end

RDF::Writer.open("#{machine}.rdf", prefixes: Prefixes) do |w|
  w << graph
end

RDF::Writer.open("#{machine}.ttl", prefixes: Prefixes) do |w|
  w << graph
end
