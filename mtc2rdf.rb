$:.concat(['./vocab', './lib'])

require 'net/http'
require 'rdf/reasoner'
require 'mtconnect_to_iof'
require 'generate_diagram'

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

# Provide all the type associations with each individual in the graph. This allows for each objec
# to be annotated
GenerateDiagram.get_types(iof.graph)

# Prime he reasoner to do rdf schema and owl reasoning. The reasoning is limited
RDF::Reasoner.apply(:rdfs, :owl)

graph = RDF::Graph.new
graph << BFO::BFO.to_enum
graph << IOF::Core.to_enum
graph << OMG::Designators.to_enum
graph << IOF::Qualities.to_enum
graph << IOF::QualitiesPhysical.to_enum
graph << Example::Machine.to_enum

graph << iof.graph.to_enum

# Entail the local graph
graph.entail!

# Using the entailed ontology, find all the material entities and add them
# as the set of linked terms in the diagrams.

RDF::Query.execute(graph) do
  pattern [:s, RDF.type, BFO::BFO.material_entity]
end.each do |st|
  GenerateDiagram.add_linked_terms(st.s) if st.s.qname[0] == :data
end

# Generate a top level HTML file with links

File.open("#{machine}.html", 'w') do |f|
    f.puts <<EOT
<!doctype html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>#{machine}</title>
    <style>
h1 {
  font-size: 1.25em;  
}

html {
  font-family: "Lucida Console", "Courier New", monospace;
}
    </style>
  </head>
  <body>
    <ul>
EOT
    f.puts <<EOT
      <h1>Complete Diagrams</h1>
      <li><a href='diagrams/#{machine}Full.html'>Complete #{machine} Diagram</a></li>
      <h1>Special Views</h1>
      <li><a href='diagrams/#{machine}Mere.html'>#{machine} Mereology</a></li>
      <li><a href='diagrams/#{machine}Topo.html'>#{machine} Topography</a></li>
      <h1>Component Diagrams</h1>
EOT
    
    GenerateDiagram.linked_terms.each do |st|
       f.puts "      <li><a href='diagrams/#{st.qname[1]}.html'>#{st.qname.join(':')}</a></li>"
    end

    f.puts <<EOT    
    </ul>
  </body>
</html>
EOT
end

# Generate each partial diagram

GenerateDiagram.linked_terms.each do |st|
  once = Set.new
  stmts1 = RDF::Query.execute(iof.graph) do
    pattern [st, :p1, :o1]
    pattern [:o1, :p2, :o2], optional: true
  end.map do |sl|
    r = []
    unless once.include?([st, sl.p1, sl.o1])
      r << Statement.new(st, sl.p1, sl.o1)
      once << [st, sl.p1, sl.o1]
    end
    if sl.bound?(:p2) and sl.bound?(:o2) and not (once.include?([sl.o1, sl.p2, sl.o2]))
      r << Statement.new(sl.o1, sl.p2, sl.o2) 
      once << [sl.o1, sl.p2, sl.o2]

      o2v = RDF::Query.execute(iof.graph) do
        pattern [sl.o2, IOF::Core.hasSimpleExpressionValue, :v]
      end
      o2v.each do |sv|
        r << Statement.new(sl.o2, IOF::Core.hasSimpleExpressionValue, sv.v)
      end
    end
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
  gen = GenerateDiagram.new("diagrams/#{st.qname[1]}", stmts1.concat(stmts2))
  gen.generate  
end

# Generate the complete model

stmts = RDF::Query.execute(iof.graph) do
  pattern [:subject, :predicate, :object]  
end
gen = GenerateDiagram.new("diagrams/#{machine}Full", stmts)
gen.generate

# Generate a mereological diagram

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
gen = GenerateDiagram.new("diagrams/#{machine}Mere", stmts)
gen.generate

# Generate a topological diagram

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
gen = GenerateDiagram.new("diagrams/#{machine}Topo", stmts)
gen.generate

