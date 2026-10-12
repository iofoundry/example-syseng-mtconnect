# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from https://spec.industrialontologies.org/ontology/qualities/Qualities/
require 'rdf'
module IOF
  # @!parse
  #   # Vocabulary for <https://spec.industrialontologies.org/ontology/qualities/Qualities/>
  #   #
  #   # Industrial Ontology Foundry (IOF) Qualities Ontology (Base)
  #   #
  #   # Qualities Ontology (base)
  #   class Qualities < RDF::StrictVocabulary
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Action
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DimensionQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Reaction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SpatialRelationalQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ToBeReviewed
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isTriggeredBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :triggers
  #
  #   end
  Qualities = Class.new(RDF::StrictVocabulary("https://spec.industrialontologies.org/ontology/qualities/Qualities/")) do

    # Ontology definition
    ontology :"https://spec.industrialontologies.org/ontology/qualities/Qualities/",
      "http://purl.org/dc/terms/abstract": {en: "The IOF (common) Quality Ontology is an architectural construct allowing separate Quality ontologies for different domains e.g., Physical, Chemical, Biological, etc.\n        This ontology also contains those qualities that may be considered 'common'."},
      "http://purl.org/dc/terms/contributor": {"en-us": "Thomas Hanke, Fraunhofer IWM"},
      "http://purl.org/dc/terms/creator": {"en-us": "IOF Materials Working Group"},
      "http://purl.org/dc/terms/license": "http://opensource.org/licenses/MIT",
      "http://purl.org/dc/terms/publisher": "Industrial Ontology Foundry",
      "http://purl.org/dc/terms/title": {en: "Industrial Ontology Foundry (IOF) Qualities Ontology (Base)"},
      "http://www.w3.org/2002/07/owl#imports": ["https://spec.industrialontologies.org/ontology/202301/AboutIOFProd/", "https://spec.industrialontologies.org/ontology/202301/core/meta/AnnotationVocabulary/"],
      "http://www.w3.org/2002/07/owl#versionIRI": "https://spec.industrialontologies.org/ontology/qualities/Qualities/",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/copyright": {en: "Industrial Ontology Foundry (IOF)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Provisional",
      label: {en: "Qualities Ontology (base)"},
      type: "http://www.w3.org/2002/07/owl#Ontology"

    # Class definitions
    term :Action,
      equivalentClass: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list(term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
            someValuesFrom: term(
              intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
                onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasQuality",
                someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000145",
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasProcessCharacteristic",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ProcessCharacteristic",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ))
        ),
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Action is a process introducing a change as a response or interaction in a participating material entity"},
      label: {en: "action", de: "Aktion"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000015",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DimensionQuality,
      label: {en: "dimension quality"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000019",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Reaction,
      altLabel: {de: "Antwort"},
      equivalentClass: term(
          onProperty: "https://spec.industrialontologies.org/ontology/qualities/Qualities/isTriggeredBy",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/qualities/Qualities/Action",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ),
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Reaction represents a process resulting in a realizable entity being realized in response to an action", de: "Reaktion stellt einen Prozess dar, der zu einem realisierbaren Wesen führt, das als Antwort auf eine Aktion realisiert wird"},
      label: {en: "reaction", de: "Reaktion"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000015",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :SpatialRelationalQuality,
      label: {en: "spatial relational quality"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000145",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ToBeReviewed,
      note: {en: "This is a temporary class to hold those constructs that need additional review."},
      type: "http://www.w3.org/2002/07/owl#Class"

    # Property definitions
    property :isTriggeredBy,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "inverse if triggers"},
      inverseOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities/triggers",
      label: {en: "is triggered by", de: "ausgelöst durch"},
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :triggers,
      domain: "https://spec.industrialontologies.org/ontology/qualities/Qualities/Action",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "A stimulus process X can trigger one or more response processes that realize a realizable entity."},
      label: {en: "triggers", de: "verursacht"},
      range: "https://spec.industrialontologies.org/ontology/qualities/Qualities/Reaction",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
  end
end
