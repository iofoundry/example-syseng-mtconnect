# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/
require 'rdf'
module IOF
  # @!parse
  #   # Vocabulary for <https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/>
  #   #
  #   # Industrial Ontology Foundry (IOF) Annotation Vocabulary
  #   #
  #   # Annotation Vocabulary (AV)
  #   # @version 202301
  #   class AnnotationVocabulary < RDF::StrictVocabulary
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaturityLevel
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :abbreviation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :acronym
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :adaptedFrom
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :copyright
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :counterExample
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :directSource
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :elucidation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :excerptedFrom
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :explanatoryNote
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :firstOrderLogicAxiom
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :firstOrderLogicDefinition
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isPrimitive
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :logicAxiom
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :logicDefinition
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :maintainer
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :maturity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :naturalLanguageDefinition
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :primitiveRationale
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :replacedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :semiFormalNaturalLanguageAxiom
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :semiFormalNaturalLanguageDefinition
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :subjectMatterExpertExplanation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :symbol
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :synonym
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :usageNote
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Provisional
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Released
  #
  #   end
  AnnotationVocabulary = Class.new(RDF::StrictVocabulary("https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/")) do

    # Ontology definition
    ontology :"https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/",
      "http://purl.org/dc/terms/abstract": {il: "The IOF Annotation Vocabulary provides a set of OWL annotation properties for annotating IOF or other content with metadata to facilitate user and ontology developer understanding."},
      "http://purl.org/dc/terms/contributor": {il: "Elisa Kendall, Thematix Partners LLC"},
      "http://purl.org/dc/terms/creator": {il: "Todd Schneider, Engineering Semantics, LLC"},
      "http://purl.org/dc/terms/license": "http://opensource.org/licenses/MIT",
      "http://purl.org/dc/terms/publisher": {il: "Industrial Ontology Foundry"},
      "http://purl.org/dc/terms/references": ["http://purl.org/dc/terms/", "http://www.w3.org/2004/02/skos/core#"],
      "http://purl.org/dc/terms/title": {il: "Industrial Ontology Foundry (IOF) Annotation Vocabulary"},
      "http://www.w3.org/2002/07/owl#versionIRI": "https://spec.industrialontologies.org/ontology/202401/core/meta/AnnotationVocabulary/",
      "http://www.w3.org/2002/07/owl#versionInfo": {il: "202301"},
      "http://www.w3.org/2004/02/skos/core#changeNote": {il: "2022-11-30: changed various annotations properties to match revised guidance for formalizing terms as per \"Annotations Vocabulary Version 2.1\""},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/copyright": "Copyright (c) 2022, 2023, Open Applications Group",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Released",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "1. The intention of using annotations is to \n a) help a potential user decide if the ontology or a notion therein meets his or her needs and \n b) help a user or developer understand the 'elements' in the ontology and how to interpret them consistent with the intended interpretation of the IOF.\n\n2. Annotation Usage Conditions\nThe particular annotations that are required or used will depend on the representation language used. IOF ontologies are published using either OWL or Common Logic. As example, the iof-av:firstOrderLogicDefinition should not be used in ontologies using Common Logic.\n\n3. Formal Definition – A statement or expression made using a formal language. A Formal Language can be considered as composed of symbols (aka the alphabet, aka signature), logical symbols (for conjunction, disjunction, implication, equivalence, and quantification), non-logical symbols, and a a set of rules for creating (well formed) statements/expressions in the language. In the case of OWL there are non-logical symbols for classes, object properties, and data properties and these non-logical symbols are usually natural language terms or phrases.\n a) For the IOF these formal languages include First Order Logic (FOL), Common Logic (CL), and OWL. Note that the last two are used for ontology development.\n b) For classes, the only Formal statements or expressions in an IOF ontology are the First Order Logic Definition annotation and the OWL or Common Logic (class or relation) axioms. Note, in the case of a primitive or axiomatic notion there will be no (complete) necessary and sufficient formal definition or axioms.\n c) One point to bear in mind in the way the IOF is using formal languages is that the majority of the symbols used are not from the Greek alphabet nor single characters (usually) but are derived from natural language terms or phrases. This distinction must be kept in mind.\n\n4. There will be some notions (e.g. classes) that are taken as primitive. They will not have Formal definitions, but may have formal axioms to constrain the intended interpretation."},
      label: {il: "Annotation Vocabulary (AV)"},
      type: "http://www.w3.org/2002/07/owl#Ontology"

    # Class definitions
    term :MaturityLevel,
      definition: {il: "classifier used to specify the state of a resource in its development process"},
      label: {il: "maturity level"},
      type: "http://www.w3.org/2002/07/owl#Class"

    # Property definitions
    property :abbreviation,
      definition: {il: "synonym that is an alternate short label for the resource"},
      label: {il: "abbreviation"},
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#altLabel",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :acronym,
      definition: {il: "an abbreviation usually formed from the initial components of a longer name or phrase"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "Use this annotation when there is a commonly accepted acronym.\n\nHOWEVER: While acronyms and other abbreviations may be provided as annotations to elements in an IOF ontology, they must NOT BE USED as part of identifiers or labels, except where they have become the primary designator for a notion where the full 'name' is no longer commonly known or recognized. (e.g. LASER: Light Amplification by Stimulated Emission of Radiation; RADAR: RAdio Detection And Ranging; MODEM: Modulator-DEModulator; SCUBA: Self-Contained Underwater Breathing Apparatus; etc),"},
      label: {il: "acronym"},
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/abbreviation",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :adaptedFrom,
      definition: {il: "source for the resource that was modified to create the subject resource"},
      label: {il: "adapted from"},
      subPropertyOf: "http://purl.org/dc/terms/source",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :copyright,
      definition: {il: "exclusive legal right, given to an originator or an assignee to print, publish, perform, film, or record literary, artistic, or musical material, and to authorize others to do the same"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "This annotation is to be used for an entire ontology and not individual elements."},
      label: {il: "copyright"},
      subPropertyOf: "http://purl.org/dc/terms/rights",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :counterExample,
      definition: "example that refutes or disproves a concept in some scenario and is intended to demonstrate how the concept might be misused",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": "Use of this annotation is optional, but recommended if it will help a user understand the intended interpretation(s).\n- This annotation should use at most twice with/on a notion.\n- Additional examples or more elaborate examples should be placed in the External Documentation (using rdfs:seeAlso).",
      label: "counter example",
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#note",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :directSource,
      definition: {il: "definitive source of the subject resource"},
      label: {il: "direct source"},
      subPropertyOf: "http://purl.org/dc/terms/source",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :elucidation,
      "http://www.w3.org/2002/07/owl#deprecated": "true",
      "http://www.w3.org/2004/02/skos/core#example": {il: "'Agent' is a subclass of the BFO class 'material entity', which in turn is a subclass of the BFO class 'independent continuant', which in turn is a subclass of the BFO class 'continuant'. So the position of 'Agent' is 'material entity ← independent continuant ← continuant'."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "This annotation is no longer used. The isPrimitive annotation is now set to true to indicate a primitive class when necessary and sufficient conditions can not be provided."},
      label: {il: "elucidation"},
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#definition",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :excerptedFrom,
      definition: "source of a resource that was imported unmodified from an external ontology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "This annotation is to be used when an element from a non-IOF ontology is used in an IOF ontology (and the source ontology is not imported in its entirety)."},
      label: {il: "excerpted from"},
      subPropertyOf: "http://purl.org/dc/terms/source",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :explanatoryNote,
      definition: {il: "note that provides additional explanatory information about a given notion or resource"},
      label: {il: "explanatory note"},
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#note",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :firstOrderLogicAxiom,
      definition: {il: "logic axiom annotation written in first order logic"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "First-order logic axioms MAY be provided if the term is primitive ('is primitive' is true ) or non-primitive. A construct MAY include more than one first-order logic axiom annotation."},
      label: {il: "first-order logic axiom"},
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/logicAxiom",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :firstOrderLogicDefinition,
      definition: "logic definition that expresses the axioms of a class or an object property in first order logic",
      "http://www.w3.org/2004/02/skos/core#example": {il: "An example of a First Order Logic definition for 'Product' might be (again bearing in mind the natural language terms appearing should be regarded as symbols in the IOF signature):\n - Continuant(x) ∧ ¬(SpecificallyDependentContinuant(x) ∨ Person(x) ∨ Organization(x)) ∧ ∃r (ProductRole(r) ∧ hasRole(x, r))"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "The First Order Logic Definition annotation is comprised of the (complete) necessary and sufficient conditions.\n - This annotation is Required for each non-primitive (aka non-axiomatic) class (i.e. unary relation) of a published IOF OWL ontology. This is the most authoritative and comprehensive definition of an IOF element. \n - IOF Common Logic ontologies do not require this annotation, but if included it must be logically equivalent to the Common Logic definition.\n - A primitive (aka axiomatic) term will not have a First Order Logic definition in either an OWL or Common Logic IOF ontology.\n - There should be at most one First Order Logic definition.\n - The specific symbols to be used for existential and universal quantification along with those for conjunction, disjunction, negation, conditional (i.e. if-then), and equivalence will be those commonly used in the mathematical formulas and statement.\n - Conjunction - ∧; Disjunction - ∨; Negation - ¬; Existential Quantification - ∃; Universal Quantification - ∀; Conditional - →; Equivalence - ↔; Left/Right Parentheses - (,); Left/Right Brackets - {,}."},
      label: {il: "first order logic definition"},
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/logicDefinition",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :isPrimitive,
      definition: {il: "boolean flag indicating that necessary and sufficient conditions are not provided"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "'is primitive' must be present if the term does not have necessary and sufficient conditions and the value of the annotation must be set to true. When 'is primitive' is set to true, a value for a 'primitive rationale' annotation must also be provided."},
      label: {il: "is primitive"},
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :logicAxiom,
      definition: {il: "logical statements constraining the interpretation of the notion represented by the construct that do not provide necessary and sufficient conditions"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {il: "This annotation property is an abstraction of the more specialized logic axiom annotations used in IOF. However, this annotation property can also be used to group together the logic axiom annotation values of different forms (such as FOL and natural language) that express the same meaning for a particular construct."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "A first order logic axiom expression and a semi-formal natural language axiom expression should be added as Property values for each logic axiom annotation using 1 of each of the corresponding logic axiom annotation subproperties."},
      label: {il: "logic axiom"},
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#note",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :logicDefinition,
      definition: {il: "definition in the form of a logical expression"},
      label: {il: "logic definition"},
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#definition",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :maintainer,
      definition: "entity responsible for maintaining the resource",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "This annotation applies to an entire IOF ontology (i.e. the file) and not to individual elements."},
      label: {il: "maintainer"},
      subPropertyOf: "http://purl.org/dc/terms/contributor",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :maturity,
      definition: {il: "annotation property used to indicate the development status of a resource"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "Any value for maturity MUST be an instance of MaturityLevel. All IOF ontologies MUST include exactly one maturity annotation. IOF constructs may include a maturity annotation."},
      label: {il: "maturity"},
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :naturalLanguageDefinition,
      definition: {il: "definition written in plain text for human understanding"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "This annotation is Required for each non-primitive or non-axiomatic class of an IOF (OWL or Common Logic) ontology. \n - It is optional for primitive (aka axiomatic) classes since such the Elucidation annotation is required and will satisfy the role of a natural language definition.\n - It is optional, but recommended, for relations when the intent of a relation may be misunderstood.\n - There should be at most one.\n - This natural language definition should be subject matter expert friendly and consistent with any formal definition or elucidation.\n - Natural language definitions should use class and relation names with following caveats:\n a) Relations – For those relations whose label (i.e. local identifier) consist of multiple terms hyphenate the terms of the label: e.g. 'hasPlan' would be written as 'has-plan'\n b) Classes – For classes whose label has multiple distinct terms, e.g, ManufacturingOperationSpecification, separate the terms but bound them with apostrophe marks: 'Manufacturing Operation Specification'."},
      label: {il: "natural language definition"},
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#definition",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :primitiveRationale,
      definition: {il: "reason why necessary and sufficient conditions could not be provided"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "When 'is primitive' is set to true, a value for 'primitive rationale' must be provided. The rationale should indicate what is missing if additional work is required to define necessary and sufficient conditions."},
      label: {il: "primitive rationale"},
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#note",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :replacedBy,
      definition: {il: "reference to the IRI of the target of a deprecated construct"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "The value of an iof-av:replacedBy annotation must be the IRI which replaces the target construct."},
      label: {il: "replaced by"},
      subPropertyOf: "http://www.w3.org/2000/01/rdf-schema#seeAlso",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :semiFormalNaturalLanguageAxiom,
      definition: {il: "logic axiom expressed in natural language"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "Semi-formal natural language axioms MAY be provided if the term is primitive (is primitive is true). A construct MAY include more than one semi-formal natural language axiom annotation."},
      label: {il: "semi-formal natural language axiom"},
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/logicAxiom",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :semiFormalNaturalLanguageDefinition,
      definition: "logic definition that expresses a first order logic definition or common logic definition in natural language",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": {il: "This annotation is required if an element in an IOF OWL ontology has a First Order Logic definition or in a IOF Common Logic (where the element is defined using Common Logic).\n - The intent of this annotation to provide a transition or bridge from the First Order Logic definition of a notion to the natural language definition. This definition is intended to help a user understand the intended interpretation of the notion.\n - As example using the First Order Logic definition of 'Product' above, a semi-formal translation of that might be: \n - Product =def. Continuant that is not a Person and not an Organization and not a Specifically Dependent Continuant and there is a Product Role that the thing has or bears."},
      label: {il: "semi-formal natural language definition"},
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/logicDefinition",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :subjectMatterExpertExplanation,
      definition: "definition of the term expressed in natural language that has the minimal usage of ontological terms and is intended to be a self-standing explanation",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": "Usage of this annotation is optional but is recommended in cases where:\n- the natural language definition or elucidation rely heavily on the terms defined in the ontology\n- there exists an explanation of the term that is more familiar to SMEs that does not coincide with the definition present in the ontology",
      label: "subject matter expert explanation",
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#definition",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :symbol,
      definition: {il: "abbreviation that is a design, mark, or charaters(s) used conventionally to represent something, such as currency, quantity, or variable in an expression"},
      "http://www.w3.org/2004/02/skos/core#example": {il: "Chemical Symbols: H, O, Mg\nUnits of Measure: Km, Kg, G"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://spec.edmcouncil.org/fibo/ontology/FND/Utilities/AnnotationVocabulary/",
      label: {il: "symbol"},
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/abbreviation",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :synonym,
      definition: {il: "alternative label (designation) used for the resource in some community"},
      label: {il: "synonym"},
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#altLabel",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"
    property :usageNote,
      definition: {il: "note that provides information about how a given notion or resource is used in the ontology's context"},
      label: {il: "usage note"},
      subPropertyOf: "http://www.w3.org/2004/02/skos/core#note",
      type: "http://www.w3.org/2002/07/owl#AnnotationProperty"

    # Extra definitions
    term :Provisional,
      definition: {il: "construct or ontology development state in which content is subject to change and may change considerably"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {il: "IOF users should be aware that the resource is not dependable, but can be used for reference and for further work."},
      label: {il: "provisional"},
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/MaturityLevel"]
    term :Released,
      definition: {il: "construct or ontology development state in which the resource is stable, usable, and has been made available to external users"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {il: "Release notes will be provided for any changes concerning released content, and any revisions will be backward compatible with the prior version to the degree possible."},
      label: {il: "released"},
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/MaturityLevel"]
  end
end
