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
require 'rdf/reasoner'
require 'set'

include RDF

class MTConnectToIOF
  attr_reader :graph
  
  def initialize(xml)
    @doc = REXML::Document.new(xml)

    @graph = RDF::Graph.new
    @graph << Inst::Data.to_enum

    @doc.each_element('//Device') do |dev|
      add_component(dev)
    end
  end

  def sub_iri(names, ext)
    sub = (names + Array(ext)).join('-')
    Inst::Data[sub]
  end

  def add_instance(iri, name, relation, type)
    @graph << (s = Statement.new(name, RDF.type, type))
    @graph << [iri, relation, s.subject]
    s
  end

  def add_capability(iri, names, type)
    if cls = Example::Functions[type.to_sym]
      add_instance(iri, sub_iri(names, 'function'), IOF::Core.hasFunction, cls)
    end
    if cls = Example::Capabilities[type.to_sym]
      add_instance(iri, sub_iri(names, 'capability'), IOF::Core.hasCapability, cls)
    end
  end

  def add_component(comp, names = [], level = 0)
    type = (comp[:type] || comp.name).to_sym
    puts "#{'  ' * level}#{comp.name} #{comp[:id]} #{type.inspect}"
    cls = Example::Components[type]
    cls = BFO::BFO.object if cls.nil?
    
    if cls
      parent = Inst::Data[names.join('-')] unless names.empty? or type == :Environmental
      names = names.dup << "#{comp[:uuid] || comp[:id]}"
      iri = Inst::Data[names.join('-')]
      @graph << [iri, RDF.type, cls]
      @graph << [parent, BFO::BFO.has_member_part_at_some_time, iri] if parent

      s = add_instance(iri, sub_iri(names, "name"), OMG::Designators.hasName, OMG::Designators.Name)
      @graph << [s.subject, IOF::Core.hasSimpleExpressionValue, "#{comp['name'] || comp['id']}"]

      specs = comp.get_elements('./Configuration/Specifications/*')
      unless specs.empty?
        sp = add_instance(iri, sub_iri(names, "spec"), IOF::Core.prescribedBy, IOF::Core.DesignSpecification)
        specs.each do |spec|
          puts "#{'  ' * (level + 1)}-> #{spec[:type]} #{spec[:units]}"
          spec.each_element do |des|
            puts "#{'  ' * (level + 2)}-> #{des.name}: #{des.text}"
            sn = ["spec", spec[:type], spec[:subType], des.name].compact
            v = add_instance(sp.subject, sub_iri(names, sn), IOF::Core.hasValueExpressionAtAllTimes, IOF::Core.ValueExpression)
            @graph << [v.subject, IOF::Core.hasSimpleExpressionValue, des.text.to_f]
            @graph << [v.subject, QUDT.hasUnit, Units[spec[:units].to_sym]]
          end
        end
      end

      comp.each_element('./Configuration/Relationships/ComponentRelationship') do |rel|
        @graph << [iri, Example::Machine.joinedTo, sub_iri(names[0...1], rel[:idRef])]
      end
      
      key = comp.name
      comp.each_element('./Configuration/Motion') do |motion|
        key = motion[:type]
      end
      
      add_capability(iri, names, key)

      comp.each_element('./DataItems/DataItem') do |di|
        puts "#{'  ' * (level + 1)}** #{di[:type]} #{di[:subType]} #{di[:units]}"
        if cls = Example::DataItems[di[:type].to_sym]
          name = [di[:type], di[:subType]].compact.join('-').downcase
          puts "#{'  ' * (level + 2)}** adding #{name}"
          add_instance(iri, sub_iri(names, name), IOF::Core.measuresAtSomeTime, cls)
        end
      end
      
      if role = Example::Roles[type]
        add_instance(iri, sub_iri(names, 'role'), IOF::Core.hasRole, role)
      end
    end
    
    comp.each_element("./Compositions/*") do |cmp|
      add_component(cmp, names, level + 1)
    end

    comp.each_element('./Components/*') do |child|
      add_component(child, names, level + 1)
    end
  end

  def generate(machine)
    # Write out the individuals for the machine
    RDF::Writer.open("#{machine}.rdf", prefixes: Prefixes) do |w|
      w << @graph
    end
    
    RDF::Writer.open("#{machine}.ttl", prefixes: Prefixes) do |w|
      w << @graph
    end
  end
end

# Generate some visualizations

class GenerateGraph
  def self.uml_name(iri)
    qn = iri.qname(prefixes: Prefixes)
    if qn[0] == :obo
      "obo:#{iri.attributes[:label][:en]}"
    else
      qn.join(':')
    end
  end  
  
  def self.add_type(iri, type)
    @@types[iri] = type
  end

  def self.get_types(graph)
    @@types = Hash.new
    stmts = RDF::Query.execute(graph) do
      pattern [:o, RDF::RDFV.type, :type]  
    end
    stmts.each do |s|
      add_type(s.o, s.type)
    end
  end

  def self.add_linked_terms(terms)
    @@linked_terms ||= Set.new
    Array(terms).each { |term| @@linked_terms << term }
  end

  def self.linked_terms
    @@linked_terms
  end
  
  def initialize(filename, statements)
    @filename = filename
    @statements = statements
    @objects = Hash.new

    @statements.each do |stmt|
      unless stmt.predicate == RDF::RDFV.type
        add_object(stmt.subject)
        unless RDF::Literal === stmt.object
          add_object(stmt.object)
        end
      end
    end
  end

  def add_object(iri)
    unless @objects[iri]
      @objects[iri] = "o#{@objects.size + 1}"
    end
  end
  
  def print_object(iri)
    if @@linked_terms.include?(iri)
      title = "[[./#{iri.qname.last}.html #{self.class.uml_name(iri)}]]"
    else
      title = self.class.uml_name(iri)
    end
    @f.print "object \"#{title}\" as #{@objects[iri]} "
    if @@types[iri]
      @f.puts "{\n type = #{self.class.uml_name(@@types[iri])}\n }"
    else
      @f.puts
    end
  end

  def obj(iri)
    @objects[iri]
  end
  
  def print_stmt(stmt)
    unless stmt.predicate == RDF::RDFV.type
      if RDF::Literal === stmt.object
        @f.puts "#{obj(stmt.subject)} : #{self.class.uml_name(stmt.predicate)} = #{stmt.object.value}"
      else
        @f.puts "#{obj(stmt.subject)} --> #{obj(stmt.object)} : #{self.class.uml_name(stmt.predicate)}"
      end
    end  
  end

  def generate
    File.open("#{@filename}.html", 'w') do |f|
      f.puts <<EOT
<!doctype html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>#{File.basename @filename}"</title>
  </head>
  <body>
    <object data="./#{File.basename @filename}.svg"/>
  </body>
</html>
EOT
    end
    
    File.open("#{@filename}.puml", 'w') do |f|
      @f = f
      
      f.puts "@startuml"
      f.puts "skinparam linetype polyline"
      f.puts "left to right direction"

      @objects.each do |k, v|
        print_object(k)
      end
      
      @statements.each do |stmt|
        print_stmt(stmt)
      end
      
      f.puts("@enduml")
    end
    @f = nil

    puts "Exec: plantuml -tsvg #{@filename}"
    `plantuml -tsvg #{@filename}.puml`
    puts "Done"

  rescue
    puts "Error occurred during wriing of file: #{$!}"
    puts $!.backtrace.join("\n")
  end
end

# Get the XML from the demo site
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

# Generate the IOF ontologies

iof = MTConnectToIOF.new(resp.body)
iof.generate(machine)

# Generate some diagrams

GenerateGraph.get_types(iof.graph)

RDF::Reasoner.apply(:rdfs, :owl)

graph = RDF::Graph.new
graph << BFO::BFO.to_enum
graph << IOF::Core.to_enum
graph << OMG::Designators.to_enum
graph << IOF::Qualities.to_enum
graph << IOF::QualitiesPhysical.to_enum
graph << Example::Machine.to_enum

graph << iof.graph.to_enum

graph.entail!

RDF::Query.execute(graph) do
  pattern [:s, RDF.type, BFO::BFO.material_entity]
end.each do |st|
  GenerateGraph.add_linked_terms(st.s) if st.s.qname[0] == :data
end

GenerateGraph.linked_terms.each do |st|
  stmts1 = RDF::Query.execute(iof.graph) do
    pattern [st, :p, :o]
    pattern [:o, IOF::Core.hasSimpleExpressionValue, :n], optional: true
  end.map do |sl|
    r = [Statement.new(st, sl.p, sl.o)]
    r << Statement.new(sl.o, IOF::Core.hasSimpleExpressionValue, sl.n) if sl.bound?(:n)
    r
  end.flatten
  stmts2 = RDF::Query.execute(iof.graph) do
    pattern [:s, :p, st]
    pattern [:s, IOF::Core.hasSimpleExpressionValue, :n], optional: true
  end.map do |sl|
    r = [Statement.new(sl.s, sl.p, st)]
    r << Statement.new(sl.o, IOF::Core.hasSimpleExpressionValue, sl.n) if sl.bound?(:n)
    r
  end.flatten
  gen = GenerateGraph.new("diagrams/#{st.qname[1]}", stmts1.concat(stmts2))
  gen.generate  
end

File.open("#{machine}.html", 'w') do |f|
    f.puts <<EOT
<!doctype html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>#{machine}</title>
  </head>
  <body>
    <ul>
EOT
    GenerateGraph.linked_terms.each do |st|
      f.puts "      <li><a href='diagrams/#{st.qname[1]}.html'>#{st.qname.join(':')}</a></li>"
    end

    f.puts <<EOT    
    </ul>
  </body>
</html>
EOT
end

stmts = RDF::Query.execute(iof.graph) do
  pattern [:subject, :predicate, :object]  
end
gen = GenerateGraph.new("diagrams/#{machine}", stmts)
gen.generate

once = Set.new
stmts = RDF::Query.execute(iof.graph) do
  pattern [:s, BFO::BFO.has_member_part_at_some_time, :o]           
  pattern [:s, OMG::Designators.hasName, :d]
  pattern [:d, IOF::Core.hasSimpleExpressionValue, :n]  
end.map do |s|
  v = [Statement.new(s.s, BFO::BFO.has_member_part_at_some_time, s.o)]
  unless once.include?(s.s)
    v << Statement.new(s.s, OMG::Designators.hasName, s.n)
    once << s.s
  end
  v  
end.flatten
gen = GenerateGraph.new("diagrams/#{machine}Mere", stmts)
gen.generate

once = Set.new
stmts = RDF::Query.execute(iof.graph) do
  pattern [:s, Example::Machine.joinedTo, :o]
  pattern [:s, OMG::Designators.hasName, :d]
  pattern [:d, IOF::Core.hasSimpleExpressionValue, :n]  
end.map do |s|
  v = [Statement.new(s.s, Example::Machine.joinedTo, s.o)]
  unless once.include?(s.s)
    v << Statement.new(s.s, OMG::Designators.hasName, s.n)
    once << s.s
  end
  v
end.flatten
gen = GenerateGraph.new("diagrams/#{machine}Topo", stmts)
gen.generate

