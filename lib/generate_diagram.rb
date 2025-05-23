
require 'time'
require 'rdf'
require 'set'

include RDF

# Generate some visualizations

class GenerateDiagram
  # Convert an iri to a text label
  def self.uml_name(iri)
    qn = iri.qname(prefixes: Prefixes)
    v = if qn[0] == :obo
          "obo:#{iri.attributes[:label][:en]}"
        else
          qn.join(':')
        end
    if qn.first == :core
      "[[#{iri} #{v}]]"
    else
      v
    end
  end  

  # Add a type associated with an iri.
  def self.add_type(iri, type)
    @@types[iri] = type
  end

  # Get the types associated with each individual
  def self.get_types(graph)
    @@types = Hash.new
    stmts = RDF::Query.execute(graph) do
      pattern [:o, RDF::RDFV.type, :type]  
    end
    stmts.each do |s|
      add_type(s.o, s.type)
    end
  end

  # Add a list of terms that will have html links
  def self.add_linked_terms(terms)
    @@linked_terms ||= Set.new
    Array(terms).each { |term| @@linked_terms << term }
  end

  def self.linked_terms
    @@linked_terms
  end

  # Initialize the object with the output filename and an array of statements
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

  # Add an object associated of a short 'o<n>' where n is a monotonically increasing number
  def add_object(iri)
    unless @objects[iri]
      @objects[iri] = "o#{@objects.size + 1}"
    end
  end

  # Print an object with its type
  def print_object(iri)
    if @@linked_terms.include?(iri)
      title = "[[./#{iri.qname.last}.html #{self.class.uml_name(iri)}]]"
    else
      title = self.class.uml_name(iri)
    end
    @f.print "object \"#{title}\" as #{@objects[iri]} "
    if t = @@types[iri]
      @f.puts "{\n type: #{self.class.uml_name(t)} \n}"
    else
      @f.puts
    end
  end

  # Get an object for an iri
  def obj(iri)
    @objects[iri]
  end

  # Print a statment with a subject, predicate, and object. If this is a literal, print it as part of the individual.
  def print_stmt(stmt)
    unless stmt.predicate == RDF::RDFV.type
      if RDF::Literal === stmt.object
        @f.puts "#{obj(stmt.subject)} : #{self.class.uml_name(stmt.predicate)}: #{stmt.object.value}"
      else
        @f.puts "#{obj(stmt.subject)} --> #{obj(stmt.object)} : #{self.class.uml_name(stmt.predicate)}"
      end
    end  
  end

  # Generate the html and puml files. Then run plantuml app on the file.
  def generate
    File.open("#{@filename}.html", 'w') do |f|
      f.puts <<EOT
<!doctype html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>#{File.basename @filename}</title>
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
      f.puts "title #{File.basename @filename}"

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

