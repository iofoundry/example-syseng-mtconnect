# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from https://spec.industrialontologies.org/ontology/qualities/Qualities-MeasurementPerformance/
require 'rdf'
module IOF
  # @!parse
  #   # Vocabulary for <https://spec.industrialontologies.org/ontology/qualities/Qualities-MeasurementPerformance/>
  #   #
  #   # Industrial Ontology Foundry (IOF) Process Qualities Ontology
  #   #
  #   # Measurement Performance Qualities Ontology
  #   class QualitiesMeasurementPerformance < RDF::StrictVocabulary
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CalibrationRange
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DataAcquisitionRate
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MeasurementRelationalQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PerformanceQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Precision
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :WorkingRange
  #
  #   end
  QualitiesMeasurementPerformance = Class.new(RDF::StrictVocabulary("https://spec.industrialontologies.org/ontology/qualities/Qualities-MeasurementPerformance/")) do

    # Ontology definition
    ontology :"https://spec.industrialontologies.org/ontology/qualities/Qualities-MeasurementPerformance/",
      "http://purl.org/dc/terms/abstract": {"en-us": "This Submodule, Measurement Performance Qualities, of the IOF Qualities Ontology aims to represent the generic constructs (including classes and properties) related bfo qualities covering Measurement Performance."},
      "http://purl.org/dc/terms/contributor": {"en-us": "Thomas Hanke, Fraunhofer IWM"},
      "http://purl.org/dc/terms/creator": {"en-us": "IOF Materials Working Group"},
      "http://purl.org/dc/terms/license": "http://opensource.org/licenses/MIT",
      "http://purl.org/dc/terms/publisher": "Industrial Ontology Foundry",
      "http://purl.org/dc/terms/title": {"en-us": "Industrial Ontology Foundry (IOF) Process Qualities Ontology"},
      "http://www.w3.org/2002/07/owl#imports": "https://spec.industrialontologies.org/ontology/qualities/Qualities/",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/copyright": "Industrial Ontology Foundry (IOF)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Provisional",
      label: {"en-us": "Measurement Performance Qualities Ontology"},
      type: "http://www.w3.org/2002/07/owl#Ontology"

    # Class definitions
    term :CalibrationRange,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Calibration range is the region between limits within which a quantity is measured, received, or transmitted, typically by a process node like a machine, expressed through lower and upper range values"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "calibration range", de: "Kalibrierbereich"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/DynamicRange",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DataAcquisitionRate,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Data acquisition rate is the number of measurements or queries per time period for a considered measurement of a parameter, representing sampling or query rate during data acquisition"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "data acquisition rate", de: "Datenerfassungsrate"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/ProcessCharacteristic",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MeasurementRelationalQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "measurement relational quality is a relational quality that pertains to the measurement attributes related to other entities, requiring another entity for its existence"},
      label: {en: "measurement relational quality", de: "messungsrelationale Qualität"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000145",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PerformanceQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Performance quality is an attribute related to the effectiveness or efficiency of an entity’s performance, typically evaluated in relation to a standard or requirement"},
      label: {en: "performance quality", de: "Leistungsqualität"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000019",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Precision,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": {en: "“Precision.” Merriam-Webster.com Dictionary, Merriam-Webster, https://www.merriam-webster.com/dictionary/precision. Accessed 13 Jan. 2023."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Precision is the degree of refinement with which an operation is performed or a measurement stated"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "precision", de: "Genauigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-MeasurementPerformance/MeasurementRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :WorkingRange,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Working range is the region between limits within which a processing node, like a machine, is usable for its intended purpose, expressed through lower and upper range values of interest"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "working range", de: "Arbeitsbereich"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/DynamicRange",
      type: "http://www.w3.org/2002/07/owl#Class"
  end
end
