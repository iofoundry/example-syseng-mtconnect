# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from https://www.omg.org/spec/Commons/Designators/
require 'rdf'
module OMG
  # @!parse
  #   # Vocabulary for <https://www.omg.org/spec/Commons/Designators/>
  #   #
  #   # Commons Designators Ontology
  #   class Designators < RDF::StrictVocabulary
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Designation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Name
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :defines
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :denotes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :describes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasDescription
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasName
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasTextualName
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isDefinedIn
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isDescribedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isNameOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isSignifiedBy
  #
  #   end
  Designators = Class.new(RDF::StrictVocabulary("https://www.omg.org/spec/Commons/Designators/")) do

    # Ontology definition
    ontology :"https://www.omg.org/spec/Commons/Designators/",
      "http://purl.org/dc/terms/abstract": "The designators ontology defines commonly used concepts for naming, derived in part from the patterns defined in ISO 1087 for terminology work and ISO 11179-3, Metadata Registries. It includes several very high level semiotic relationships, including defines, describes, and denotes for associating designators with the concepts they reference.",
      "http://purl.org/dc/terms/contributor": ["Davide Sottara, Mayo Clinic", "Dean Allemang, Working Ontologist", "Elisa Kendall, Thematix Partners LLC", "Pete Rivett, Federated Knowledge, LLC"],
      "http://purl.org/dc/terms/license": "Copyright (c) 2014-2024 Thematix Partners LLC\n\t\tCopyright (c) 2021-2024 agnos.ai U.K. Ltd\n\t\tCopyright (c) 2021-2024 Federated Knowledge, LLC\n\t\tCopyright (c) 2021-2024 Mayo Clinic\n\t\tCopyright (c) 2022-2024 Object Management Group, Inc.\n\t\tCopyright (c) 2021-2024 Working Ontologist LLC\n\t\t\n\t\tPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\n\t\t\n\t\tSee https://opensource.org/licenses/MIT.",
      "http://www.w3.org/2002/07/owl#imports": ["https://www.omg.org/spec/Commons/AnnotationVocabulary/", "https://www.omg.org/spec/Commons/TextDatatype/"],
      "http://www.w3.org/2002/07/owl#versionIRI": "https://www.omg.org/spec/Commons/20240801/Designators/",
      "http://www.w3.org/2004/02/skos/core#changeNote": ["The https://www.omg.org/spec/Commons/20220501/Designators.rdf version of this ontology was modified to eliminate a double space in the abstract and a note on Designation (COMMONS-6) and to clarify the definition of designation, denotes, and name, and better align them with ISO 704 / ISO 1087 (COMMONS-26).", "The https://www.omg.org/spec/Commons/20221101/Designators.rdf version of this ontology was modified to add a textual name datatype property needed to represent language and country specific text names per ISO 639 and ISO 3166 for LCC (COMMONS-12-8)."],
      "https://www.omg.org/spec/Commons/AnnotationVocabulary/copyright": ["Copyright (c) 2014-2024 Thematix Partners LLC", "Copyright (c) 2021-2024 Federated Knowledge, LLC", "Copyright (c) 2021-2024 Mayo Clinic", "Copyright (c) 2021-2024 Working Ontologist LLC", "Copyright (c) 2021-2024 agnos.ai U.K. Ltd", "Copyright (c) 2022-2024 Object Management Group, Inc."],
      label: "Commons Designators Ontology",
      note: "The designators ontology conforms with the OWL 2 DL semantics, and is outside of OWL 2 RL due to the inclusion of one minimum cardinality constraint (which is tyically ignored, but is important - see note on the Designator class) and two value restrictions. These constraints can be removed if required to support OWL RL rule-based applications that cannot be extended to support them.",
      type: "http://www.w3.org/2002/07/owl#Ontology"

    # Class definitions
    term :Designation,
      definition: "representation for something, or for a conceptualization thereof, that denotes it in a domain or subject",
      "https://www.omg.org/spec/Commons/AnnotationVocabulary/adaptedFrom": ["ISO 1087 Terminology work and terminology science - Vocabulary, Second edition, 2019-09, clause 3.4.1", "ISO 704 Terminology work - Principles and methods, Fourth edition, 2022-07, Figure 1"],
      "https://www.omg.org/spec/Commons/AnnotationVocabulary/synonym": "designator",
      label: "designation",
      note: ["A designation can be a term including appellations, a proper name, or a symbol.", "A designation can be linguistic or non-linguistic. It can consist of various types of characters, but also punctuation marks such as hyphens and parentheses, governed by domain-, subject-, or language-specific conventions.", "Note that the use of the min 0 cardinality restriction in the definition of this class is provided as a reminder that designators are expected, in many cases, to have a text value associated with them. There are cases where this is not true, however, including symbols. And, there may be cases where the value is not known. Additionally, not all tools support rdf:langString, thus its use in the definition of the Text datatype may cause errors, for example in value and some number restrictions. Min 0 cardinality constraints are ignored by reasoners and other processors, so this allows us to say that the possible values for this property are likely either xsd:string or rdf:langString, but does not require it depending on the environment in which the ontology is deployed."],
      subClassOf: [term(
          "http://www.w3.org/2002/07/owl#minQualifiedCardinality": "0",
          "http://www.w3.org/2002/07/owl#onDataRange": "https://www.omg.org/spec/Commons/TextDatatype/Text",
          onProperty: "https://www.omg.org/spec/Commons/TextDatatype/hasTextValue",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://www.omg.org/spec/Commons/Designators/denotes",
          someValuesFrom: "http://www.w3.org/2002/07/owl#Thing",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Name,
      definition: "designation for something by a linguistic expression",
      "https://www.omg.org/spec/Commons/AnnotationVocabulary/adaptedFrom": "ISO/IEC 11179-3 Information technology - Metadata registries (MDR) - Registry metamodel and basic attributes, Third edition, 2013-02-15, clause 3.2.83",
      "https://www.omg.org/spec/Commons/AnnotationVocabulary/explanatoryNote": "Note that unlike symbols and other designations, a name is explicitly not linguistically neutral.",
      label: "name",
      note: "In ISO 1087, a name may be an appellation and is defined as a term that is applied to a group of objects whose relevant properties are identical, whereas a proper name is a designation that represents an individual object.",
      subClassOf: ["https://www.omg.org/spec/Commons/Designators/Designation", term(
          onProperty: "https://www.omg.org/spec/Commons/Designators/isNameOf",
          someValuesFrom: "http://www.w3.org/2002/07/owl#Thing",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"

    # Property definitions
    property :defines,
      definition: "specifies the meaning of something in terms of one or more of its essential qualities",
      "http://www.w3.org/2000/01/rdf-schema#seeAlso": "https://plato.stanford.edu/entries/definitions/",
      inverseOf: "https://www.omg.org/spec/Commons/Designators/isDefinedIn",
      label: "defines",
      note: "A quality is an elementary characteristic of something. An 'essential quality' is one that provides a necessary criteria for being that thing and differentiating criteria for not being something else.",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :denotes,
      definition: "serves as a sign for something, or for a conceptualization thereof",
      domain: "https://www.omg.org/spec/Commons/Designators/Designation",
      "http://www.w3.org/2000/01/rdf-schema#seeAlso": ["http://www.ontologydesignpatterns.org/cp/owl/semiotics.owl#", "https://www.w3.org/2016/05/ontolex/"],
      "http://www.w3.org/2004/02/skos/core#scopeNote": "This property could be specialized to differentiate the notion of referring to something, i.e., a referent, from the notion of evoking a concept. Consider that in OntoLex, the term denotes is used to designate the sign referent relationship specifically, which in ISO 704:2022 is called 'refers to' in Figure 1. This definition is also meant to cover the OntoLex notion of evokes, which in ISO 704:2022 is called designates or represents.",
      "https://www.omg.org/spec/Commons/AnnotationVocabulary/adaptedFrom": ["ISO 1087 Terminology work and terminology science - Vocabulary, Second edition, 2019-09, clause 3.4.1", "ISO 704 Terminology work - Principles and methods, Fourth edition, 2022-07, Figure 1"],
      label: "denotes",
      note: "Note that in some references, such as the semiotics ontology from Ontology Design Patterns,'denotes' can be used to talk about e.g. entities denoted by proper nouns: the proper noun 'Leonardo da Vinci' denotes the person Leonardo da Vinci; as well as to talk about sets of entities that can be described by a common noun: the common noun 'person' denotes the collection of all persons in a domain of discourse. Other references that may be useful for interpreting 'denotes' include OntoLex. The interpretation of 'denotes' in this context is more general, but intended to reflect its usage in the semiotic triangle.",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :describes,
      definition: "conveys the nature of",
      inverseOf: "https://www.omg.org/spec/Commons/Designators/isDescribedBy",
      label: "describes",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasDescription,
      definition: "provides a textual statement, picture in words, or account that describes something",
      label: "has description",
      note: "Note that the hasDescription property defined herein has an implicit range of rdfs:Literal. This is purposeful, so that users can specify any element that has a name with or without a language tag without concern for conflicting datatypes (i.e., xsd:string vs. rdf:langString, which are logically disjoint).",
      subPropertyOf: "https://www.omg.org/spec/Commons/TextDatatype/hasTextValue",
      type: "http://www.w3.org/2002/07/owl#DatatypeProperty"
    property :hasName,
      definition: "is known by",
      inverseOf: "https://www.omg.org/spec/Commons/Designators/isNameOf",
      label: "has name",
      range: "https://www.omg.org/spec/Commons/Designators/Name",
      subPropertyOf: "https://www.omg.org/spec/Commons/Designators/isSignifiedBy",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasTextualName,
      definition: "associates a name, reference name, or appellation with an individual concept",
      "https://www.omg.org/spec/Commons/AnnotationVocabulary/adaptedFrom": "ISO 639:2023 Code for individual languages and language groups, Second edition, 2023-11",
      label: "has textual name",
      note: "Note that the hasTextualName property defined herein has an implicit range of rdfs:Literal. This is purposeful, so that users can specify any element that has a name with or without a language tag without concern for conflicting datatypes (i.e., xsd:string vs. rdf:langString, which are logically disjoint).",
      subPropertyOf: "https://www.omg.org/spec/Commons/TextDatatype/hasTextValue",
      type: "http://www.w3.org/2002/07/owl#DatatypeProperty"
    property :isDefinedIn,
      definition: "indicates something that specifies the meaning associated with the subject",
      label: "is defined in",
      note: "Typically, a concept, such as a classifier or identifier, will be defined in terms of a scheme, contract, specification, standard, or other reference.",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isDescribedBy,
      definition: "has general nature or description of",
      label: "is described by",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isNameOf,
      definition: "denotes in some context",
      domain: "https://www.omg.org/spec/Commons/Designators/Name",
      label: "is name of",
      subPropertyOf: "https://www.omg.org/spec/Commons/Designators/denotes",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isSignifiedBy,
      definition: "has representation, denotation or sign of",
      inverseOf: "https://www.omg.org/spec/Commons/Designators/denotes",
      label: "is signified by",
      range: "https://www.omg.org/spec/Commons/Designators/Designation",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
  end
end
