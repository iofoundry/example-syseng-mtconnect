require 'rdf'
require 'rdf/vocab'

class Builder
  attr_accessor :about, :graph, :result

  class Datatype
    def initialize(graph, about, type, &block)
      @graph, @about, @type = graph, about, type

      node = RDF.Node
      @graph << [node, RDF::RDFV.type, RDF::RDFS.Datatype]
      @graph << (svf = RDF::Statement.new(value, RDF::OWL.someValuesFrom, node))
      @graph << [svf.object, RDF::OWL.onDatatype, type]
      @constraints = []
      
      instance_eval(&block)

      list = RDF::List.new(subject: nil, graph: @graph, values: @constraints)
      @graph << [svf.object, RDF::OWL.withRestrictions, list]
    end

    def &(o2, o2)
      @constraints << o1 if o1
      @constraints << o2 if o2
      nil
    end

    def const(rel, value)
      desc = RDF.Node
      @graph << [desc, RDF.type, RDF::RDFV.Description]
      @graph << [desc, rel, value]
      desc
    end
    
    def >(value)
      const(RDF::XSD.minExlusive, value)
    end
    
    def <(value)
      const(RDF::XSD.maxExlusive, value)
    end
    
    def >=(value)
      const(RDF::XSD.minInclusive, value)
    end
    
    def <=(value)
      const(RDF::XSD.maxInclusive, value)
    end
  end
    
  
  def initialize(graph, about, type = nil, &block)
    @about = about
    @graph = graph
    @type = type
    
    @result = instance_eval(&block) if block_given?
  end

  def eval(&block)
    @result = instance_eval(&block)
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

  def equivalent_to(cls, &block)
    add_type(nil, @about)
    equiv = RDF::Statement.new(@about, RDF::OWL.equivalentClass, add_type(RDF::OWL.Class))
    @graph << equiv

    if block_given?
      restriction = intersection_of(equiv.object, cls)
      Builder.new(@graph, restriction, cls, &block)
    else
      desc = RDF::Statement.new(RDF::URI.new(cls), RDF::RDFV.type, RDF::RDFV.Description)
      @graph << desc
      @graph << [equiv.object, RDF::OWL.oneOf, RDF::List.new(subject: nil,
                                                             graph: @graph,
                                                             values: [desc.subject])]
    end
  end

  def subclass_of(cls, &block)
    @graph << [@about, RDF::RDFS.subClassOf, cls]
    instance_eval(&block) if block_given?
  end

  def some(property, target, &block)
    restriction = add_type(RDF::OWL.Restriction)
    @graph << [restriction, RDF::OWL.onProperty, property]
    sub = Builder.new(@graph, restriction)
    res = sub.eval(&block)
    @graph << (svf = RDF::Statement.new(restriction, RDF::OWL.someValuesFrom, add_type))
    intersection_of(target, restriction)
  end

  def some_data(property, type, &block)
    restriction = add_type(RDF::OWL.Restriction)
    @graph << [restriction, RDF::OWL.onProperty, property]
    @graph << (svf = RDF::Statement.new(restriction, RDF::OWL.someValuesFrom, add_type))
    DataType.new(svf.object, type, &block)
    restriction
  end
end
