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
    !cls.entail(:subClassOf).find { |t| t == base }.nil?
  end

  # Parse the XML to find the components and create a graph of individuals
  def initialize(xml)
    @doc = REXML::Document.new(xml)

    @graph = RDF::Graph.new
    @graph << Inst::Data.to_enum

    RDF::Reasoner.apply(:rdfs, :owl)
    
    @doc.each_element('//Device') do |dev|
      @device_name = dev[:name]
      @metamodel = Class.new(RDF::Vocabulary("http://example.com/#{@device_name}/")) do
        ontology "http://example.com/#{@device_name}/".to_sym,
                 type: "http://www.w3.org/2002/07/owl#Ontology"
      end
      Prefixes[:vendor] = "http://example.com/#{@device_name}/"
      add_component(dev)
    end

    @graph << @metamodel.to_enum
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

  def add_type(kls = nil, node = nil, parent = nil)
    node ||= RDF.Node
    kls ||= RDF::OWL.Class
    @graph << [node, RDF::RDFV.type, kls]
    @graph << [node, RDF::RDFS.subClassOf, parent] if parent
    node
  end

  def intersection_of(parent, description)
    desc = RDF::Statement.new(RDF::URI.new(description), RDF::RDFV.type, RDF::RDFV.Description)
    @graph << desc
    
    restriction = add_type(RDF::OWL.Restriction)
    @graph << [parent, RDF::OWL.intersectionOf, RDF::List.new(subject: nil,
                                                              graph: @graph,
                                                              values: [desc.subject, restriction])]
    restriction
  end

  def constraint(iri, type, property, expression, constraints)
    add_type(nil, iri)
    equiv = RDF::Statement.new(iri, RDF::OWL.equivalentClass, add_type(RDF::OWL.Class))
    @graph << equiv

    restr1 = intersection_of(equiv.object, type)    
    @graph << [restr1, RDF::OWL.onProperty, property]
    @graph << (svf1 = RDF::Statement.new(restr1, RDF::OWL.someValuesFrom, add_type))

    value = intersection_of(svf1.object, expression)
        
    @graph << [value, RDF::OWL.onProperty, IOF::Core.hasSimpleExpressionValue]
    
    @graph << (svf2 = RDF::Statement.new(value, RDF::OWL.someValuesFrom, add_type(RDF::RDFS.Datatype)))
    @graph << [svf2.object, RDF::OWL.onDatatype, RDF::XSD.float]

    lconsts = constraints.map do |rel, lit|
      sm = RDF::Statement.new(RDF.Node, RDF.type, RDF::RDFV.Description)
      @graph << [sm.subject, rel, lit]
      sm.subject
    end
    
    list = RDF::List.new(subject: nil, graph: @graph, values: lconsts)
    @graph << [svf2.object, RDF::OWL.withRestrictions, list]
    @graph << [iri, RDF::RDFS.subClassOf, type]
    iri
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

      # Add metamodel classes
      mclass = @metamodel["#{@device_name}#{type}#{comp[:name] || comp[:id]}"]
      add_type(nil, mclass, cls)

      @graph << [iri, RDF.type, mclass]      
      @graph << [parent, BFO::BFO.has_member_part_at_some_time, iri] if parent

      s = add_instance(iri, sub_iri(names, "name"), OMG::Designators.hasName, OMG::Designators.Name)
      @graph << [s.subject, OMG::Designators.hasTextualName, "#{comp['name'] || comp['id']}"]

      specs = comp.get_elements('./Configuration/Specifications/*')
      unless specs.empty?
        sp = add_instance(iri, sub_iri(names, "spec"), IOF::Core.prescribedBy, IOF::Core.DesignSpecification)
        specs.each do |spec|
          puts "#{'  ' * (level + 1)}-> #{spec[:type]} #{spec[:units]}"
          dicls = Example::DataItems[spec[:type].to_sym]

          min, max, nom = nil
          spec.each_element do |des|
            puts "#{'  ' * (level + 2)}-> #{des.name}: #{des.text}"
            sn = ["spec", spec[:type], spec[:subType], des.name].compact
            v = add_instance(sp.subject, sub_iri(names, sn), IOF::Core.hasValueExpressionAtAllTimes, IOF::Core.ValueExpression)
            @graph << [v.subject, IOF::Core.hasSimpleExpressionValue, des.text.to_f]
            @graph << [v.subject, QUDT.hasUnit, Units[spec[:units].to_sym]]

            case des.name
            when 'Minimum'
              min = des.text.to_f

            when 'Maximum'
              max = des.text.to_f

            when 'Nominal'
              nom = des.text.to_f
            end
          end

          # Meta model
          if dicls and (min or max)
            cname = @metamodel[(names + ['Constr']).join('-')]
            list = []
            list << [RDF::XSD.maxInclusive, RDF.Literal(max, datatype: RDF::XSD.float)] if max
            list << [RDF::XSD.minInclusive, RDF.Literal(min, datatype: RDF::XSD.float)] if min
              
            constr = constraint(cname, dicls, IOF::Core.hasMeasuredValueAtSomeTime,
                                IOF::Core.MeasuredValueExpression, list)
          end
        end

        # restriction = add_tyoe(RDF::OWL.Restriction)
        # @graph << [mclass, RDF::RDFS.subClassOf, restriction]

        # @graph << [restriction, RDF::OWL.onProperty, Example::Machine.conformsTo]
        # @graph << (avf = RDF::Statement.new(, RDF::OWL.allValuesFrom, add_type()))

        # @graph << [avf.object, RDF::OWL.oneOf, RDF::List.new(subject: nil,
        #                                                      graph: @graph,
        #                                                     values: [sp])]
        

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
        if di[:category] != 'CONDITION' and dicls = Example::DataItems[di[:type].to_sym]
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
          if is_subclass_of(dicls, BFO::BFO.quality)
            add_instance(comp_iri, di_iri, IOF::Core.hasQuality, dicls)
          else
            add_instance(comp_iri, di_iri, IOF::Core.measuresAtSomeTime, dicls)            
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
    debug = Logger.new($stderr)
    debug.level = Logger::DEBUG
    debug.formatter = lambda {|severity, datetime, progname, msg| "#{severity} #{msg}\n"}
    
    RDF::Writer.open("#{machine}.rdf", prefixes: Prefixes, logger: debug) do |w|
      w << @graph
    end
    
    RDF::Writer.open("#{machine}.ttl", prefixes: Prefixes) do |w|
      w << @graph
    end
  end
end
