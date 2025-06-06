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

# The class that converts the MTConnect information model to an IOF compatible
# ontology.

class MTConnectToIOF
  attr_reader :graph

  def is_subclass_of(cls, base)
    #puts cls
    stmts = RDF::Query.execute(@ontology) do
      pattern [cls, RDFS.subClassOf, :parent]
    end.each do |s|
      if s.parent == base
        #puts "    !!! found #{s.parent} == #{base}"
        return true
      else
        #puts "    !!! recursing #{s.parent} == #{base}"
        return is_subclass_of(s.parent, base)
      end
    end

    return false
  rescue
    puts "!!!! no sub class of for #{cls}: #{$!}"
    #puts $!.backtrace.join("\n")
    return false
  end

  # Parse the XML to find the components and create a graph of individuals
  def initialize(xml)
    @doc = REXML::Document.new(xml)

    @graph = RDF::Graph.new
    @graph << Inst::Data.to_enum

    RDF::Reasoner.apply(:rdfs, :owl)
    @ontology = RDF::Graph.new
    @ontology << BFO::BFO.to_enum
    @ontology << IOF::Core.to_enum
    @ontology << OMG::Designators.to_enum
    @ontology << IOF::Qualities.to_enum
    @ontology << IOF::QualitiesPhysical.to_enum
    @ontology << Example::Machine.to_enum
    @ontology.entail!

    @doc.each_element('//Device') do |dev|
      add_component(dev)
    end
  end

  # Create a sub-entity IRI
  def sub_iri(names, ext)
    sub = (names + Array(ext)).join('-')
    Inst::Data[sub]
  end

  # Add an instance of a type to the parent using a relation
  def add_instance(iri, name, relation, type)
    @graph << (s = Statement.new(name, RDF.type, type))
    @graph << [iri, relation, s.subject]
    s
  end

  # Add a capability to an entity
  def add_capability(iri, names, type)
    if cls = Example::Functions[type.to_sym]
      add_instance(iri, sub_iri(names, 'function'), IOF::Core.hasFunction, cls)
    end
    if cls = Example::Capabilities[type.to_sym]
      add_instance(iri, sub_iri(names, 'capability'), IOF::Core.hasCapability, cls)
    end
  end

  # Recursively add components
  def add_component(comp, names = [], level = 0)
    type = (comp[:type] || comp.name).to_sym
    puts "#{'  ' * level}#{comp.name} #{comp[:id]} #{type.inspect}"
    cls = Example::Components[type]
    cls = BFO::BFO.object if cls.nil?
    
    if cls
      parent = Inst::Data[names.join('-')] unless names.empty? or Example::Independent.include?(type)
      names = names.dup << "#{comp[:uuid] || comp[:id]}"
      iri = Inst::Data[names.join('-')]
      @graph << [iri, RDF.type, cls]
      @graph << [parent, BFO::BFO.has_member_part_at_some_time, iri] if parent

      s = add_instance(iri, sub_iri(names, "name"), OMG::Designators.hasName, OMG::Designators.Name)
      @graph << [s.subject, OMG::Designators.hasTextualName, "#{comp['name'] || comp['id']}"]

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
        if di[:category] != 'CONDITION' and cls = Example::DataItems[di[:type].to_sym]
          puts "#{'  ' * (level + 1)}** #{di[:category]} #{di[:type]} #{di[:subType]} #{di[:units]}"
          name = [di[:type], di[:subType]].compact.join('-').downcase
          if di[:compositionId]
            comp_names = names.dup << di[:compositionId]
            comp_iri = Inst::Data[comp_names.join('-')]
          else
            comp_names = names
            comp_iri = iri
          end
          di_iri = sub_iri(comp_names, name)
          
          puts "#{'  ' * (level + 2)}** adding #{name} for #{comp_iri}"
          add_instance(comp_iri, di_iri, IOF::Core.measuresAtSomeTime, cls)
          if is_subclass_of(cls, BFO::BFO.quality)
            add_instance(comp_iri, di_iri, IOF::Core.hasQuality, cls)
          end
        end
      end
      
      if role = Example::Roles[type]
        add_instance(iri, sub_iri(names, 'role'), IOF::Core.hasRole, role)
      end
    end

    # Recurse each composition
    comp.each_element("./Compositions/*") do |cmp|
      add_component(cmp, names, level + 1)
    end

    # Recurse each components
    comp.each_element('./Components/*') do |child|
      add_component(child, names, level + 1)
    end
  end

  def generate(machine)
    # Write out the individuals for the machine in rdfxml and turtle formats
    RDF::Writer.open("#{machine}.rdf", prefixes: Prefixes) do |w|
      w << @graph
    end
    
    RDF::Writer.open("#{machine}.ttl", prefixes: Prefixes) do |w|
      w << @graph
    end
  end
end
