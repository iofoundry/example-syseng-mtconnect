# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from https://spec.industrialontologies.org/ontology/core/Core/
require 'rdf'
module IOF
  # @!parse
  #   # Vocabulary for <https://spec.industrialontologies.org/ontology/core/Core/>
  #   #
  #   # Industrial Ontology Foundry (IOF) Core Ontology
  #   #
  #   # Core Ontology
  #   class Core < RDF::StrictVocabulary
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ActionSpecification
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Agent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AgentRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Agreement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Algorithm
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Assembly
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AssemblyProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BusinessFunction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BusinessOrganization
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BusinessProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Buyer
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BuyerRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BuyingBusinessProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Capability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CommercialService
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CommercialServiceAgreement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CommercialServiceSpecification
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ComputingProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Customer
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CustomerRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DescriptiveInformationContentEntity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DesignSpecification
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DesignativeInformationContentEntity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DesignedFunction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DirectiveInformationContentEntity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EncodedAlgorithm
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EngineeredSystem
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EquipmentRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Event
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :GainOfRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :GroupOfAgents
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :GroupOfPersons
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Identifier
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :InformationContentEntity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LossOfRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaintainableMaterialItem
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaintainableMaterialItemRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Manufacturer
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ManufacturerRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ManufacturingProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialArtifact
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialComponent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialComponentRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialLocationChangeProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialProduct
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialProductRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialResource
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialResourceRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialState
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MeasuredValueExpression
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MeasurementCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MeasurementInformationContentEntity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MeasurementProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ObjectiveSpecification
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Organization
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :OrganizationIdentifier
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :OrganizedGroupOfAgents
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Person
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PhysicalLocationIdentifier
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PieceOfEquipment
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PlanSpecification
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PlannedProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ProcessCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ProcuringBusinessProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ProductProductionProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RawMaterial
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RawMaterialRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RequirementSpecification
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SellingBusinessProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ServiceProvider
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ServiceProviderRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Supplier
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SupplierRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SupplyingBusinessProcess
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :System
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TemporalDurationValueExpression
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TemporalInstantValueExpression
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ValueExpression
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :achievesAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :actsOnBehalfOfAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :after
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :before
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :capabilityOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :componentPartOfAtAllTimes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :componentPartOfAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :containsOccurrenceOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :denotedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :denotes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :describedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :describes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :designatedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :designates
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :dispositionOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :functionOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasComponentPartAtAllTimes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasComponentPartAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasDateTimeInstantValue
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasDisposition
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasFunction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasInput
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasMeasuredValueAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasOutput
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasProcessCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasRole
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasSimpleExpressionValue
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasSpecifiedOutput
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasValueExpressionAtAllTimes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :hasValueExpressionAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isAbout
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isAchievedByAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isAvailableToAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isInputOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isMeasuredValueOfAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isOutputOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isSpecifiedOutputOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isSubjectOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isTemporallyOverlappedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isValueExpressionOfAtAllTimes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :isValueExpressionOfAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :measuredByAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :measuresAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :meets
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :metBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :observedByAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :observesAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :occursDuring
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :occursSimultaneouslyWith
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :prescribedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :prescribes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :processCharacteristicOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :qualityOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :recognizedByAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :recognizesAtSomeTime
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :requirementSatisfiedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :roleOf
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :satisfiesRequirement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :temporallyFinishedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :temporallyFinishes
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :temporallyOverlaps
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :temporallyStartedBy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :temporallyStarts
  #
  #   end
  Core = Class.new(RDF::StrictVocabulary("https://spec.industrialontologies.org/ontology/core/Core/")) do

    # Ontology definition
    ontology :"https://spec.industrialontologies.org/ontology/core/Core/",
      "http://purl.org/dc/terms/abstract": "The IOF Core Ontology contains notions found to be common across multiple manufacturing domains. This file is an RDF implementation of these notions. The ontology utilizes the Basic Formal Ontology or BFO as a top-level ontology but also borrows terms from various domain-independent or mid-level ontologies. The purpose of the ontology is to serve as a foundation for ensuring consistency and interoperability across various domain-specific reference ontologies the IOF publishes.",
      "http://purl.org/dc/terms/contributor": {"en-us": "Will Sobel, W. V. Sobel LLC"},
      "http://purl.org/dc/terms/creator": {"en-us": "IOF Core Working Group"},
      "http://purl.org/dc/terms/license": "http://opensource.org/licenses/MIT",
      "http://purl.org/dc/terms/publisher": {"en-us": "Industrial Ontology Foundry"},
      "http://purl.org/dc/terms/title": "Industrial Ontology Foundry (IOF) Core Ontology",
      "http://www.w3.org/2002/07/owl#imports": ["http://purl.obolibrary.org/obo/bfo/2020/bfo.owl", "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/"],
      "http://www.w3.org/2002/07/owl#versionIRI": "https://spec.industrialontologies.org/ontology/202401/core/Core/",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/copyright": "Copyright (c) 2022, 2023, Open Applications Group",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Released",
      label: {"en-us": "Core Ontology"},
      type: "http://www.w3.org/2002/07/owl#Ontology"

    # Class definitions
    term :ActionSpecification,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "pour the contents of flask 1 into flask 2; to loosen a screw with a screwdriver, grab the screw driver with your hand, insert the tip into the head of the screw, apply forward pressure into the screwdriver, and rotate the screwdriver counterclockwise."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "Information Artifact Ontology, http://purl.obolibrary.org/obo/IAO_0000030 and also the Common Core Ontology, http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology (term Action Regulation)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. An action specification is typically a part of some plan specification.\n\n2. All actions change the universe in some fashion. That is, they have outcomes, whether desired ones or not. Since desired outcomes are reasons for the existence of an action specification, we might argue that all action specifications are, in fact, plan specifications, with desired outcomes as objectives. However, our intent here is to capture instances of action specifications wherein objectives or desired outcomes are not explicitly stated and to delinate 'plan specifications' as cases where the objectives and the corresponding actions are explicitly stated. This is why the class is asserted directly under the information content entity.\n\n3. Although not formalized at this stage, an action specification may prescribe a kind of process in more detail by prescribing the sequence of actions one or more participants are to do or by prescribing the actions persons bearing various roles are to do in bringing about the process. The latter would be relevant in situations where a particular participant bears two (or even more roles) in a process. An example of the latter would be a particular shop floor worker bearing and realizing both the role of the operator and that of the inspector as prescribed by some action specification and as realized in today's occurrences of some punch-press process.\n\n4.  Action specification can be used together with plan specification to create a hierarchy of work instruction composition.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "InformationContentEntity(x) ∧ ∃p(Process(p) ∧ prescribes(x,p)) → ActionSpecification(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that prescribes what participants shall do in a process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "See the rationale provided under information content entity for informational entity types.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'information content entity' that 'prescribes' some 'process' then x is an 'action specification'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "actionable work instruction"},
      label: {"en-us": "action specification"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Agent,
      equivalentClass: term(
          intersectionOf: list(term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/EngineeredSystem", "https://spec.industrialontologies.org/ontology/core/Core/GroupOfAgents", "https://spec.industrialontologies.org/ontology/core/Core/Person")
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/AgentRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "an employee; a transportation & logistics provider; a robot; a scheduling system"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "1. Of physical and chemical in nature: Cleaning, vulcanizing, fluxing, indicator, sterilizing, emulisifying, refining.\n\n2. Organisms: animals, cells, parts of organisms (organs, organelles, viruses).",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. See the expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.\n\n2. The IOF has elected to exclude material substances often referred to as agents. That is, they realize some specific function that some person desires (e.g., platinum is a reducing agent in various reduction-type reactions -- as used in a catalytic converter to eliminate or reduce various pollutants in exhausts).\n\n3. The IOF has, at this time, excluded non-human agents, such as animals and other organisms (often referred to as biological agents).",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "Agent(x) ↔ (Person(x) ∨ GroupOfAgents(x) ∨ EngineeredSystem(x)) ∧ ∃r(AgentRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "person, group of persons, or engineered system with an agent role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'agent' is defined as exactly an instance of 'person', 'group of agents', or 'engineered system' when it 'has role' some 'agent role'",
      label: {"en-us": "agent"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :AgentRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a person has an employee role when he/she acts on behalf of the business organization that employs them"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/AgentOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "Other types of agents we are not including at this stage are: \n1. Those that are physical and chemical in nature: Cleaning, vulcanizing, fluxing, indicator, sterilizing, emulisifying, refining.\n\n2. Organisms: animals, cells, parts of organisms (organs, organelles, viruses).\n\n3. In computing: intelligent, artificial, mobile, & autonomous",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1.The IOF has elected to exclude material substances that may, at times, act like or are often referred to as agents, in that they realize some specific function that some person desires (e.g., platinum is a reducing agent in various reduction-type reactions -- as used in a catalytic converter to eliminate or reduce various pollutants in exhausts).\n\n2. The IOF has at this time excluded other types of non-human agents, such as animals and other organisms (often referred to as biological agents).\n\n3. in case the 'material entity' is an engineered system or group of agents or person acting on behalf of oneself is also allowed",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "AgentRole(x) → Role(x) ∧ ∃n∃m((MaterialEntity(m) ∧ ¬FiatObjectPart(x)) ∧ roleOf(x,m) ∧ (Person(n) ∨ GroupOfAgents(n) ∨ EngineeredSystem(n)) ∧ actsOnBehalfOfAtSomeTime(m, n))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "role that someone or something has when they act on behalf of a person, engineered system or a group of agents"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "This term is expected to remain primitive. While 'acting on behalf of at some time' captures the essence of being an agent, the realization of the agent role is expected to have too generic of a scope to define a sufficient condition that would not cause conflict (overlap) with the realization of other roles, which can in turn lead to reasoner errors when a specific entity bears multiple roles simoultaneously. Also, no further conditions specific to the role and not to the bearer of the role have been created thus far.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'agent role' x then x is a 'role' that is the 'role of' some 'material entity' (that is not a 'fiat object part') when it 'acts on behalf of at some time' some 'person' or 'group of agents' or 'engineered system'",
      label: {"en-us": "agent role"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000023", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: term(
            intersectionOf: list(term(
              intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
                "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
                type: "http://www.w3.org/2002/07/owl#Class"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ), term(
              onProperty: "https://spec.industrialontologies.org/ontology/core/Core/actsOnBehalfOfAtSomeTime",
              someValuesFrom: term(
                type: "http://www.w3.org/2002/07/owl#Class",
                unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/EngineeredSystem", "https://spec.industrialontologies.org/ontology/core/Core/GroupOfAgents", "https://spec.industrialontologies.org/ontology/core/Core/Person")
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Agreement,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "prenuptial agreement; memorandum of understanding; non-disclosure agreement; employment agreement; purchase order that has been confirmed by the seller by e-mail; handshake agreement to buy something in the State of Florida, which happens to be legally-binding in that juristiction provided certain evidence can be produced"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "FIBO https://spec.edmcouncil.org/fibo/ontology/FND/Agreements/Agreements, term by the same name",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "Agreement(x) → InformationContentEntity(x) ∧ ∃o(ObjectiveSpecification(o) ∧ hasContinuantPartAtAllTimes(x,o))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "understanding between two or more parties that contains a set of commitments on the part of the parties"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "In addition to the general discussion provided for information content enty,there are insufficient constructs to create necessary and sufficient conditions. Namely, patterns surrounding commitment and party need to be established",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'agreement' then x is an 'information content entity' that 'has continuant part at all times' some 'objective specification'",
      label: {"en-us": "agreement"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000110",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ObjectiveSpecification",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Algorithm,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "pseudo code for sorting data, flowchart for automatic control of a process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/IAO_0000064 and http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "executable code, source code",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. to translate in this context means to implement the algorithm such that it is readily executable\n2. algorithms in this context should be interpreted as implementation-independent (language-neutral) representations and are typically represented as pseudo-code or a flowchart\n3. declarative steps should be interpreted in the context of declarative programming",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "InformationContentEntity(x) ∧ ∃y(EncodedAlgorithm(y) ∧ prescribes(x,y)) → Algorithm(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that prescribes procedural or declarative steps which can be translated to computer interpretable instructions"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "See the general discussion and rationale provided under information content entity.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "If x is an 'information content entity' that 'prescribes' some 'encoded algorithm' then x is an instance of 'algorithm'",
      label: {"en-us": "algorithm"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Assembly,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "powertrain assembly; partially-assembled powertrain + transmission assembly lying nearby; driveshaft assembly temporarily disassembled for repair or routine maintenance; separator assembly consisting of variously-shaped separator parts that safeguard wine bottles in a case of wine during transport; a material artifact produced entirely through additive manufacturing (provided it is a component somewhere, and can it can be disassembled without damage/destruction)."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "APICS 14 ed., 2013, term by the same name; DoD Standard Practice, Identification Marking of US Military Property (MIL-STD-130N Nov. 2012) https://dodprocurementtoolbox.com/cms/sites/default/files/resources/2016-03/MIL-Std130N_Ch1_4.pdf, term by the same name",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "a portion of material; a piece of glass; a rod of aluminum; a roll of aluminum; an engine block",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "Although the term is polysemous and used in a number of other domains beyond manufacturing, it is introduced here as a covering term for any man-made artifact that satisfies the conditions provided, and independent of modality. We expect various subclasses of assembly to be introduced in future along with more precise heuristics for the various modalities in which they exist.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: Assembly(x) → MaterialArtifact(x) ∧ ∃c∃c1(MaterialComponent(c) ∧ MaterialComponent(c1) ∧ componentPartOfAtAllTimes(c,x) ∧ componentPartOfAtAllTimes(c1,x) ∧ ¬(c=c1 ∨ (componentPartOfAtAllTimes(c,c1) ∨ componentPartOfAtAllTimes(c1,c))))", "LA2: MaterialArtifact(x) ∧ ∃p(AssemblyProcess(p) ∧ isSpecifiedOutputOf(x,p)) → Assembly(x)"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "material artifact that is composed of material components that are physically connected and that is capable of disassembly"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs in the ontology to provide necessary and sufficient conditions. Namely, 'disassembly capability' is missing.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: if x is an 'assembly' then x is a 'material artifact' and there are at least two distinct 'material component' that are 'component part of at all times' x", "LA2: Material Artifact x that 'is specified output of' some Assembly Process p implies x is an Assembly"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": "Every assembly has a plurality of material components. While this is captured in the FOL, due to reasoning limitations with cardinality restrictions and complex properties, the OWL axiom uses 'some' instead of min 2. Hence, this class should be modeled as having at least two material components on the instance level.",
      label: {"en-us": "assembly"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/MaterialArtifact", term(
          onProperty: term(
            inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/componentPartOfAtAllTimes"
          ),
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialComponent",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :AssemblyProcess,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Driving a lug nut to hold the wheel of a car in place; welding two metal parts into a single object; automated drilling and riveting of a skin panel operation during fuselage assembly;"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/EventOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "3D printing on an existing part (existing part + a pool of printing material -> new part) -- Note that the pool of material is an object before the process but becomes liquid (there is physical state change) during the \"assembly\" process.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "AssemblyProcess(x) → ManufacturingProcess(x) ∧ ∃a∃c (Assembly(a) ∧ MaterialComponent(c) ∧ isInputOf(c,x) ∧ hasComponentPartAtAllTimes(a,c) ∧ hasSpecifiedOutput(x,a))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "manufacturing process in which a number of material components are physically connected to each other to form an assembly"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "More conditions (differentia) need to be agreed upon by the domain experts as processes like 3D printing can also produce an assembly.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'assembly process' x then x is a 'manufacturing process' that 'has specified output' some 'assembly' which 'has component part at all times' some 'material component' that 'is input of' x",
      label: {"en-us": "assembly process"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/ManufacturingProcess", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasInput",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialComponent",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasSpecifiedOutput",
          someValuesFrom: term(
            intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Assembly", term(
              onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasComponentPartAtAllTimes",
              someValuesFrom: term(
                intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/MaterialComponent", term(
                  onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isInputOf",
                  someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ManufacturingProcess",
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BusinessFunction,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Pfizer has the business function to produce medicines; Airbus has the business function of manufacturing planes"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Business_purpose",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "any function of a non-profit organization",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: BusinessFunction(x) → Function(x) ∧ ∃o∃i(Organization(o) ∧ ObjectiveSpecification(i) ∧ functionOf(x,o) ∧ genericallyDependsOnAtSomeTime(i,o) ∧ prescribedBy(x,i)) ∧ ∀y(hasRealization(x,y) → BusinessProcess(y))", "LA2: Function(x) ∧ ∃o∃i∃p(Organization(o) ∧ ObjectiveSpecification(i) ∧ BusinessProcess(p) ∧ functionOf(x,o) ∧ genericallyDependsOnAtSomeTime(i,o) ∧ prescribedBy(x,i) ∧ hasRealization(x,p)) → BusinessFunction(x)"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "function of an organization to partake in for profit activities as prescribed by the objectives specified by that organization"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "As a function will come into its existance prior to its realization in given business processes necessary and sufficient conditions can not be created at this point due to a lack of patterns to express process types regardless of the time of their existence",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: if x is a 'business function' then x is a 'function' that is 'function of' some 'organization' and that is 'prescribed by' some 'objective specification' and whenever x 'has realization' y that y must be a 'business process'", "LA2: if x is a 'function' that is 'function of' some 'organization' and that is 'prescribed by' some 'objective specification' and that 'has realization' some 'business process' then x is a 'business function'"],
      label: {"en-us": "business function"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000034", term(
          allValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/BusinessProcess",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000054",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/functionOf",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Organization",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribedBy",
          someValuesFrom: term(
            intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/ObjectiveSpecification", term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000084",
              someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Organization",
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BusinessOrganization,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000196",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/BusinessFunction",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Mercedes-Benz, Deloitte, Pfizer, Airbus"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Business",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "Business entities are formally organized according to the laws prevailing in the locales and countries in which it operates or conducts business, and include companies, corporations, partnerships, or sole proprietorships.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "BusinessOrganization(x) ↔ Organization(x) ∧ ∃f(BusinessFunction(f) ∧ hasFunction(x,f))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "organization engaging in or planning to engage in any activity of buying and selling goods or services for a profit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of a business organization' is defined as exactly an instance of 'organization' that 'has function' some 'business function'",
      label: {"en-us": "business organization"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Organization",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BusinessProcess,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "product production process; manufacturing enterprise process; finance operation; logistics operation."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "ISO 15704 and APICS",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "This definition leaves open the possibility that the business entity that carries the plan that prescribes the process, has no direct participation in the process, which would imply that some 3rd-party agent is playing a causal role as the process unfolds, and is acting on behalf of the Business Entity's interests.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "BusinessProcess (p) → PlannedProcess(p) ∧ ∃o∃b∃s∃y (ObjectiveSpecification(o) ∧ BusinessOrganization(b) ∧ PlanSpecification(s) ∧ isCarrierOfAtSomeTime(b,o) ∧ continuantPartofAtAllTimes(o,s) ∧ Agent(y) ∧ actsOnBehalfOfAtSomeTime(y,b) ∧ participatesInAtSomeTime(y,x))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "planned process which is prescribed by a plan specification with one or more objectives specified by a business organization"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "More conditions (differentia) need to be agreed upon by the domain experts.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'business process' then x is a 'planned process' that 'has participant at some time' some 'agent' that 'acts on behalf of at some time' a 'business organization' that 'is carrier of at some time' some 'objective specification' that is 'continuant part of at all times' a 'plan specification' that 'prescribes' x",
      label: {"en-us": "business process"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess", term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: term(
            intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Agent", term(
              onProperty: "https://spec.industrialontologies.org/ontology/core/Core/actsOnBehalfOfAtSomeTime",
              someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/BusinessOrganization",
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribedBy",
          someValuesFrom: term(
            intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/PlanSpecification", term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000110",
              someValuesFrom: term(
                intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/ObjectiveSpecification", term(
                  onProperty: "http://purl.obolibrary.org/obo/BFO_0000084",
                  someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/BusinessOrganization",
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Buyer,
      equivalentClass: term(
          intersectionOf: list(term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", "https://spec.industrialontologies.org/ontology/core/Core/Person")
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/BuyerRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Pfizer when it buys a bulk of chemicals from MiliporeSigma; a person is when they buy groceries at the supermarket; a manufacturing enterprise when they hire an external organization to do some manufacturing process (manufacturing as a service); a person when they hire someone to repair a broken pipe"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "See the expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "Buyer(x) ↔ Person(x) ∨ Organization(x) ∧ ∃r(BuyerRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "person or organization which has a buyer role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'buyer' is defined as exactly an instance of 'person' or 'organization' that 'has role' some 'buyer role'",
      label: {"en-us": "buyer"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BuyerRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Pfizer has a buyer role when it buys a bulk of chemicals from MiliporeSigma; a person has a buyer role when they buy groceries at the supermarket; a manufacturing enterprise has a buyer role when they hire an external organization to do some manufacturing process (manufacturing as a service); a person has a buyer role when they hire someone to repair a broken pipe"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "OAGIS",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "BuyerRole(x) → Role(x) ∧ ∃y∃p ((Organization(y) ∨ Person(y)) ∧ BuyingBusinessProcess(p) ∧ participatesInAtSomeTime(y,p) ∧ roleOf(x, y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "agent role held by a person or organization when it buys a product or a service"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for economic transactions and ownership are lacking",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'buyer role' x then x is an 'agent role' that is the 'role of' some 'person' or 'organization' when it 'participates in at some time' some 'buying business process'",
      label: {"en-us": "buyer role"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/AgentRole", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: term(
            intersectionOf: list(term(
              type: "http://www.w3.org/2002/07/owl#Class",
              unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", "https://spec.industrialontologies.org/ontology/core/Core/Person")
            ), term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000056",
              someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/BuyingBusinessProcess",
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BuyingBusinessProcess,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "GM buys tires from Good Year to be assembled into its cars; GE Conglomerate (buyer) buys steels for uses in productions by its GE aviation subsidiary (customer) and GE Transportation subsidiary (customer)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "CCO:http://www.ontologyrepository.com/CommonCoreOntologies/ActOfBuying\nNL definition: OAGIS and CCO",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1.The agent who uses the finiancial instrument may not own the financial instrument and hence agent may not be the paying agent.\n2. It should be noted that we consciously exclude the person-to-person transactions, but person-to-business is not excluded.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "BuyingBusinessProcess(x) → BusinessProcess(x) ∧ ∃y∃z((MaterialProduct(y) ∨ CommercialServiceAgreement(y)) ∧ Buyer(z) ∧ hasParticipantAtSomeTIme(x,y) ∧ hasParticipantAtSomeTime(x,z))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "business process wherein a financial instrument is used by an agent (buyer) to acquire ownership of a product or commercial service from another agent (seller) for the buyer itself or for another agent (customer)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, ownership and economic transactions require formalization.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'buying business process' then x is a 'business process' that 'has participant at some time' some 'buyer' and x 'has participant at some time' some 'material product' or 'commercial service agreement'",
      label: {"en-us": "buying business process"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/BusinessProcess", term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Buyer",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/CommercialServiceAgreement", "https://spec.industrialontologies.org/ontology/core/Core/MaterialProduct")
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Capability,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Capability of a person to play chess at the \"master\" level; of a team to play football in the professional league; of a lathe to turn at maximal speed of 4,000 RPM; or of your digestive system to digest tiramisu."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/AgentOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Whereas the BFO term 'disposition refers to all tendencies, powers, habits, skills, potentials, and so forth, that a material entity may possess, a Capability narrows this down by requiring the existence of an Agent that has an interest in the realization of the capability\n\n2. This definition does not attempt to capture \"task-based\" capabilities that an entity may bear -- e.g., a stone's capability to kill when used by some person. Rather, it captures \"proper capabilities.\" See related discussion of \"proper functions\" in the literature.\n\n3. All functions are capabilities and in a future release BFO:Function will be asserted directly under capability.\n\n4. Not all capabilities are functions. Capabilities are often added to an artifact by the designer/engineer, or to a biological entity through evolution, as \"additional benefits,\" and are differentiated from function (i.e., purpose). Examples: the air conditioner in your car is a capability but not the function of your car. Yet the function of the car air conditioner certainly forms some material basis of your car's ability to provide a comfortable experience. The ability of your heart to beat fast to support your need to run fast to escape a threat. The decaying stick on the forest lawn does not have the function to be used as a tool, but certainly a chimpanzee\n may have an interest in using a stick to extract food from a termite mound.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "Capability(x) → Disposition(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "disposition in whose realization some agent has an interest"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "This concept will be further developed and formalized in a future release of BFO.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'capability' then x is a 'disposition'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "ability"},
      label: {"en-us": "capability"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000016",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :CommercialService,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Lufthansa Aviation Services maintains airplanes for United Airlines when the plane stops at Frankfurt International Airport."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. A consumption process means using or benefiting.\n\n2.Typically, the service provisioning process and consumption process coincide temporally which is different from a material product that is consumed (used) only after supplied.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "Commercialervice(x) → BusinessProcess(x) ∧ ∃p∃y∃a∃s(CommercialServiceSpecification(p) ∧ ServiceProvider(y) ∧ CommercialServiceAgreement(s) ∧ SupplyingBusinessProcess(a) ∧ hasParticipantAtSomeTime(x,y) ∧ hasOccurentPart(x,a) ∧ prescribedBy(x,p) ∧ isSubjectOf(x,s))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "business process that consists of a service provisioning process and a consumption process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, service consumption needs to be formalized.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'commercial service' then x is a 'business process' that is 'prescribed by' some 'commercial service specification' and that 'has participant at some time' some 'service provider' 'and x 'has occurent part' some 'supplying business process' and x 'is subject of' some 'commercial service agreement'",
      label: {"en-us": "commercial service"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/BusinessProcess", term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ServiceProvider",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000117",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/SupplyingBusinessProcess",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isSubjectOf",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/CommercialServiceAgreement",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribedBy",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/CommercialServiceSpecification",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :CommercialServiceAgreement,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a cellphone plan, a maintenance service agreement, equipment lease agreement that includes a maintenance plan"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://schema.org/, http://www.heppnetz.de/projects/goodrelations/ and http://dini-ag-kim.github.io/service-ontology/service.html",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "a blanket purchase order, commodity contract",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "Agreement(x) ∧ ∃c∃y∃z(CommercialService(c) ∧ ServiceProviderRole(y) ∧ CustomerRole(z) ∧ isAbout(x,c) ∧ prescribes(x,y) ∧ prescribes(x,z)) → CommercialServiceAgreement(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "agreement between a customer and service provider that is about some commercial service to be provided by the service provider in exchange for compensation from the customer"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "See the general discussion and rationale provided for informational entities under 'information content entity'.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "If x is an 'agreement' that 'is about' some 'commercial service' and that 'prescribes' some 'customer role' and some 'service provider role' then x is a 'commercial service agreement'",
      label: {"en-us": "commercial service agreement"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Agreement",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :CommercialServiceSpecification,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "protocol on how maintenance will be conducted on airplanes that is a part of the agreement between Frankfurt Airport and various airlines"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://schema.org/, http://www.heppnetz.de/projects/goodrelations/ and http://dini-ag-kim.github.io/service-ontology/service.html",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "PlanSpecification(x) ∧ ∃c(CommercialService(c) ∧ prescribes(x,c)) → CommercialServiceSpecification(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "plan specification that prescribes a commercial service"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "See the general discussion and rationale provided for informational entities under 'information content entity'.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'plan specification' that 'prescribes' some 'commercial service' then x is a 'commercial service specification'",
      label: {"en-us": "commercial service specification"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/PlanSpecification",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ComputingProcess,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess", term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list(term(
              onProperty: "https://spec.industrialontologies.org/ontology/core/Core/achievesAtSomeTime",
              someValuesFrom: term(
                intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/ObjectiveSpecification", term(
                  onProperty: "http://purl.obolibrary.org/obo/BFO_0000177",
                  someValuesFrom: term(
                    type: "http://www.w3.org/2002/07/owl#Class",
                    unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Algorithm", "https://spec.industrialontologies.org/ontology/core/Core/EncodedAlgorithm")
                  ),
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            ), term(
              onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasSpecifiedOutput",
              someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
              type: "http://www.w3.org/2002/07/owl#Restriction"
            ))
          ), term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000059",
            someValuesFrom: term(
              intersectionOf: list(term(
                type: "http://www.w3.org/2002/07/owl#Class",
                unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Algorithm", "https://spec.industrialontologies.org/ontology/core/Core/EncodedAlgorithm")
              ), term(
                onProperty: "http://purl.obolibrary.org/obo/BFO_0000084",
                someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "execution of a neural network implemented in tensorflow to classify a set of images on a specific cluster; running of the MPC algorithm to control pressure during the production process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Process_(computing) and https://en.wikipedia.org/wiki/Execution_(computing)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The inputs and specified outputs of 'computing process' are strictly limited to information content entities. \n2. While it is true that algorithms can result in an action by an agent that concretizes it (e.g. controller changes the pressure of a valve), the intermediate step is still an information content entity (e.g. action specification) that is 'concretized' in a separate process that results in the action.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "ComputingProcess(x) → ∀y((hasInput(x,y) ∨ hasSpecifiedOutput(x,y)) → InformationContentEntity(y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "ComputingProcess(x) ↔ PlannedProcess(x) ∧ ∃y∃a(Agent(y) ∧ (Algorithm(a) ∨ EncodedAlgorithm(a)) ∧ hasParticipantAtSomeTIme(x,y) ∧ genericallyDependsOnAtSomeTime(a,y) ∧ concretizesAtSomeTime(x,a) ∧ (∃o(ObjectiveSpecification(o) ∧ continuantPartOfAtAllTimes(o,a) ∧ achievesAtSomeTIme(x,o)) ∨ \n∃i(InformationContentEntity(i) ∧ hasSpecifiedOutput(x,i))))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "planned process in which an algorithm or an encoded algorithm is realized by an agent"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'computing process' then whenever x 'has input' or 'has specified output' y that y must be an 'information content entity'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'computing process' is defined as exactly an instance of 'planned process' that 'concretizes at some time' an 'encoded algorithm' or 'algorithm' y which 'generically depends on at some time' some 'agent' which 'participates in at some time' the 'computing process' and the 'computing process' either 'achieves at some time' some 'objective specification' that is 'continuant part of at all times y or it 'has specified output' some 'information content entity'",
      label: {"en-us": "computing process"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess", term(
          allValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasInput",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasSpecifiedOutput",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Customer,
      equivalentClass: term(
          intersectionOf: list(term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", "https://spec.industrialontologies.org/ontology/core/Core/Person")
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/CustomerRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "GE aviation subsidiary and GE Transportation subsidiary when they utilize the steel bought for them by the GE Conglomerate; a person when they utilize a lap top that they bought from Target; a person when they subscribe for a phone plan"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "See the expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "Customer(x) ↔ (Person(x) ∨ Organization(x)) ∧ ∃r(CustomerRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "person or organization which has a customer role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'customer' is defined as exactly an instance of 'person' or 'organization' that 'has role' some 'customer role'",
      label: {"en-us": "customer"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :CustomerRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "GE aviation subsidiary and GE Transportation subsidiary have the customer role when they utilize the steel bought for them by the GE Conglomerate; a person has a customer role when they utilize a lap top that they bought from Target; a person has a customer role when they subscribe for a phone plan"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "OAGIS",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "CustomerRole(x) → AgentRole(x) ∧ ∃y((Person(y) ∨ Organization(y)) ∧ roleOf(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "agent role held by a person or organization when it utilizes the product or receives the service or subscribes to the commercial service agreement"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for 'utilizing the product' and 'subscribing to an agreement' need to be formalized.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'customer role' then x is an 'agent role' that is the 'role of' a 'person' or 'organization'",
      label: {"en-us": "customer role"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/AgentRole", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", "https://spec.industrialontologies.org/ontology/core/Core/Person")
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DescriptiveInformationContentEntity,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/describes",
            someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000001",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a description of a product in a product catalogue, the wheelbase of this car is 3m, digital copy of a Mona Lisa drawing"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/abbreviation": {"en-us": "descriptive ICE"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "This class is intended to be a defined class used for axiomatization and assertion convenience. It is not expected nor recommended that entities will be asserted as a subclass of this class."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "DescriptiveInformationContentEntity(x) ↔ InformationContentEntity(x) ∧ ∃e(Entity(e) ∧ describes(x,e))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that characterizes (gives a description of) an entity"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'descriptive information content entity ' is defined as exactly an instance of 'information content entity' that 'describes' some 'entity'",
      label: {"en-us": "descriptive information content entity"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DesignSpecification,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "document specifying the characteristics of a pharmaceutical product; the design of a software program to schedule the work orders in a factory"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://en.wikipedia.org/wiki/Design and from http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology, term under the name 'artifact design'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "process design",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Design specification may be a model or a textual or graphical specification.\n\n2. This class is not intended to be used to represent the design of planned processes. For this purpose, plan specification should be used.\n\n3. Something 'man-made' comprehends those physical and non-physical things that are intentionally created by human beings. Hence the thing specified by a design specification may be either BFO:GDC or BFO:Material Entity.\n\n4. A design specification specifies what the thing should be, such as its shape, size, tolerance, and performance but not necessarily how the thing should be made. If it contains information on how a thing should be made, this should be modeled separately through a 'plan specification' that is 'part of' the design specification\n\n5. Typically, a design specification satisfies a set of requirements",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: DesignSpecification(x) → InformationContentEntity(x) ∧ ∀c (prescribes(x,c) → Continuant(c))", "LA2: InformationContentEntity(x) ∧ ∃c∃r(Continuant(c) ∧ RequirementSpecification(r) ∧ satisfiesRequirement(x,r) ∧ prescribes(x,c)) ∧ ∀c1(prescribes(x,c1) → Continuant(c1)) → DesignSpecification(x)"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that prescribes something man-made"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "See the general discussion and rationale provided for informational entities under 'information content entity'.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: if d is a 'design specification' then d is an 'information content entity' and whenever d 'prescribes' y that y must be a 'continuant'", "LA2: if d is an 'information content entity' that 'prescribes' some 'continuant' and that 'satisfies requirement' some 'requirement specification' and if all y that d 'presribes' are instance of 'continuant' then d is a 'design specification'"],
      label: {"en-us": "design specification"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000002",
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribes",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DesignativeInformationContentEntity,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/designates",
            someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000001",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "uri of a website, social security number of a person, lot number of a batch of products, a serial number on a machine, a credit card number, a combination of data in a database table uniquely identify each record in the table"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/abbreviation": {"en-us": "designative ICE"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. This class is intended to be a defined class used for axiomatization and assertion convenience. It is not expected nor recommended that entities will be asserted as a subclass of this class.\n\n2. Since the relation 'designates' is defined as a functional property, uniqueness is enforced in the term's formalization.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "DesignativeInformationContentEntity(x) ↔ InformationContentEntity(x) ∧ ∃e(Entity(e) ∧ designates(x,e))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that uniquely identifies an entity"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'designative information content entity' is defined as exactly an instance of 'information content entity' that 'designates' some 'entity'",
      label: {"en-us": "designative information content entity"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DesignedFunction,
      equivalentClass: term(
          intersectionOf: list(term(
            subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Capability"
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribedBy",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/DesignSpecification",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": "the function of a oil pump to pump oil, the function of a knife to cut things",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": {"en-us": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/ArtifactOntology"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "ArtifactFunction(x) ↔ Function(x) ∧ ∃d(DesignSpecification(m)∧ prescribedBy(x,d))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "function that is intentionally designed"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'designed function' is exactly an instance of 'function' that is 'prescribed by' some 'design specification'",
      label: {"en-us": "designed function"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000034",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DirectiveInformationContentEntity,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribes",
            someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000001",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "blueprint of a building, process plan, software functional requirement"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/abbreviation": {"en-us": "directive ICE"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "This class is intended to be a defined class used for axiomatization and assertion convenience. It is not expected nor recommended that entities will be asserted as a subclass of this class.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "DirectiveInformationContentEntity(x) ↔ InformationContentEntity(x) ∧ ∃e(Entity(e) ∧ prescribes(x,e))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that prescribes a set of rules or guidelines for a process or a model of something man-made"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'directive information content entity' is defined as exactly an instance of 'information content entity' that 'prescribes' some 'entity'",
      label: {"en-us": "directive information content entity"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :EncodedAlgorithm,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "source code encoded in Java that implements a sorting algorithm; Python script that implements a decision tree and that has the objective to classify melt pool images"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ebi.ac.uk/swo/SWO_0000001",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "flowchart, pseudocode",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "Readily executable means that it can be 1) concretized by a computing process which is prescribed by the encoded algorithm or 2) in case of source code concretized by a compiling process",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "PlanSpecification(x) ∧ ∃y(ComputingProcess(y) ∧ prescribes(x,y)) → EncodedAlgorithm(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "plan specification that is the implementation of an algorithm encoded in a specific programming language or framework and that is readily executable"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "In addition to the general discussion provided for information content enty,there are insufficient constructs to create necessary and sufficient conditions. Namely constructs for 'encoded in', 'implementation of' and 'programming language' or 'framework' as well as 'compiling process' are still missing.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "If x is a 'plan specification' that 'prescribes' some 'computing process' then x is an instance of 'encoded algorithm'",
      label: {"en-us": "encoded algorithm"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/PlanSpecification",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :EngineeredSystem,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/System", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000196",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/DesignedFunction",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "machine, laptop, traffic light system"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "www.incose.com, term by the same name",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "EngineeredSystem(x) ↔ System(x) ∧ ∃f(DesignedFunction(f) ∧ bearerOf(x,f))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "system that is deliberately created to have a certain function"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'engineered system' is defined as exactly an instance of 'system' that is the 'bearer of' some 'designed function'",
      label: {"en-us": "engineered system"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/System",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :EquipmentRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "role of a wrench when it is used in the maintenance process of a car; role of a chromatography column that is planned to be used in a protein purification process; role of a truck that is used to transport goods to the buyer; role of a single-use bioreactor when it is planned to be used in the upstream phase of a biomanufacturing process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "adapted from Oxford Languages, term by the name ‘equipment’",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. By including in the definition that the material artifact is not consumed in the process, the equipment role intentionally excludes entities such as consumables and reagents, which should be modeled separately.\n\n2. In the definition, \"utilized for carrying out\" implies that the function of the given material artifact needs to be realized in the process. That is, entities with the equipment role should not passively participate in the prescribed process. This differentiates 'material artifacts with the equipment role' (a piece of equipment) from material artifacts that are acted upon (transformed or modified) in the given process.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "EquipmentRole(x) → Role(x) ∧ ∃p∃y(PlanSpecification(p) ∧ MaterialArtifact(y) ∧ roleOf(x,y) ∧ (prescribes(p,y) ∨ ∃i((InformationContentEntity(i) ∨ RequirementSpecification(i)) ∧ continuantPartOfAtAllTimes(i,p) ∧ (prescribes(i,y) ∨ satisfiesRequirement(y,i)))) ∧  ∀z(hasRealization(x,z) → (PlannedProcess(z) ∧ (prescribedBy(z,p) ∨ ∃i1(InformationContentEntity(i1) ∧ continuantPartOfAtAllTimes(i1,p) ∧ prescribes(i1,z))) ∧ ∃f(Function(f) ∧ hasFunction(y,f) ∧ realizes(z,f)))))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "role held by a material artifact when it is planned to be involved in or is involved in carrying out some part of a planned process and that is not consumed in that planned process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to define necessary and sufficient conditions. Namely, patterns for utilized in carrying out and not consumed need to be developed further.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "If x is an 'equipment role' then x is a 'role' that is the 'role of' a 'material artifact' y that is 'prescribed by' a 'plan specification' p or its 'continuant part of at all times' or y 'satisfies requirement' some 'requirement specification' which is 'continuant part of at all times' p and whenever x 'has realization' z that z must be a 'planned process' 'prescribed by' p or 'prescribed by' some 'continuant part of at all times' p and z must 'realize' a 'function' which is a 'function of' y",
      label: {"en-us": "equipment role"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000023", term(
          allValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialArtifact",
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: term(
            intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess", term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000055",
              someValuesFrom: term(
                intersectionOf: list(term(
                  subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Capability"
                ), term(
                  onProperty: "https://spec.industrialontologies.org/ontology/core/Core/functionOf",
                  someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialArtifact",
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000054",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list(term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
            someValuesFrom: term(
              intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/MaterialArtifact", term(
                onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribedBy",
                someValuesFrom: term(
                  type: "http://www.w3.org/2002/07/owl#Class",
                  unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/PlanSpecification", term(
                    onProperty: "http://purl.obolibrary.org/obo/BFO_0000177",
                    someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/PlanSpecification",
                    type: "http://www.w3.org/2002/07/owl#Restriction"
                  ))
                ),
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/satisfiesRequirement",
            someValuesFrom: term(
              intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/RequirementSpecification", term(
                onProperty: "http://purl.obolibrary.org/obo/BFO_0000177",
                someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/PlanSpecification",
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ))
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Event,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a machine failure event, the amount of cells in a bioreactor reaches a certain threshold"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "Oxford Languages, term by the same name",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "an event in discrete event simulation is too generic and that notion of event is just BFO:Occurrent",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "Event(x) → (Process(x) ∨ ProcessBoundary(x)) ∧ ∃y(Agent(y) ∧ recognizedByAtSomeTime(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Provisional",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "phenomena (process or process boundary) that is recognized by an agent and typically recorded"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "More conditions (differentia) need to be agreed upon by the domain experts as not all occurrents recognized by an agent are events.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'event' then x is a 'process' or 'process boundary' and there is some 'agent' that 'recognizes at some time' x",
      label: {"en-us": "event"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000003", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/recognizedByAtSomeTime",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035")
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :GainOfRole,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            intersectionOf: list(term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000199",
              someValuesFrom: term(
                intersectionOf: list(term(
                  "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
                ), term(
                  type: "http://www.w3.org/2002/07/owl#Class",
                  unionOf: list(term(
                    onProperty: "https://spec.industrialontologies.org/ontology/core/Core/meets",
                    someValuesFrom: term(
                      intersectionOf: list(term(
                        "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
                      ), term(
                        onProperty: term(
                          inverseOf: "http://purl.obolibrary.org/obo/BFO_0000108"
                        ),
                        someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000023",
                        type: "http://www.w3.org/2002/07/owl#Restriction"
                      )),
                      type: "http://www.w3.org/2002/07/owl#Class"
                    ),
                    type: "http://www.w3.org/2002/07/owl#Restriction"
                  ), term(
                    onProperty: "https://spec.industrialontologies.org/ontology/core/Core/temporallyOverlaps",
                    someValuesFrom: term(
                      intersectionOf: list(term(
                        "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
                      ), term(
                        onProperty: term(
                          inverseOf: "http://purl.obolibrary.org/obo/BFO_0000108"
                        ),
                        someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000023",
                        type: "http://www.w3.org/2002/07/owl#Restriction"
                      )),
                      type: "http://www.w3.org/2002/07/owl#Class"
                    ),
                    type: "http://www.w3.org/2002/07/owl#Restriction"
                  ), term(
                    onProperty: "https://spec.industrialontologies.org/ontology/core/Core/temporallyStarts",
                    someValuesFrom: term(
                      intersectionOf: list(term(
                        "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
                      ), term(
                        onProperty: term(
                          inverseOf: "http://purl.obolibrary.org/obo/BFO_0000108"
                        ),
                        someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000023",
                        type: "http://www.w3.org/2002/07/owl#Restriction"
                      )),
                      type: "http://www.w3.org/2002/07/owl#Class"
                    ),
                    type: "http://www.w3.org/2002/07/owl#Restriction"
                  ))
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            ), term(
              onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasOutput",
              someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000023",
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ), term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000167",
            someValuesFrom: term(
              intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
                "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
                type: "http://www.w3.org/2002/07/owl#Class"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": "the process of gaining an operator role when someone is assigned in that position",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "CCO",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "1. If only one date-time is available for some gain of role processes due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval, for which a gain of role process occurs, uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "GainOfRole(p) ↔ Process(p) ∧ ∃t∃t1∃r∃y(TemporalInterval(t) ∧ TemporalInterval(t1) ∧ Role(r)∧ (IndependentContinuant(y) ∧ ¬SpatialRegion(y)) ∧ occupiesTemporalRegion(p,t) ∧ (temporallyOverlaps(t,t1) ∨ temporallyStarts(t,t1) ∨ meets(t,t1)) ∧ hasOutput(p,r) ∧ existsAt(r,t1) ∧ hasRole(y,r) ∧ hasParticipantAtAllTimes(p,y) ∧ ∀t2(TemporalRegion(t2) ∧ existsAt(r,t2) → (occurrentPartOf(t2,t1) ∨ t2 = t1)))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "process in which someone or something (independent continuant that is not a spatial region) becomes the bearer of a role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of ‘gain of role’ is defined exactly as an instance of a ‘process’ p that 'occupies temporal region' some 'temporal interval' t that ‘temporally starts’ or ‘temporally overlaps’ or 'meets' some 'temporal interval' t1, and p ‘has participant at all times’ some 'independent continuant' that is not a 'spatial region' y and p ‘has output’ some ‘role’ r that only ‘exists at’ t1 and y 'has role' r",
      label: {"en-us": "gain of role"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000015",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :GroupOfAgents,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000027", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000115",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            allValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000115",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "organization; an automated manufacturing cell; division; protesters"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/AgentOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Group of agents being a BFO:Object Aggregate allows for a point in time where only one 'agent' is present.\n\n2. As the name suggests, a group of agents is a grouping of agents based on some criteria. As such, it can only have agents as members.\n\n3. The members of the group of agents can be any combination of persons, organizations, or engineered systems (classes that can be 'agent'). They are typically grouped based on the fact that they are working collectively in a particular type of process on behalf of someone.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "GroupOfAgents(x) ↔ ObjectAggregate(x) ∧ ∃y(Agent(y) ∧ hasMemberPartAtSomeTime(x, y)) ∧ ∀z (hasMemberPartAtSomeTime(x, z) → Agent(z))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "group (object aggregate) that has one or more agents as members"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'group of agents is defined as exactly an instance of 'object aggregate' that only has 'agent' as 'member parts' and that always has at least one 'agent as its 'member part'",
      label: {"en-us": "group of agents"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000027",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :GroupOfPersons,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000027", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000115",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Person",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            allValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Person",
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000115",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The band, called The Beatles, survived the change in drummer from Pete Best to Ringo Starr"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": {"en-us": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/AgentOntology"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "GroupOfPersons(x) ↔ ObjectAggregate(x) ∧ ∃y(Person(y) ∧ hasMemberPartAtSomeTime(x, y)) ∧ ∀z(hasMemberPartAtSomelTime(x, z) → Person(z))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "group (object aggregate) that has one or more persons as members"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'group of persons' is defined as exactly an instance of 'object aggregate' that 'has member part at some time' some 'person' and 'has member part at some time' only 'person'",
      label: {"en-us": "group of persons"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000027",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Identifier,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "URI of a website; social security number of a person (living in the United States), a global location number assigned to the Amazon regional distribution center at 12300 Bermuda Rd in Henderson, NV; the lot identifier assigned to a batch of rivets just received from China by the Airbus final assembly plant in Toulouse, FR; the VIN number assigned to the Tesla in my garage; a credit card number, the value of a field in a company's internal IT systems system used to uniquely identify a particular product and product revision."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.omg.org/spec/Commons/Identifiers/Identifier",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Identifier can be just one designative ICE or consist of a combination of them. It can also be a combination of other types of information; for example, in a particular domain of discourse, a combination of first name and last name can provide sufficient uniqueness for entities in that domain.\n2. The designative property enforces uniqueness as it is a functional property. In other words, on the instance level, each instance of identifier designates exactly one instance of an entity.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "Identifier(x) → InformationContentEntity(x) ∧ ∃e(Entity(e) ∧ designates(x,e))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that is used to uniquely identify an entity within a particular context"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely patterns to connect context to the identifier are still missing",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'identifier' then x is an 'information content entity' that 'designates' some 'entity'",
      label: {"en-us": "identifier"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/designates",
          someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000001",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :InformationContentEntity,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the content of an email; the content of a document; the content in a CAD file; an algorithm for solving the quadratic equation; a guide or standard for writing and formatting conference papers."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/abbreviation": "ICE",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "Information Artifact Ontology, http://purl.obolibrary.org/obo/IAO_0000030 and also the Common Core Ontology, http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Information content entity is intended to be a class of entities whose instances represent some distinct content or pattern independent from the various ways of conveying it by physical, electronic, or other means. For example, three instances of information bearers -- a bar chart, a color-coded map, and a written report -- each conveying the GDP of Countries for the year 2010, are each different carriers of the same information content. It is this content that is generically dependent upon its carrier. This treatment of information content entity leads to a principle of subtyping based upon the relationship that ICE's have with the entity they are about rather than attributes such as format, language, measurement scale, or media. The latter are treated here as various qualities of the material entities that have them. \n\n2. Information content entities are typically textual or schematic.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "GenericallyDependentContinuant(x) ∧ ∃e(Entity(e) ∧ isAbout(x,e)) → InformationContentEntity(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "content or a pattern (generically dependent continuant) that is about some entity"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "Information content entities may well \"be about\" entity types for which no instances ever come into existence (e.g., a plan or requirement not implemented or satisfied, a command or directive never obeyed or followed, or an objective never achieved). IOF's current approach to modeling such informational entity types is to provide one or more sufficient conditions that can be readily expressed in OWL.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'generically dependent continuant' that 'is about' some 'entity' then x is an 'information content entity'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "Information"},
      label: {"en-us": "information content entity"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000031",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :LossOfRole,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            intersectionOf: list(term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000199",
              someValuesFrom: term(
                intersectionOf: list(term(
                  "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
                ), term(
                  type: "http://www.w3.org/2002/07/owl#Class",
                  unionOf: list(term(
                    onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isTemporallyOverlappedBy",
                    someValuesFrom: term(
                      intersectionOf: list(term(
                        "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
                      ), term(
                        onProperty: term(
                          inverseOf: "http://purl.obolibrary.org/obo/BFO_0000108"
                        ),
                        someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000023",
                        type: "http://www.w3.org/2002/07/owl#Restriction"
                      )),
                      type: "http://www.w3.org/2002/07/owl#Class"
                    ),
                    type: "http://www.w3.org/2002/07/owl#Restriction"
                  ), term(
                    onProperty: "https://spec.industrialontologies.org/ontology/core/Core/metBy",
                    someValuesFrom: term(
                      intersectionOf: list(term(
                        "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
                      ), term(
                        onProperty: term(
                          inverseOf: "http://purl.obolibrary.org/obo/BFO_0000108"
                        ),
                        someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000023",
                        type: "http://www.w3.org/2002/07/owl#Restriction"
                      )),
                      type: "http://www.w3.org/2002/07/owl#Class"
                    ),
                    type: "http://www.w3.org/2002/07/owl#Restriction"
                  ), term(
                    onProperty: "https://spec.industrialontologies.org/ontology/core/Core/temporallyFinishes",
                    someValuesFrom: term(
                      intersectionOf: list(term(
                        "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
                      ), term(
                        onProperty: term(
                          inverseOf: "http://purl.obolibrary.org/obo/BFO_0000108"
                        ),
                        someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000023",
                        type: "http://www.w3.org/2002/07/owl#Restriction"
                      )),
                      type: "http://www.w3.org/2002/07/owl#Class"
                    ),
                    type: "http://www.w3.org/2002/07/owl#Restriction"
                  ))
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            ), term(
              onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasInput",
              someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000023",
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ), term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000167",
            someValuesFrom: term(
              intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
                "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
                type: "http://www.w3.org/2002/07/owl#Class"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": "the process of losing a student role when a student graduates",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "CCO",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "1. If only one date-time is available for some loss of role processes due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval, for which a loss of role process occurs, uniformly for the entire knowledge base. For example, Bill Clinton lost the role of presidency on 19 December 1998 should be modeled as the process p of type ‘loss of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has first instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 1998-12-19T00:00:00Z."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "LossOfRole(p) ↔ Process(p) ∧ ∃t∃t1∃r∃y(TemporalInterval(t) ∧ TemporalInterval(t1) ∧ Role(r) ∧ (IndependentContinuant(y) ∧ ¬SpatialRegion(y)) ∧ occupiesTemporalRegion(p,t) ∧ (isTemporallyOverlappedBy(t,t1) ∨ temporallyFinishes(t,t1) ∨ metBy(t,t1)) ∧ hasInput(p,r) ∧ existsAt(r,t1) ∧ hasRole(y,r) ∧ hasParticipantAtAllTimes(p,y) ∧ ∀t2(TemporalRegion(t2) ∧ existsAt(r,t2) → (occurrentPartOf(t2,t1) ∨ t2 = t1)))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "process in which someone or something (independent continuant that is not a spatial region) ceases to be the bearer of a role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of ‘loss of role’ is defined exactly as an instance of a ‘process’ p that 'occupies temporal region' some 'temporal interval' t that ‘temporally finishes’ or 'is temporally overlapped by’ or is 'met by' some 'temporal interval' t1 and p ‘has participant at all times’ some 'independent continuant' that is not a 'spatial region' y, and p ‘has input’ some ‘role’ r that only ‘exists at’ t1 and y 'has role' r",
      label: {"en-us": "loss of role"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000015",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaintainableMaterialItem,
      equivalentClass: term(
          intersectionOf: list(term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/EngineeredSystem", "https://spec.industrialontologies.org/ontology/core/Core/MaterialArtifact")
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaintainableMaterialItemRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "CNC machine on which routine maintenance is performed"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "See the expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "MaintainableMaterialItem(x) ↔ (MaterialArtifact(x) ∨ EngineeredSystem(x)) ∧ ∃r (MaintainableMaterialItemRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "material artifact or engineered system which has the maintainable material item role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'maintainable material item' is defined as exactly an instance of 'material artifact' or an 'engineered system' which 'has role' some 'maintainable material item role'",
      label: {"en-us": "maintainable material item"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaintainableMaterialItemRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a CNC machine has the maintainable material item role when it is undergoing repair after a failure"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://ceur-ws.org/Vol-2900/WS5Paper2.pdf",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "MaintainableMaterialItemRole(x) → Role(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "role played by an asset (engineered system or material artifact) when there is a maintenance strategy prescribing its maintenance process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for 'maintenance strategy' and 'maintenance process' need to be formalized.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'maintainable material item' then x is a 'role'",
      label: {"en-us": "maintainable material item role"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000023",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Manufacturer,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ManufacturerRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "MiliporeSigma is a manufacturer of single-use bioreactors; Boeing is a manufacturer of airplanes; dell is a manufacturer of lap-tops"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "See the expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "Manufacturer(x) ↔ Organization(x) ∧ ∃r(ManufacturerRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "organization which has a manufacturer role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'manufacturer' is defined as exactly an instance of 'organization' that 'has role' some 'manufacturer role'",
      label: {"en-us": "manufacturer"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ManufacturerRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "MiliporeSigma has a manufacturer role when it produces single-use bioreactors; Boeing has a manufacturer role when it produces airplanes; Dell has a manufacturer role when it produces lap-tops"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "bizfluent.com",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "ManufacturerRole(x) → Role(x) ∧ ∃y∃p(Organization(y) ∧ ProductProductionProcess(p) ∧ participatesInAtSomeTime(y,p) ∧ roleOf(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "agent role held by an organization when it produces material products"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for linking the manufacturer to a product it produces are still lacking.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'manufacturer role' x then x is an 'agent role' that is the 'role of' some 'organization' when it 'participates in at some time' some 'product production process'",
      label: {"en-us": "manufacturer role"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/AgentRole", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: term(
            intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000056",
              someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ProductProductionProcess",
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ManufacturingProcess,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Drilling a hole on an engine block; manufacturing operation for making a shaft consisting of milling, turning, and drilling manufacturing processes; assembly process, and quality control process; a manufacturing process that uses 3D printing to create the output material entity."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "ISO 15531-1 and ISO 15531-43:2006(en)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "statistical process control and preventative maintenance management processes that maximize machine availability and the product quality of manufactured products.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. This definition presupposes that the outputs of a manufacturing process are in every case material artifacts or man-made substances. \n\n2. Processes that have as their primary output, something immaterial or informational in nature (digital outputs), such as found in the production of software, will be considered speparately at a later stage.\n \n3.. There are other processes that while they may come into direct contact with a manufactured component or substance and are often considered part of the overall set of activities planned and executed to manufacture something, they are not \"transformative\" in nature relative to that which is manufactured, and are specifically excluded the definition. Examples include setup, tear down, transporting components or materials between locations, inspection, and so forth.\nThis is addressed by output in the axiom. Setup => does not have output. Tear down like disassembly should still be considered transformative.\n\n4. This definition places no additional restrictions on the output of a manufacturing process in terms of being in a state of completion (completed component or finished good).",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "ManufacturingProcess(x) → PlannedProcess(x) ∧ ∃m∃y∃p∃z(MaterialEntity(m) ∧ (MaterialArtifact(y) ∨ ∃d(MaterialEntity(y) ∧ DesignSpecification(d) ∧ prescribes(d,y))) ∧ PlanSpecification(p) ∧ prescribes(p,x) ∧ Agent(z) ∧ isCarrierOfAtSomeTime(z,p) ∧ participatesInAtSomeTime(z,x) ∧ isInputOf(m,x) ∧ hasSpecifiedOutput(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "planned process that consists of a structured set of operations through which input material is transformed or modified"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for 'being transformed or modified' need to be formalized",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'manufacturing process' x then x is a 'planned process' that 'has input' some 'material entity' and 'has specified output' some 'material artifact' or a 'material entity' that is 'prescribes by' some 'design specification' and x 'has participant at some time' some 'agent' that is the 'carrier of at some time' a 'plan specification' that 'prescribes' x",
      label: {"en-us": "manufacturing process"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess", term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: term(
            intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Agent", term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000101",
              someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/PlanSpecification",
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasInput",
          someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000040",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasSpecifiedOutput",
          someValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/MaterialArtifact", term(
              intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
                onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribedBy",
                someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/DesignSpecification",
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ))
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialArtifact,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000030", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000196",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/DesignedFunction",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a machine, a screwdriver, a screw, a sheet of paper"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/ArtifactOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "MaterialArtifact(x) ↔ Object(x) ∧ ∃f(DesignedFunction(f) ∧ bearerOf(x,f))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "object that is deliberately created to have a certain function"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'material artifact' is defined as exactly an instance of 'object' that is the 'bearer of' some 'designed function'",
      label: {"en-us": "material artifact"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000030",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialComponent,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialComponentRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "portion of water; portion of crude oil; sea shells; bolt; transmission assembly;engine in an airplane"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "Braking subsystem -- systems and subsystems are object aggregates and often have fiat boundaries, in which case they may be incorrectly inferred as product components. Othertimes, they are systems with bonafide boundaries and should be inferred as a product component.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Assemblies that are components for one manufacturer may be final products for another (e.g., the selling of diesel engines is a primary product line of Cummins diesel engine yet a component assembly for its customers, Freightliner Trucks). In other words, the context in which a material entity is used must be considered to determine whether it bears the component role.\n\n2. In most manufacturing use cases, material components will be a subclass of 'material artifact'.\n\n3. See the expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "MaterialComponent(x) ↔ MaterialEntity(x) ∧ ∃r(MaterialComponentRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "material entity which has the material component role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'material component' is defined as exactly an instance of 'material entity' that 'has role' some 'material component role'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "part"},
      label: {"en-us": "material component"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialComponentRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "an engine has the component role when it is a part of a car; a tool when it is planned to be mounted on a CNC machine"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "APICS",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "MaterialComponentRole(x) → Role(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "role held by a material entity when it is a proper part of another material entity or is planned to be a proper part of another material entity"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for 'planned to be a part' need to be formalized. Also, the realization of the material component role needs to be analyzed further.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "If x is a 'material component role' then x is a 'role'",
      label: {"en-us": "material component role"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000023", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000040",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialLocationChangeProcess,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Shipping goods from a warehouse to a customer; moving a tool from one location (work center) to another within the factory; transporting finished goods from one warehouse to another; pumping portions of crude oil through a pipeline; transferring a load of apples from a bin to a container; picking an apple; transporting passengers on a bus;"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/EventOntology and https://www.merriam-webster.com/dictionary/motion",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "A specific type of material handling: E.g., changing only the orientation of the object within the same site (this does not change the site from t to t'); throwing waste into a garbage bin; removing a wing nut from a fixture in preparation for inserting a workpiece into the fixture.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Material transfer process includes both the internal (e.g., inside a factory) and external (e.g., between factories) movement of an object\n\n2. BFO:Site is the synonym for physical location which is why Site is used in the axioms",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "MaterialLocationChangeProcess(​x​) → PlannedProcess(​x)​ ∧ ​∃​y∃​​t∃​​t​1∃​​t2∃​s∃​s1∃​z∃​z1(MaterialEntity(​y​) ∧ TemporalInstant(t) ∧ TemporalInstant(t1) ∧ TemporalRegion(t2) ∧ IndependentContinuant(s) ∧ IndependentContinuant(s1) ∧ Site(z) ∧ Site(z1) ∧ hasParticipantAtSomeTime(x,y)\n∧ firstInstantOf(​t​, ​t2) ∧ lastInstantOf(​t1​, ​t2​) ∧ occupiesTemporalRegion(​x,​t2)​ ∧ existsAt(s,t) ∧ existsAt(s1,t1) ∧ locatedInAtalltimes(s,z) ∧ locatedInAtAlltimes(s1,z1) ∧ locationOfAtAlltimes(s,y) ∧ locationOfAtAllTimes(s1,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "planned process that results in a material entity moving from one physical location to another"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "Patterns for adequate reification of the n-ary pattern that is change of location need further refinement and testing.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'material location change process' then x is a 'planned process' in which a 'material entity' is moved from one 'site' to another.",
      label: {"en-us": "material location change process"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess", term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
              onProperty: term(
                inverseOf: "http://purl.obolibrary.org/obo/BFO_0000170"
              ),
              someValuesFrom: term(
                intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
                  onProperty: "http://purl.obolibrary.org/obo/BFO_0000082",
                  someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000029",
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                ), term(
                  onProperty: "http://purl.obolibrary.org/obo/BFO_0000108",
                  someValuesFrom: term(
                    intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000203", term(
                      intersectionOf: list(term(
                        onProperty: "http://purl.obolibrary.org/obo/BFO_0000221",
                        someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000008",
                        type: "http://www.w3.org/2002/07/owl#Restriction"
                      ), term(
                        onProperty: term(
                          inverseOf: "http://purl.obolibrary.org/obo/BFO_0000199"
                        ),
                        someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess",
                        type: "http://www.w3.org/2002/07/owl#Restriction"
                      )),
                      type: "http://www.w3.org/2002/07/owl#Class"
                    )),
                    type: "http://www.w3.org/2002/07/owl#Class"
                  ),
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            ), term(
              onProperty: term(
                inverseOf: "http://purl.obolibrary.org/obo/BFO_0000170"
              ),
              someValuesFrom: term(
                intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
                  onProperty: "http://purl.obolibrary.org/obo/BFO_0000082",
                  someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000029",
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                ), term(
                  onProperty: "http://purl.obolibrary.org/obo/BFO_0000108",
                  someValuesFrom: term(
                    intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000203", term(
                      onProperty: "http://purl.obolibrary.org/obo/BFO_0000223",
                      someValuesFrom: term(
                        intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000008", term(
                          onProperty: term(
                            inverseOf: "http://purl.obolibrary.org/obo/BFO_0000199"
                          ),
                          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess",
                          type: "http://www.w3.org/2002/07/owl#Restriction"
                        )),
                        type: "http://www.w3.org/2002/07/owl#Class"
                      ),
                      type: "http://www.w3.org/2002/07/owl#Restriction"
                    )),
                    type: "http://www.w3.org/2002/07/owl#Class"
                  ),
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialProduct,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialProductRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "1. Natural resources: the seashells lying on the beach that some person collects, packages and sells; the iron ore in a mountain the rights to which some mining company has just purchased which they intend to mine and sell to iron-making processors;\n\n2. Any manufactured good when it is offered for sale, supplied or being bought"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "certified pre-owned warranty plan; software as a service (SaaS); training course; consultancy services;\nOffice 365",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The definition does exclude services sold as product which deviates from some standard definitions and economic theory. \nServices as products as well as software products will be considered in the next version of the IOF Core\n\n2. See expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "MaterialProduct(x) ↔ MaterialEntity(x) ∧ ∃r(MaterialProductRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "material entity which has the material product role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'material product' is defined as exactly an instance of 'material entity' that is the 'has role' some 'material product role'",
      label: {"en-us": "material product"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialProductRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a manufactured good has a material product role when a manufacturer offers it for sale; a drug product has a material product role when it is bought by a customer in a pharmacy; sea shells have a material product role when they are collected, packaged and offered for sale;"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "Oxford Languages, term by the name ‘product’; also Wikipedia, term by the name ‘goods’ (as used in economics) and in particular, tangible goods",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "MaterialProductRole(x) → Role(x) ∧ ∃y∃z((BuyingBusinessProcess(y) ∨ OfferingForSaleBusinessProcess(y) ∨ SupplyingBusinessProcess(y)) ∧ MaterialEntity(z) ∧ participatesInAtSomeTime(z,y) ∧ roleOf(x,z))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "role held by a material entity that is intended to be sold, or has been bought, or has been supplied"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for economic transactions and ownership are lacking",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'material product role' x then x is a 'role' that is the 'role of' some 'material entity' when it 'participates in at some time' some 'buying business process' or 'offering for sale business process' or 'supplying business process'",
      label: {"en-us": "material product role"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000023", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000056",
              someValuesFrom: term(
                type: "http://www.w3.org/2002/07/owl#Class",
                unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/BuyingBusinessProcess", "https://spec.industrialontologies.org/ontology/core/Core/SellingBusinessProcess", "https://spec.industrialontologies.org/ontology/core/Core/SupplyingBusinessProcess")
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialResource,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialResourceRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "factory available to be used for producing a product; a body of water available to cool a reactor; money available to a person to buy an item; a portion of raw material available to produce a good or service"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "(ambiguous/undesirable): a portion of water on my factory floor that formed after a recent rainshower.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. This defined class is designed to group material entities according to a very broad criterion and is not intended to be used as a parent class for resource types that can be more specifically asserted under another class.\n\n2. Skills and capabilities or other entities in the SDC branch are not resources but they can be considered resources indirectly through their bearer\n\n3. See expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "MaterialResource(x) ↔ MaterialEntity(x) ∧ ∃r(MaterialResourceRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "material entity which has the material resource role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'material resource' is defined as exactly an instance of 'material entity' that 'has role' some 'material resource role'",
      label: {"en-us": "material resource"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialResourceRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "factory has a material resource role when it is available to be used for producing a product; a body of water has a material resource role when it is available to cool a reactor; money has a material resource role when it is available to a person to buy an item; a portion of raw material has a material resource role when it is available to produce a good or service"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": {"en-us": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/ArtifactOntology"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "MaterialResourceRole(x) → Role(x) ∧ ∃a∃y((Person(a) ∨ GroupOfAgents(a) ∨ EngineeredSystem(y)) ∧ MaterialEntity(y) ∧ isAvailableToAtSomeTime(y,a) ∧ roleOf(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "role played by a material entity that consists in it being available to a person or group of agents or engineered system"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "This term is expected to remain primitive. While 'is available to at some time' captures the essence of being a material resource, the realization of the material resource role is expected to have too generic of a scope to define a sufficient condition that would not cause conflict (overlap) with the realization of other roles.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'material resource role' x then x is a 'role' that is the 'role of' some 'material entity' when it 'is available to at some time' some 'person' or 'group of agents' or 'engineered system'",
      label: {"en-us": "material resource role"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000023", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
              onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isAvailableToAtSomeTime",
              someValuesFrom: term(
                type: "http://www.w3.org/2002/07/owl#Class",
                unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/EngineeredSystem", "https://spec.industrialontologies.org/ontology/core/Core/GroupOfAgents", "https://spec.industrialontologies.org/ontology/core/Core/Person")
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialState,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the lightswitch in the off state from 9 PM to 8 AM; the machine in fail state from 4 PM to 5 PM; perfusion bioreactor was run in steady state for two days, a truck is in a stop state because its position has been unchanged"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "Oxford Languages, term by the name ‘state’",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Although the notion of \"particular condition\"; has not been introduced in this release, the IOF's approach will be to model this as a dependent entity such that at any timeframe during which it exists, it depends on some material entity -- meaning a material state will necessarily \"be focused on\" a particular condition of some material entity for which the state is ascribed. Condition here would encompass BFO: specifically-dependent continuants (qualities, dispositions and other realizable entities types) as well as site (the absolute or relative location of a material entity). In the future, the coverage will be expanded to include some currently \"missing dependent entity types\"; including orientation, and cases wherein a material entity is in a particular condition because it has or is in particular composition or configuration (e.g. the setup action of a machine and jig is complete and it is not in a setup/ready-for-run state). \n\n2. Unchanging, is intended to encompass not just having a particular condition for the duration of the state, but potentially being value-bound to some constant or even within a given range as prescribed by some design or requirement specification. Specialized sub-types may be introduced to handle such value-based constant and range-bound states and conditions.\n\n3. The term as introduced here is not intended to be used for modeling what we might call the \"state of a process\" (e.g., equilibrium state for chemical, physical and biological processes or steady-state or discrete or continuous production processes), nor for modeling the states of non-real entities (e.g., virtual entities participating in virtual simulation program and any other informational or abstract entities, when they are considered to be in a particular condition). Extensions to the BFO framework as well as further work on 'process characteristic' may be first needed to handle these use cases and such specialized state classes will be introduced in a future release.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "MaterialState(x) → Process(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Provisional",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "process in which a material entity that participates in the process has a condition that remains unchanged"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs to formalize range,limits and constant values over a period of time are still lacking.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'material state' then x is a 'process'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "stasis"},
      label: {"en-us": "material state"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000015",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MeasuredValueExpression,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/ValueExpression", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isMeasuredValueOfAtSomeTime",
            someValuesFrom: term(
              type: "http://www.w3.org/2002/07/owl#Class",
              unionOf: list("http://purl.obolibrary.org/obo/BFO_0000008", "http://purl.obolibrary.org/obo/BFO_0000020", "https://spec.industrialontologies.org/ontology/core/Core/ProcessCharacteristic")
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the value of '20g' that represents the measured weight of a mouse and that is determined on the quantitative scale of mass"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "International Vocabulary of Metrology Fourth edition,2.11",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The values of the measured value expression are generated during the measurement process that produces the measurement information content entity the measured value expression is a part of. The corresponding parthood axiom is captured in the measurement information content entity class and is not reintroduced in the formal definition here to avoid redundancy.\n\n2. Since this class is a subclassOf: value expression, the values contained in the measured value expression are always according to a classification scheme or a quantitative scale.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "MeasuredValueSpecification(x) ↔ ValueExpression(x) ∧ ∃e((TemporalRegion(e) ∨ ProcessCharacteristic(e) ∨ SpecificallyDependentContinuant(e)) \n∧ isMeasuredValueOfAtSomeTime(x,e))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Provisional",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "value expression that contains the measured value of an attribute (specifically dependent continuant or process characteristic or temporal region)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'measured value expression' is defined exactly as an instance of 'information content entity' that 'is measured value of at some time' some 'process characteristic' or 'temporal region' or 'specifically dependent continuant'",
      label: {"en-us": "measured value expression"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MeasurementCapability,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the capability of a pH sensor to measure the pH; capability of a scale to measure the weight of an object"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/OBI_0000453",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "To measure the value means to determine the entities value relative to some classification scheme or on a quantitative scale.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "MeasurementCapability(x) → Capability(x) ∧ ∃z(MaterialEntity(z) ∧ capabilityOf(x,z)) ∧ ∀y(hasRealization(x,y) → MeasurementProcess(y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "capability of a material entity to measure the value of some entity"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs in the ontology to create necessary and sufficient conditions. Namely, 'to measure the value' needs a better formalization in its connection to the capability",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'measurement capability' then x is a 'capability' that is the 'capability of' some 'material entity' and whenever some y 'realizes' x that y must be a 'measurement process'",
      label: {"en-us": "measurement capability"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/Capability", term(
          allValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MeasurementProcess",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000054",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/capabilityOf",
          someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000040",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MeasurementInformationContentEntity,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000110",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MeasuredValueExpression",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/describes",
            someValuesFrom: term(
              type: "http://www.w3.org/2002/07/owl#Class",
              unionOf: list("http://purl.obolibrary.org/obo/BFO_0000008", "http://purl.obolibrary.org/obo/BFO_0000020", "https://spec.industrialontologies.org/ontology/core/Core/ProcessCharacteristic")
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isAbout",
            someValuesFrom: term(
              type: "http://www.w3.org/2002/07/owl#Class",
              unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035", term(
                intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
                  "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
                  type: "http://www.w3.org/2002/07/owl#Class"
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ))
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isOutputOf",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MeasurementProcess",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a two fold increase in expression of a gene in a cancer patient and the associated metadata; results of measuring the thickness of a piece of steel; results of measuring the change in pH in a bioreactor over the interval of two days"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/abbreviation": {"en-us": "measurement ICE"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology and the International Vocabulary of Metrology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "similarity measurement of information",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Attribute here comprehends qualities in case the entity the measurement content entity 'is about' is an independent continuant and process characteristics if the entity is a process or temporal region if the entity is a process or process boundary.\n2. Measurement ICE describes attributes of physical entities. As such, it is not intended to be used for capturing metrics related to strictly digital objects (information content entities in the IOF framework).\n3. Measurement ICE can contain qualitative, semi-quantitative, or quantitative measurements of the attribute. These values are stored within the measured value expression that is a part of the measurement ICE.\n4. Measurement ICE can be utilized for both raw and processed measurement data.\n5. The International Vocabulary of Metrology defines measurement ICE as a \"set of values being attributed to a measurand together with any other available relevant information.\" This implies that, in addition to the actual measurement value, the measurement ICE contains other information(e.g., the entity of interest of which the measurand is the 'attribute of').",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "MeasurementInformationContentEntity(x) ↔ InformationContentEntity(x) ∧ ∃y∃z∃m∃p(((IndependentContinuant(y) ∧ ¬(SpatialRegion(y)) ∧ SpecificallyDependentContinuant(z) ∧ bearerOf(y,z)) ∨ (Process(y) ∨ ProcessBoundary(y) ∧ TemporalRegion(z) ∧ occupiesTemporalRegion(y,z)) ∨ (Process(y) ∧ ProcessCharacteristic(z) ∧ processCharacteristicOf(z,y))) ∧ MeasuredValueExpression(m) ∧ MeasurementProcess(p) ∧ isAbout(x,y) ∧ describes(x,z) ∧ hasContinuantPartAtAllTimes(x,m) ∧ isMeasuredValueOf(m,y) ∧ isOutputOf(x,p))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "informational content that is the result of measuring a set of attributes (specifically dependent continuant or process characteristic or temporal region) belonging to the entity (independent continuant or process or process boundary) the informational content is about"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'measurement information content entity is defined as exactly an instance of 'information content entity' that is 'output of' some 'measurement process' that 'describes' some 'specifically dependent continuant' or 'temporal region' or 'process characteristic' y that are an attribute of ('inhere in' or 'process characteristic of' or temporally occupied by) a 'process' or 'process boundary' or 'independent continuant'(that is not a 'spatial region') the 'measurement information content entity' 'is about' and that 'has continuant part at all times' some 'measured value expression' that 'is measured value of' y",
      label: {"en-us": "measurement information content entity"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MeasurementProcess,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "measuring the pH of a buffer by a pH probe; measuring of a weight of a bulk of a substance by an industrial scale; measuring the rate of an enzymatic reaction by a spectrophotometer; measuring the time it takes to produce a unit of a product"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "ISO 9000:2015(en), 3.11.5",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Determining the value here is to be interpreted in the context of qualitative, semi-quantitative, and quantitative measurements. As such, it comprehends both categorical and numerical measurements.\n2. Typically, the results of measurements are recorded and stored as a measurement information content entity.\n3. Measurement processes can have as temporal or occurrent parts other measurement processes as well data transformation processes which transform the raw measurement data.\n4. The entity whose attribute is measured might either participate in the process if it is a continuant or occupy a temporal interval that precedes or partially coincides with the measurement process if it is an occurrent.\n5. The material entity measuring the attribute must be capable of measuring that attribute. This is axiomatically captured by mandating that the material entity that is measuring the attribute must have a measurement capability.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "MeasurementProcess ↔ PlannedProcess(x) ∧ ∃m∃y∃z∃c(MaterialEntity(m) ∧ MeasurementCapability(c) ∧ hasCapability(m,c) ∧ (((IndependentContinuant(y) ∧ ¬(SpatialRegion(y))) ∧ SpecificallyDependentContinuant(z) ∧ bearerOf(y,z) ∧ participatesInAtSomeTime(y,x)) ∨ (Process(y) ∨ ProcessBoundary(y) ∧ TemporalRegion(z) ∧ occupiesTemporalRegion(y,z) ∧ ∃t(temporalRegion(t) ∧ occupiesTemporalRegion(x,t) ∧ (occurrentPartOf(t,z) ∨ hasOccurrentPart(t,z)))) ∨ (Process(y) ∧ ProcessCharacteristic(z) ∧ processCharacteristicOf(z,y) ∧ (preceedes(y,x) ∨ ∃t1∃t2(temporalRegion(t1) ∧ temporalRegion(t2) ∧ occupiesTemporalRegion(x,t1) ∧ occupiesTemporalRegion(y,t2) ∧ (occurrentPartOf(t1,t2) ∨ hasOccurrentPart(t1,t2)))))) ∧ measuresAtSomeTime(m,z)) ∧ ∀b(hasSpecifiedOutput(x,b) → MeasurementInformationContentEntity(b))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "planned process to determine the value of an attribute (specifically dependent continuant or temporal region or process characteristic) of an entity of interest"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, n-ary constructs that are able to adequately capture the relation between the process, attribute and the entity of interest are still lacking. Also formalization of being an entity of interest is lacking.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'measurement process' then x is a 'planned process' that 'has participant at some time' some 'material entity' y that 'has measurement capability' and y 'measures at some time' either \n1) 'process characteristic' that is 'process characteristic of' a 'process' that 'preceedes' or (partially or fully) temporally coincides with x) or\n2)'specifically dependent continuant' that 'inheres in' an 'independent continuant' (that is not a 'spatial region') which 'participates in at some time' x or\n3) 'temporal region' that is temporally occupied by some 'process' or 'process boundary' and that 'has occurrent part' or 'occurent part of' a 'temporal region' temporally occupied by x\nand whenever x 'has specified output' b that b must be a 'measurement information content entity'",
      label: {"en-us": "measurement process"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess", term(
          allValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MeasurementInformationContentEntity",
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasSpecifiedOutput",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: term(
            intersectionOf: list(term(
              intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
                onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasCapability",
                someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MeasurementCapability",
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ), term(
              onProperty: "https://spec.industrialontologies.org/ontology/core/Core/measuresAtSomeTime",
              someValuesFrom: term(
                type: "http://www.w3.org/2002/07/owl#Class",
                unionOf: list("http://purl.obolibrary.org/obo/BFO_0000008", "http://purl.obolibrary.org/obo/BFO_0000020", "https://spec.industrialontologies.org/ontology/core/Core/ProcessCharacteristic")
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ObjectiveSpecification,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The objective specification in a manufacturer's six-sigma process improvement program will describe in some detail, the quality improvements to be achieved (as in e.g. the level of reduction in causes of defects, or in the level variability in either or both manufacturing and business processes)."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.obofoundry.org/ontology/iao.html",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1.Typically is part of a plan specification.\n\t\t2.The NL definition states that the objective specification 'prescribes' the outcome of a 'process'. This does not necessarily imply that a given process exists as an instance during the entire 'objective specification' lifecycle. Instead, it should be interpreted as \"if an instance of the  Process X (X here is intended to represent an OWL:Class that is SubClassOf: Process) exists, then its outcome should be as 'prescribed by' the 'objective specification'.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "InformationContentEntity(x) ∧ ∃y∃p(Process(p) ∧ isAchievedByAtSomeTime(x,p) ∧ ((ProcessCharacteristic(y) ∧ processCharacteristicOf(y,p))∨ (Capability(y) ∧ hasRealization(x,y)) ∨ (Continuant(c) ∧ isOutputOf(c,p))) ∧ prescribes(x,y)) → ObjectiveSpecification(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that prescribes what the outcome of some process should be"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "See the general discussion and rationale provided for informational entities under 'information content entity'.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'information content entity' that 'is achieved by at some time' some 'process' p and that 'prescribes' some 'process characteristic' which is a 'process characteristic of' p or 'capability' that 'has realization' p or 'continuant' c that is 'output of' p then x is an 'objective specification'",
      label: {"en-us": "objective specification"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Organization,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/OrganizedGroupOfAgents", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000172",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Person",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/designatedBy",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/OrganizationIdentifier",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "goverment, a company, a political party, a city goverment, yakuza, department, division"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://spec.edmcouncil.org/fibo/ontology/FND/Organizations/Organizations/Organization",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "1. An organization may have a set of organizational rules that, among other things, prescribe a set of roles and responsibilities its members bear, how important decisions are made, and how members should behave when acting on behalf of the organization.\n2. As introduced here, the mere gathering of a group of persons does not imply the existence of an organization, unless and until such members agree to form an organization and have agreed to a common set of objectives as mentioned in point 1."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "Organization(x) → ∀y(hasMemberPartAtSomeTime(x,y) → (Person(y) ∨ Organization(y))) ∧ ∀z(hasProperContinuantPartAtSomeTime(x,z) → Organization(z))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "Organization(x) ↔ OrganizedGroupOfAgents(x) ∧ ∃p∃i(Person(p) ∧OrganizationIdentifier(i) ∧ designatedBy(x,i) ∧ hasMemberPartAtAllTimes(x,p))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "group of persons that identifies itself by some name and pursues a common set of plans and objectives"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'organization' then whenever x 'has member part at some time' y that y must be a 'peson' or 'organization' and whenever x 'has proper continuant part at some time' z that z must be a 'organization'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'organization' is defined exactly as an instance of 'organized group of agents' that is 'designated by' some 'organization identifier' and that 'has member part at all times' one or more 'person'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/usageNote": "Members of organizations are people or other organizations. However, an organization may be composed of several sub-organizations (e.g., departments). This composition should be modeled through 'proper continuant part' relations.",
      label: {"en-us": "organization"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/OrganizedGroupOfAgents", term(
          allValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Organization",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000174",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", "https://spec.industrialontologies.org/ontology/core/Core/Person")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000115",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :OrganizationIdentifier,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Identifier", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/designates",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Organization",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "DUNS Number, CAGE Code, EIN, FIIN, BICID, DODAACID, SCACID"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Organization identifier used here is intended to uniquely identify a particular organization within a region, country, or globally. A government body usually issues one such identifier in the region or country where the business operates (a.k.a. legal entity identifier). Other such identifiers may be assigned by well-known business organizations operating in a locale, a region, or a country -- an example being Dun and Bradstreet for businesses operating in the United States. Moreover, others may still be assigned by international trade organizations for multi-national organizations. In all cases, these unique identifiers facilitate regional or international trade and commerce between such \"legal entities.\" \n\n2. As introduced here, the term serves to identify other organizational types, including government entities, who are often parties in trade or commerce or have a vested interest in controlling it. In the future, the IOF will introduce and adopt a mid-level ontology for legal entities and relations.\n\n3. The identifier of an organization may be the name of an organization or an alias and may only be unique in a particular jurisdiction (locale, region) and may not be unique on a wider scale - namely at the country level or globally.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "OrganizationIdentifier(x) ↔ Identifier(x) ∧ ∃b(Organization(b) ∧ designates(x,b))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "identifier that identifies an organization"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of ‘organization identifier’ is defined as exactly an instance of ‘identifier' that 'designates' an 'organization'",
      label: {"en-us": "organization identifier"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Identifier",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :OrganizedGroupOfAgents,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/GroupOfAgents", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000196",
            someValuesFrom: term(
              intersectionOf: list(term(
                subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Capability"
              ), term(
                onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribedBy",
                someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/DirectiveInformationContentEntity",
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "goverment, division, an automated manufacturing cell"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/AgentOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "OrganizedGroupOfAgents(x) ↔ ObjectAggregate(x) ∧ ∃i∃f(DirectiveInformationContentEntity(i) ∧ Function(f) ∧ bearerOf(x, f) ∧ prescribes(i, f))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "group of agents that is pursuing a common set of plans and objectives"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'organized group of agents' is defined as exactly an instance of 'group of agents' that is the 'bearer of' some 'function' which is 'prescribed by' some 'directive information content entity'",
      label: {"en-us": "organized group of agents"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/GroupOfAgents",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Person,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "any individual human being"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/MF_0000016",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "Person(x) → Object(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "organism that is the member of the species of homo sapiens"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "This term is expected to remain primitive. While the IOF might introduce a term for 'organism' in the future, speciation is out of the scope of IOF and should be utilized if needed from a biological ontology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'person' then x is an 'object'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "human being"},
      label: {"en-us": "person"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000030",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PhysicalLocationIdentifier,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Identifier", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/designates",
            someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000029",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "postal address, GPS coordinate, GS1 global location number (GLN) for physical and digital location, 42.8864° N, 78.8784° W, London, the factory floor"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Physical location is a synonym for BFO:Site and hence the usage of BFO:Site within the axioms should be interpreted as physical location\n\n2. As introduced here, the IOF ontology is only dealing with physical locations. Identifiers for other kinds of location designators (e.g., virtual locations) will be considered in a future version.\n \n3. More classes need to be introduced to represent coordinates in 3D space. For this, the OGC specification may be utilized:\nhttp://docs.opengeospatial.org/is/18-010r7/18-010r7.html#106",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "PhysicalLocationIdentifier(x) ↔ Identifier(x) ∧ ∃l(Site(l) ∧ designates(x,l))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "identifier that identifies a physical location (site)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": {"en-us": "every instance of 'physical location identifier' is defined as exactly an instance of 'identifier' that 'designates' a 'site'"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "site identifier, site designator"},
      label: {"en-us": "physical location identifier"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Identifier",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PieceOfEquipment,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/MaterialArtifact", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/EquipmentRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "wrench when it is used in the maintenance process of a car; chromatography column that is planned to be used in a protein purification process; r truck that is used to transport goods to the buyer; single-use bioreactor when it is planned to be used in the upstream phase of a biomanufacturing process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "buffer designed to keep pH in a bioreactor constant",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "See the expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience. Therefore, specific kinds of equipment such as machines, devices, and tools should be asserted under 'material artifact' and not directly under 'piece of equipment'.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "PieceOfEquipment(x) ↔ MaterialArtifact(x) ∧ ∃r(EquipmentRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "material artifact which has an equipment role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'piece of equipment' is defined as exactly an instance of 'material artifact' that 'has role' some 'equipment role'",
      label: {"en-us": "piece of equipment"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/MaterialArtifact",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PlanSpecification,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a manufacturer's sales plan; process plan for producing a part; a schedule for routine maintenance and inspection of a machine; a work order to build 100 of a particular kind component for today."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/IAO_0000104",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "When concretized, plan specification may be realized in a process where participants take the prescribed actions to achieve the prescribed process objectives. In other words, a plan specification is concretized in a 'planned process' that it 'prescribes'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "InformationContentEntity(x) ∧ ∃a∃o∃p(ActionSpecification(a) ∧ ObjectiveSpecification(o) ∧ PlannedProcess(p) ∧ continuantPartOfAtAllTimes(a,x) ∧ continuantPartOfAtAllTimes(o,x) ∧ prescribes(x,p)) → PlanSpecification(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that has action specifications and objective specifications as parts"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "See the general discussion and rationale provided for informational entities under 'information content entity'.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'information content entity' that 'prescribes' some 'planned process' and x 'has continuant part at all times' some 'action specification' and some 'objective specification' then x is a 'plan specification'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "work instruction"},
      label: {"en-us": "plan specification"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000110",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ActionSpecification",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000110",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ObjectiveSpecification",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PlannedProcess,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/prescribedBy",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/PlanSpecification",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "A tire manufacturing process occurs as prescribed by a manufacturing plan specification."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/OBI_0000011",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "unexpected failure events; unexpected malfunctioning of a machine; safety occurrence (that lacks explicit plan specifications);",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. 'Planned' is here functioning as a specifier, rather than as a modifier analogous to 'cancelled' or 'averted'. Therefore, to say that a process is planned is not to say that it has not yet taken place. Rather, it is to say that it is (was or will have been) protocol-driven, instruction-driven, command-driven, or software-driven, or in some combination thereof.\n\t\t\t\t \n2. 'Planned' means 'protocol driven'. Protocols may be written, spoken, or simply thought – as when upon waking up, we plan, for instance, what to eat for breakfast.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "PlannedProcess(x) ↔ Process(x) ∧ ∃s(PlanSpecification(s) ∧ prescribes(s,x))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "process that is prescribed by a plan specification"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'planned process' is defined as exactly an instance of 'process' that is 'prescribed by' some 'plan specification'",
      label: {"en-us": "planned process"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000015",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ProcessCharacteristic,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the rate of production of a product production process, heart rate, the rate of temperature change resulting from a heating process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "Here ‘attribute’ is not a technical term.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "ProcessCharacteristic(x) → Occurrent(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "attribute of a process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "This term is expected to remain primitive as it is highly unlikely that a a set of conditions will be created such that no circularity is introduced.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'process characteristic' then x is an 'occurrent'",
      label: {"en-us": "process characteristic"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000003",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ProcuringBusinessProcess,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/BusinessProcess", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000117",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/BuyingBusinessProcess",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000117",
            someValuesFrom: term(
              type: "http://www.w3.org/2002/07/owl#Class",
              unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/SellingBusinessProcess", "https://spec.industrialontologies.org/ontology/core/Core/SupplyingBusinessProcess")
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "AstraZeneca buying and being supplied with a bulk of raw materials from MiliPoreSigma; buying and being supplied with a shipment of office supplies"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "ISO 6707-2:2017, 3.5.18",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The procurement process considers the whole cycle from identification of needs through to the end of a services contract or the end of the life of goods, including disposal.\n\n2. Sourcing is a part of the procurement process that includes planning, defining specifications (3.26) and selecting suppliers. [Source: ISO 20400:2017]\n\n3. It should be noted that we consciously exclude the person-to-person transactions, but person-to-business is not excluded.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "ProcuringBusinessProcess(x) ↔ BusinessProcess(x) ∧ ∃b∃s(BuyingBusinessProcess(b) ∧ SupplyingBusinessProcess(s) ∧ hasOccurrentPart(x,b) ∧ hasOccurrentPart(x,s))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "business process that consists of buying and ensuring the supply of products or services"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'procuring business process' is defined as exactly an instance of 'business process' that has some 'buying business process' and 'supplying business process' as 'occurent parts'",
      label: {"en-us": "procuring business process"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/BusinessProcess",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ProductProductionProcess,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/BusinessProcess", term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000117",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ManufacturingProcess",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000199",
            someValuesFrom: term(
              intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000008", term(
                onProperty: "https://spec.industrialontologies.org/ontology/core/Core/temporallyOverlaps",
                someValuesFrom: term(
                  onProperty: term(
                    inverseOf: "http://purl.obolibrary.org/obo/BFO_0000108"
                  ),
                  someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialProduct",
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                ),
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasSpecifiedOutput",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialProduct",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Making of an engine block as a product that consists of many processes such as manufacturing process, assembly process, inspection process etc."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Manufacturing and ISO 23952:2020(en)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "1.Providing a service that does not deliver any tangible good\n2.Acquiring unprocessed raw material (e.g., roll of aluminum) with intention to sell them or reselling. The Product existed before the initiation of the planned process.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. A product production process is distinct from a maintenance process in that, in the latter case, the product exists both before and after the process occurs.\n\n2. A product production process has several planned processes as parts (sub-processes), including at least one manufacturing or assembly process, and optionally, may include other planned process types such as inspection, packaging, rework, and material handling.\n\n3. Note that the various parts of a product production process, for example, inspection, and testing, cannot be a product production process alone.\n\n4. Some manufacturing processes will also be product production processes.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "ProductProductionProcess(x) ↔ BusinessProcess(x) ∧ ∃m(ManufacturingProcess(m) ∧ occurentPartOf(m,x)) ∧ ∃y∃t∃t1(MaterialProduct(y) ∧ TemporalRegion(t) ∧ TemporalRegion(t1) ∧ hasSpecifiedOutput(x, y) ∧ occupiesTemporalRegion(x, t) ∧ temporallyOverlaps(t, t1) ∧ existsAt(y, t1))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "business process that consists of at least one manufacturing process through which raw materials and components are transformed or modified to create a material product"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'product production process' is defined as exactly an instance of 'business process' that 'has occurrent part', some 'manufacturing process', and 'has specified output' some 'material product' which did not 'exist at' the beginning of the 'product production process'",
      label: {"en-us": "product production process"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/BusinessProcess",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RawMaterial,
      equivalentClass: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/RawMaterialRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "rolls of aluminum a manufacturer purchases to be consumed on its bottling lines to produce aluminum cans to package its product, crude oil that is converted into gasoline in a refining process; wheels an automobile manufacturer purchases to assemble into a car"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "oil used to power the refining process",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "This class is very general and it is intended to be used for grouping inputs to the product production process external to the bussiness organization. But, things like material artifacts should not be asserted as subclasses of this class",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "RawMaterial(x) ↔ MaterialEntity(x) ∧ ∃r(RawMaterialRole(x) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "material entity which has the raw material role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'raw material' is defined as exactly an instance of 'material entity' that 'has role' some 'raw material role'",
      label: {"en-us": "raw material"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RawMaterialRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "rolls of aluminum a manufacturer purchases to be consumed to produce aluminum cans"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "ISO 17889-1:2021(en) and https://www.merriam-webster.com/dictionary/raw%20material",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "production intermediary going from one production cell to another; reagent that is used in a quality testing process of the product or any intermediary",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. IOF considers raw materials only material entities that are acquired from a different organizational unit. However, that organizational unit can be within the same manufacturing enterprise (e.g., exchange of goods between divisions).\n2. Raw materials are incorporated during the product production process into the final product. In other words, 'raw materials' exclude consumables from non-manufacturing processes that are a part of product production (e.g., maintenance or quality control) or consumables that are not incorporated into the product (e.g., single-use equipment).",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "RawMaterialRole(x) → Role(x) ∧ ∃y∃m∃z∃b(BuyingBusinessProcess(y) ∧ Organization(m) ∧ MaterialEntity(z) ∧ BuyerRole(b) ∧ roleOf(b,m) ∧ roleOf(x,z) ∧ hasParticipantAtSomeTime(y,m) ∧ hasParticipantAtSomeTime(y,z)) ∧ ∀y1(hasRealization(x,y1) → (ProductProductionProcess(y1) ∨ ManufacturingProcess(y1)))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "role held by a material entity when it is acquired by an organizational entity with some plan to transform or modify it into intermediate-level components or substances or into a product"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for transforming or modifying are lacking.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'raw material role' then x is a 'role' that is the 'role of' some 'material entity' when it 'participates in at some time' a 'buying business process' in which some 'organization' that 'has role' 'buyer role' participates in at some time' and whenever x 'has realization' y that y must be a 'product production process' or a 'manufacturing process'",
      label: {"en-us": "raw material role"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000023", term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/ProductProductionProcess", term(
              intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/ManufacturingProcess", term(
                onProperty: "http://purl.obolibrary.org/obo/BFO_0000132",
                someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ProductProductionProcess",
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ))
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000054",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000056",
              someValuesFrom: term(
                intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/BuyingBusinessProcess", term(
                  onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
                  someValuesFrom: term(
                    intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", term(
                      onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
                      someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/BuyerRole",
                      type: "http://www.w3.org/2002/07/owl#Restriction"
                    )),
                    type: "http://www.w3.org/2002/07/owl#Class"
                  ),
                  type: "http://www.w3.org/2002/07/owl#Restriction"
                )),
                type: "http://www.w3.org/2002/07/owl#Class"
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RequirementSpecification,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "UML use case document, competency questions, high level activity diagram"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://demo-irm-dnvgl.northeurope.cloudapp.azure.com/ontology/requirement-ontology/core/A01A",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "Being a requirement specification can be context specific. For example, a UML class diagram may be a requirement specification for a data exchange specification or a design specification for software code.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: RequirementSpecification(x) → InformationContentEntity(x) ∧ ∃y(ObjectiveSpecification(y) ∧ isAbout(x,y))", "LA2: InformationContentEntity(x) ∧ ∃y(Entity(y) ∧ satisfiesRequirement(y,x)) → RequirementSpecification(x)"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that prescribes a set of requirements"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "See the general discussion and rationale provided for informational entities under 'information content entity'.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: if x is a 'requirement specification' then x is an 'information content entity' that 'is about' some 'objective specification'", "LA2: if x is an 'information content entity' and exists an entity that 'satisfies requirement' x then x is a 'requirement specification'"],
      label: {"en-us": "requirement specification"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isAbout",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ObjectiveSpecification",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :SellingBusinessProcess,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "Good Year offers tires for sale, Boeing offers 737 planes for along with service agreements for the maintenance of the planes"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "CCO:http://www.ontologyrepository.com/CommonCoreOntologies/ActOfBuying\nNL definition: OAGIS and CCO",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "It should be noted that we consciously exclude the person-to-person transactions, but person-to-business is not excluded.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "OfferingForSaleBusinessProcess(x) → BusinessProcess(x) ∧ ∃y∃z((MaterialProduct(y) ∨ CommercialServiceAgreement(y)) ∧ Supplier(z) ∧ hasParticipantAtSomeTIme(x,y) ∧ hasParticipantAtSomeTime(x,z))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "business process wherein a product or commercial service is offered by an agent (seller) for another agent (buyer) to acquire ownership via a financial instrument"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, ownership and economic transactions require formalization.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is an 'offering for sale business process' then x is a 'business proces' that 'has participant at some time' some 'supplier' and x 'has participant at some time' some 'material product' or 'commercial service agreement'",
      label: {"en-us": "offering for sale business process"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/BusinessProcess", term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Supplier",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/CommercialServiceAgreement", "https://spec.industrialontologies.org/ontology/core/Core/MaterialProduct")
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ServiceProvider,
      equivalentClass: term(
          intersectionOf: list(term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", "https://spec.industrialontologies.org/ontology/core/Core/Person")
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/ServiceProviderRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "FedEx; Home-cleaning service; aircraft maintenance service; internet service provider"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "See the expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "ServiceProvider(x) ↔ (Person(x) ∨ Organization(x)) ∧ ∃r(ServiceProviderRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "person or organization which has a service provider role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'service provider' is defined as exactly an instance of 'person' or 'organization' that 'has role' some 'service provider role'",
      label: {"en-us": "service provider"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Supplier",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ServiceProviderRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "FedEx; Home-cleaning service; aircraft maintenance service; internet service provider"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Service_provider",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "ServiceProviderRole(x) → AgentRole(x) ∧ ∃y∃p((Organization(y) ∨ Person(y)) ∧ (CommercialService(p) ∨ (OfferingForSaleBusinessProcess(p) ∧ ∃c(CommercialServiceAgreement(c) ∧ hasParticipantAtSomeTime(p,c)))) ∧ participatesInAtSomeTime(y,p) ∧ roleOf(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "supplier role held by a person or organization when it offers to sell or provide a commercial service"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for economic transactions and ownership are lacking",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'service provider role' then x is an 'agent role' that is the 'role of' some 'person' or 'organization' that 'participates in at some time' some 'commercial service' or some 'offering for sale business process' which 'has participant at some time' some 'commercial service agreement'",
      label: {"en-us": "service provider role"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/SupplierRole", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: term(
            intersectionOf: list(term(
              type: "http://www.w3.org/2002/07/owl#Class",
              unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", "https://spec.industrialontologies.org/ontology/core/Core/Person")
            ), term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000056",
              someValuesFrom: term(
                type: "http://www.w3.org/2002/07/owl#Class",
                unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/CommercialService", term(
                  intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/SellingBusinessProcess", term(
                    onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
                    someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/CommercialServiceAgreement",
                    type: "http://www.w3.org/2002/07/owl#Restriction"
                  )),
                  type: "http://www.w3.org/2002/07/owl#Class"
                ))
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Supplier,
      equivalentClass: term(
          intersectionOf: list(term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", "https://spec.industrialontologies.org/ontology/core/Core/Person")
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasRole",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/SupplierRole",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "logistics service provider; vending machine; the material handling department (which manages the raw material and finished goods in company warehouses, and provides material handling services to manufacturing and other departments within its factories)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "See the expanded definition under the corresponding role class. The term is formalized here as a defined class by referring to its corresponding role class and exists primarily for ontological modeling and implementation convenience.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "Supplier(x) ↔ Person(x) ∨ Organization(x) ∧ ∃r(SupplierRole(r) ∧ hasRole(x,r))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "person or organization which has a supplier role"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'supplier' is defined as exactly an instance of 'person' or 'organization' that 'has role' some 'supplier role'",
      label: {"en-us": "supplier"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :SupplierRole,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "logistics service provider; vending machine; the material handling department (which manages the raw material and finished goods in company warehouses, and provides material handling services to manufacturing and other departments within its factories)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "APICS, term by the same name and Oxford Languages, term by the name ‘vendor’",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "SupplierRole(x) → Role(x) ∧ ∃y∃p((Organization(y) ∨ Person(y)) ∧ (SupplyingBusinessProcess(p) ∨ OfferingForSaleBusinessProcess(p)) ∧ participatesInAtSomeTime(y,p) ∧ roleOf(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "agent role held by a person or organization when it offers to sell or provide products or services"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for economic transactions and ownership are lacking.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'supplier role' x then x is an 'agent role' that is the 'role of' some 'person' or 'organization' when it 'participates in at some time' some 'supplying business process' or 'offering for sale business process'",
      label: {"en-us": "supplier role"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/AgentRole", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
          someValuesFrom: term(
            intersectionOf: list(term(
              type: "http://www.w3.org/2002/07/owl#Class",
              unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/Organization", "https://spec.industrialontologies.org/ontology/core/Core/Person")
            ), term(
              onProperty: "http://purl.obolibrary.org/obo/BFO_0000056",
              someValuesFrom: term(
                type: "http://www.w3.org/2002/07/owl#Class",
                unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/SellingBusinessProcess", "https://spec.industrialontologies.org/ontology/core/Core/SupplyingBusinessProcess")
              ),
              type: "http://www.w3.org/2002/07/owl#Restriction"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ),
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :SupplyingBusinessProcess,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "BMW dealer supplies a car to the Customer; US importer of steel from China supplies the steel to a US manufacturer; company (supplier) supplied (ship directly) a product to a buyer who bought the product on Amazon (seller)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.oberlo.com/ecommerce-wiki/supply",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/counterExample": "A BMW dealer supplies a car to a Customer in the US, but the BMW Manufacturer in Germany does not supply the car to the Customer. The BMW Manufacturer supplies the car to the BMW dealer.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. To supply a product means to deliver the product to another agent.\n2.To supply a service means to perform a process (e.g. commercial service) for another agent, typically involving a service agreement.\n3.It should be noted that we consciously exclude the person-to-person transactions, but person-to-business is not excluded.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "SupplyingBusinessProcess(x) → BusinessProcess(x) ∧ ∃y(Supplier(y) ∧ hasParticipantAtSomeTime(x,y)) ∧ (∃p(MaterialProduct(p) ∧ hasParticipantAtSomeTime(x,p)) ∨ ∃c(CommercialService(c) ∧ occurrentPartOf(x,c)))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "business process wherein a product or service is supplied"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely, constructs for economic transactions, service or product provision and ownership are lacking",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'supplying business process' then x is a 'business process' that 'has participant at some time' some 'supplier' and x 'has participant at some time' some 'material product' or is 'occurent part of' some 'commercial service'",
      label: {"en-us": "supplying business process"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/BusinessProcess", term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/Supplier",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list(term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/MaterialProduct",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000132",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/core/Core/CommercialService",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ))
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :System,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "solar system, digestive system, forest ecosystem, hydraulic system, subway system, social system, technical system, natural system"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "Merriam-Webster Dictionary for term under the same name.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. As introduced here, the term is limited to natural, social and technical systems that are tangible and whose \"elements\" are also tangible.\n\n2. Frequently, the elements comprising a system are instances of BFO: object. However, the system elements may also include object aggregates (e.g., a system of systems; a system that includes a production line consisting of humans, machines, and other equipment)\n\n3. Although the system is asserted under BFO: object aggregate, which is constrained to have only material entities (tangible things) as elements, the approach to modeling systems comprised of both software and hardware (also known as a cyber-physical system) can still be modeled indirectly: by introducing a 'generically depends on' relationship between the software or other intangible elements (information content entity types) and its physical bearer (hardware or hardware system), which are in turn members of the system.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "System(x) → ObjectAggregate(x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "collection of elements (object aggregate) that form a unified whole and interact"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "The term is introduced here as a general class to allow the introduction of specialized kinds of systems that appear in particular modalities. Furthermore, an effort remains to formalize what it means for two things to interact, or what it means to regularly interact.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "if x is a 'system' then x is an 'object aggregate'",
      label: {"en-us": "system"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000027",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :TemporalDurationValueExpression,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/ValueExpression", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isValueExpressionOfAtAllTimes",
            someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000202",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2002/07/owl#disjointWith": "https://spec.industrialontologies.org/ontology/core/Core/TemporalInstantValueExpression",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the expression of the duration that is taken by an average worker to sew a garment."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "1. This class was introduced as a helper class to map OWL time to IOF Core. For detailed expression of a duration of a ‘temporal interval’, use a suitable subclass of TemporalDuration class from Time ontology (https://www.w3.org/TR/owl-time/) instead of ‘temporal duration value expression’ (see mapping file https://spec.industrialontologies.org/ontology/core/commonstocoremapping/MappingOWLTimeToIOF/)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "TemporalDurationValueExpression(x) ↔ ValueExpression(x) ∧ ∃y(TimeInterval(y) ∧ isValueExpressionOfAtAllTimes(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Provisional",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "value expression that describes the duration of some temporal interval"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'temporal duration value expression' is defined exactly as an instance of 'value expression' that 'is value expression of at all times' some 'temporal interval'",
      label: {"en-us": "temporal interval value expression"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :TemporalInstantValueExpression,
      equivalentClass: term(
          intersectionOf: list("https://spec.industrialontologies.org/ontology/core/Core/ValueExpression", term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isValueExpressionOfAtAllTimes",
            someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000203",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The time instant at which a train arrives at a station has its clock time expressed by a temporal instant value expression."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "1. This class was introduced as a helper class to map OWL time to IOF Core. For detailed expression of date and time in a specific calendar system, use a suitable subclass of TemporalPosition class from Time ontology (https://www.w3.org/TR/owl-time/) instead of ‘temporal instant value expression’ (see mapping file https://spec.industrialontologies.org/ontology/core/commonstocoremapping/MappingOWLTimeToIOF/)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicDefinition": "TemporalInstantValueExpression(x) ↔ ValueExpression(x) ∧ ∃y(TemporalInstant(y) ∧ isValueExpressionOfAtAllTimes(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Provisional",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "value expression that describes the position of a time instant in the time line"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageDefinition": "every instance of 'temporal instant value expression' is defined exactly as an instance of 'value expression' that 'is value expression of at all times' some 'temporal instant'",
      label: {"en-us": "temporal instant value expression"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ValueExpression,
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "1cm is the value expression of the diameter of a screw head that is specified in its design; 37C is the value expression of the temperature of a bioreactor measured during the production process; \"low risk\" is the value expression of a process parameter based on the risk analysis classification scheme; 3 g/l is the value expression of titer of an antibody generated by a process simulation"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/OBI_0001933",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. Value expressions comprehend qualitative, semi-quantitative, or quantitative values.\n\n2. All value expressions have a value associated with them through ‘has simple expression value’. This part is not formally captured as we do not want to impose a specific datatype constraint (e.g., xsd:int,rdfs:Literal) with the value expression. Nevertheless, any instance of ‘value expression’ MUST have a ‘has simple expression value’ or its subproperty pointing to a value.\n\n3. This class is intended to provide a single framework for representing unit-value pairs and the connection between a value and a particular classification scheme in the case of qualitative values. While currently, IOF still needs to define classification schemes and quantitative scales, this class is compatible with and thus can be mapped to external ontologies such as the QUDT and the Units Ontology to get the necessary representation of units.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "ValueExpression(x) → InformationContentEntity(x) ∧ ∃e(Entity(e) ∧ isValueExpressionOfAtSomeTime(x,e))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Provisional",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "information content entity that contains a value of an entity within a classification scheme or on a quantitative scale"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/primitiveRationale": "There are insufficient constructs to create necessary and sufficient conditions. Namely constructs for representing classification schemes and quantitative scales are still missing.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "If x is a 'value expression' then x is an 'information content entity' that 'is value expression of at some time' some 'entity'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "value information content entity"},
      label: {"en-us": "value expression"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity", term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/isValueExpressionOfAtSomeTime",
          someValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000001",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"

    # Property definitions
    property :achievesAtSomeTime,
      domain: "http://purl.obolibrary.org/obo/BFO_0000015",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The staffing and ramping up of production to 2 shifts per work day acheives the company plan of satisfying a surge in demand for its products."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "achievesAtSomeTime(x,y) → Process(x) ∧ InformationContentEntity(y) ∧ (concretizesAtSomeTime(x,y) ∨ ∃z(continuantPartOfAtAllTimes(z,y) ∧ InformationContentEntity(z) ∧ concretizesAtSomeTime(x,z)))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a process to an information content entity wherein the process partially or fully concretizes the information content entity"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x achieves at some time y holds when x is a 'process' and y is an 'information content entity' and x 'concretizes at some time' y or a 'continuant part of at all times' y",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/isAchievedByAtSomeTime",
      label: {"en-us": "achieves at some time"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000059",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :actsOnBehalfOfAtSomeTime,
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "An agent acts on behalf of a business organization. A laywer acts on behalf of a person."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "actsOnBehalfOfAtSomeTime(x,y) → (MaterialEntity(x) ∧ ¬(FiatObjectPart(x))) ∧ (Person(y) ∨ GroupOfAgents(y) ∨ EngineeredSystem(y)) ∧ ∃p∃d(PlannedProcess(p) ∧ ObjectiveSpecification(d) ∧ participatesInAtSomeTime(x,p) ∧achievesAtSomeTime(p,d) ∧ genericallyDependsOnAtSomeTime(d,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a material entity to a person or a group of agents or engineered system that holds when the material entity participates in some planned process in order to fulfill an objective for the person or group of agents or engineered system"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x acts on behalf of at some time y holds when x is a 'material entity' (that is not a 'fiat object part') and y is some 'person' or 'group of agents' or 'engineered system' and at some time t, there exists a 'planned process' p such that x 'participates in' p and p 'achieves at some time' some 'objective specification' d that 'generically depends on at some time' y",
      label: {"en-us": "acts on behalf of at some time"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("https://spec.industrialontologies.org/ontology/core/Core/EngineeredSystem", "https://spec.industrialontologies.org/ontology/core/Core/GroupOfAgents", "https://spec.industrialontologies.org/ontology/core/Core/Person")
        ),
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :after,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "A metal surface is polished after the surface is cleaned to make it free from dust or grease; a product is manufactured after it is designed; March comes after January."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "after(x,y) ↔ before(y,x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the last instant of the temporal extent of i is later than the first instant of the temporal extent of j"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "'before' and 'after' are inverse relations",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/before",
      label: {"en-us": "after"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000062",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :before,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The surface of the metal is cleaned to make it free from dust or grease before polishing; a product is designed before it can be manufactured; January comes before March."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: before(i,j) → (TemporalInterval(i) ∧ TemporalInterval(j)) ∨ (Process(i) ∧ Process(j))", "LA2: TemporalInterval(i) ∧ TemporalInterval(j) ∧ before(i,j) → ∃i1∃j1(TemporalInstant(i1) ∧ TemporalInstant(j1) ∧ hasLastInstant(i,i1) ∧ hasFirstInstant(j,j1) ∧ precedes(i1,j1))", "LA3: Process(i) ∧ Process(j) ∧ ∃i1∃j1(TemporalInterval(i1) ∧ before(i,j) → TemporalInterval(j1) ∧ occupiesTemporalRegion(i,i1) ∧ occupiesTemporalRegion(j,j1) ∧ before(i1,j1))"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the last instant of the temporal extent of i is earlier than the first instant of the temporal extent of j"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: If i is 'before' j then either both are 'temporal intervals' or both are 'process'", "LA2: If both i and j are 'temporal intervals' and i is 'before' j then the 'last instant of' i 'precedes' the 'first instant of' j", "LA3: If both i and j are 'process' and i is 'before' j then the 'temporal interval' that i occupies is 'before' the 'temporal interval' that j occupies"],
      label: {"en-us": "before"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000063",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :capabilityOf,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/Capability",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "turning at the maximal speed of 4000RPM is the capability of a lathe; temperature sensor has the capability to measuring temperature with a 0.01C precision is the capability of a temperature sensor; measuring pH in the range of 0-14 is the capability of a pH meter"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "capabilityOf(x,y) → Capability(x) ∧ IndependentContinuant(y) ∧ inheresIn(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a capability to an independent continuant (the bearer), in which the capability specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x capability of y holds when x is a 'capability' and y is a 'independent continuant' and x is 'inheres in' y",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/hasCapability",
      label: {"en-us": "capability of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000004",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000197",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :componentPartOfAtAllTimes,
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "transmission assembly is a component part of a car; engine control ;sparger is a component part of a bioreactor"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "componentPartOfAtAllTimes(x,y) → (MaterialEntity(x) ∧ ¬(FiatObjectPart(x))) ∧ (MaterialEntity(y) ∧ ¬(FiatObjectPart(y))) ∧ properContinuantPartOfAtAllTimes(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a material entity to another material entity that it is a proper part of at all times it exists"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x component part of at all times y holds when x is a 'material entity' that is not a 'fiat object part' and y is a 'material entity' that is not a 'fiat object part' and x is 'proper continuant part of at all times' y",
      label: {"en-us": "component part of at all times"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      subPropertyOf: ["http://purl.obolibrary.org/obo/BFO_0000137", "https://spec.industrialontologies.org/ontology/core/Core/componentPartOfAtSomeTime"],
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :componentPartOfAtSomeTime,
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a particular chromatography column is a component part of a chromatography system during several purification cycles; a particular tool is a component part of a CNC machine while it is being used for manufacturing a particular part"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "The IOF does not consider as component part of material entities that are delineated by a non-physical (fiat) boundary from the material entity they are a part of.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "componentPartOfAtSomeTime(x,y) → (MaterialEntity(x) ∧ ¬(FiatObjectPart(x))) ∧ (MaterialEntity(y) ∧ ¬(FiatObjectPart(y))) ∧ properContinuantPartOfAtSomeTime(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a material entity to another material entity that it is a proper part of at some time"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x component part of at some time y holds when x is a 'material entity' that is not a 'fiat object part' and y is a 'material entity' that is not a 'fiat object part' and x is 'proper continuant part of at some time' y",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/hasComponentPartAtSomeTime",
      label: {"en-us": "component part of at some time"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000175",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :containsOccurrenceOf,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The grinding of metal contains occurrence of sparking; a storm contains occurrences of lightning."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "containsOccurrenceOf(x,y) ↔ occursDuring(y,x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the first instant of the temporal extent of j is later than the first instant of the temporal extent of i and the last instant of the temporal extent of j is earlier than the last instant of the temporal extent of i"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "'contains occurrence of' and 'occurs during' are inverse relations",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/occursDuring",
      label: {"en-us": "contains occurence of"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :denotedBy,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "one or more individuals are denoted by the name 'John'; vehicle is denoted by a 'vehicle identification number'; molecules with the structure CH3-CH2-OH is denoted by 'ethanol'"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to an information content entity that distinguishes the entity"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/denotes",
      label: {"en-us": "denoted by"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/isSubjectOf",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :denotes,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the name 'John' denotes one or more individuals that have that name; 'vehicle identification number' denotes a vehicle; 'ethanol' is a name given by IUPAC which denotes molecules with the structure CH3-CH2-OH"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "The distinguishment implied by denotes is not necessarily unique, which is why this property is not made functional. For example, a name can, at one point, 'denote' multiple individuals.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an information content entity to an entity that the information content entity distinguishes"},
      label: {"en-us": "denotes"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/isAbout",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :describedBy,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "some current event is described by the content of a newspaper article; some facility visit is described by the content of a visitor's log; some accident is described by the content of an accident report"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to an information content entity that characterizes the entity"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/describes",
      label: {"en-us": "described by"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/isSubjectOf",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :describes,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the content of a newspaper article describes some current event; the content of a visitor's log describes some facility visit; the content of an accident report describes some accident"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an information content entity to an entity that the information content entity characterizes"},
      label: {"en-us": "describes"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/isAbout",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :designatedBy,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a Web Page's location on the internet is designated by an URL; an individual in USA is designated by SSN ; a particular lot of product is designated by a 'lot number'"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to an information content entity that uniquely distinguishes the entity from other entities"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/designates",
      label: {"en-us": "designated by"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/denotedBy",
      type: ["http://www.w3.org/2002/07/owl#InverseFunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]
    property :designates,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a URL designates the location of a Web Page on the internet;SSN designates an individual; 'lot number' designates a particular lot of product"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. To ensure uniqueness, each information content entity can designate exactly one entity. As such, this property is made functional.\n2. The uniqueness of the entity is typically within a particular context that is represented in the identification scheme that conveys the meaning of the assignment.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an information content entity to an entity that the information content entity uniquely distinguishes from other entities"},
      label: {"en-us": "designates"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/denotes",
      type: ["http://www.w3.org/2002/07/owl#FunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]
    property :dispositionOf,
      domain: "http://purl.obolibrary.org/obo/BFO_0000016",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the disposition to decay to an atom of element Y is the disposition of an atom of element X; the disposition to break apart is the disposition of a poorly assembled item"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/RO_0000092",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "dispositionOf(x,y) → Disposition(x) ∧ IndependentContinuant(y) ∧ inheresIn(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a disposition to an independent continuant (the bearer), in which the disposition specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x disposition of y holds when x is a 'disposition' and y is a 'independent continuant' and x is 'inheres in' y",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/hasDisposition",
      label: {"en-us": "disposition of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000004",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000197",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :functionOf,
      domain: "http://purl.obolibrary.org/obo/BFO_0000034",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "this catalysis function is a function of this enzyme"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/RO_0000079",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "functionOf(x,y) → Function(x) ∧ IndependentContinuant(y) ∧ inheresIn(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a function to an independent continuant (the bearer), in which the function specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x function of y holds when x is a 'function' and y is a 'independent continuant' and x is 'inheres in' y",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/hasFunction",
      label: {"en-us": "function of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000004",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000197",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasCapability,
      domain: "http://purl.obolibrary.org/obo/BFO_0000004",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a lathe has a capability to turn at the maximal speed of 4000RPM; temperature sensor has the capability to measure temperature with a 0.01C precision; pH meter has the capability to measure pH in the range of 0-14"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "hasCapability(x,y) → IndependentContinuant(x) ∧ Capability(y) ∧ bearerOf(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an independent continuant (the bearer) to a capability, in which the capability specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x has capability y holds when x is a 'independent continuant' and y is a 'capability' and x is 'bearer of' y",
      label: {"en-us": "has capability"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/Capability",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000196",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasComponentPartAtAllTimes,
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "car has component part a chasy; a bioractor has component part a stainless steel vessel"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "hasComponentPartAtAllTimes(x,y) → (MaterialEntity(x) ∧ ¬(FiatObjectPart(x))) ∧ (MaterialEntity(y) ∧ ¬(FiatObjectPart(y))) ∧ hasProperContinuantPartAtAllTimes(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a material entity to another material entity that it has as a proper part at all times it exists"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x has component part at all times y holds when x is a 'material entity' that is not a 'fiat object part' and y is a 'material entity' that is not a 'fiat object part' and x 'has proper continuant part at all times' y",
      label: {"en-us": "has component part at all times"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      subPropertyOf: ["http://purl.obolibrary.org/obo/BFO_0000111", "https://spec.industrialontologies.org/ontology/core/Core/hasComponentPartAtSomeTime"],
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :hasComponentPartAtSomeTime,
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a particular chromatography column is a component part of a chromatography system has a component part a particular chromatography column during several purification cycles; a CNC machine has component part a particular tool while it is being used for manufacturing a particular part"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "hasComponentPartAtSomeTime(y,x) → (MaterialEntity(x) ∧ ¬(FiatObjectPart(x))) ∧ (MaterialEntity(y) ∧ ¬(FiatObjectPart(y))) ∧ properContinuantPartOfAtSomeTime(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a material entity to another material entity that it has as a proper part at some time"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "y has component part at some time x holds when x is a 'material entity' that is not a 'fiat object part' and y is a 'material entity' that is not a 'fiat object part' and x is 'proper continuant part of at some time' y",
      label: {"en-us": "has component part at some time"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000024",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000174",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasDateTimeInstantValue,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/TemporalInstantValueExpression",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The time point at 16:30pm at UTC on 3rd March 2023 is asserted by the associated (‘is value expression of at all times’) ‘temporal instant value expression’ having date-time value (‘has date-time instant value’) 2023-03-03T16:30:00Z."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "1. This data property may be used to specify a ‘temporal instant value expression’ in XSD date-time format (e.g., 2002-10-10T17:00:00Z). For a detailed description of xsd:DateTime, see https://www.w3.org/TR/xmlschema-2/#dateTime. \n2. While comparing two ‘temporal instant value expression’, it is important to make sure that their date-time expressions are given in the same calendar and clock system.\n3. For detailed expression of date and time in a specific calendar system, use a suitable subclass of TemporalPosition class from Time ontology (https://www.w3.org/TR/owl-time/) instead of ‘temporal instant value expression’ (see mapping file https://spec.industrialontologies.org/ontology/core/commonstocoremapping/MappingOWLTimeToIOF/)."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "data property that relates a time instance value to a XSD date-time"},
      label: {"en-us": "has date-time instant value"},
      range: "http://www.w3.org/2001/XMLSchema#dateTime",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/hasSimpleExpressionValue",
      type: "http://www.w3.org/2002/07/owl#DatatypeProperty"
    property :hasDisposition,
      domain: "http://purl.obolibrary.org/obo/BFO_0000004",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "An atom of element X has the disposition to decay to an atom of element Y; a poorly assembled item has the disposition to break apart"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/RO_0000091",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "hasDisposition(x,y) → IndependentContinuant(x) ∧ Disposition(y) ∧ bearerOf(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an independent continuant (the bearer) to a disposition, in which the disposition specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x has disposition y holds when x is a 'independent continuant' and y is a 'disposition' and x is 'bearer of' y",
      label: {"en-us": "has disposition"},
      range: "http://purl.obolibrary.org/obo/BFO_0000016",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000196",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasFunction,
      domain: "http://purl.obolibrary.org/obo/BFO_0000004",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "this enzyme has function this catalysis function (more colloquially: this enzyme has this catalysis function)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/RO_0000085",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "A bearer can have many functions, and its functions can exist for different periods of time, but none of its functions can exist when the bearer does not exist. A function need not be realized at all the times that the function exists."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "hasFunction(x,y) → IndependentContinuant(x) ∧ Function(y) ∧ bearerOf(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an independent continuant (the bearer) to a function, in which the function specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x has function y holds when x is a 'independent continuant' and y is a 'function' and x is 'bearer of' y",
      label: {"en-us": "has function"},
      range: "http://purl.obolibrary.org/obo/BFO_0000034",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000196",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasInput,
      domain: "http://purl.obolibrary.org/obo/BFO_0000015",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "machine learning execution process has input a dataset;fermentation process has input growth medium; additive manufacturing process has input metal powder;"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/ExtendedRelationOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a process to someone or something physical or digital (continuant) that is a necessary precondition for the process to start"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/isInputOf",
      label: {"en-us": "has input"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000057",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasMeasuredValueAtSomeTime,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "'80kg' is the value of the weight of a male human on the 5th of October 2022; '37C' is the temperature inside a bioreactor in the 30th min from the process start"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to a value expression that contains the value of the entity measured at some time t"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/isMeasuredValueOfAtSomeTime",
      label: {"en-us": "has measured value at some time"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/hasValueExpressionAtSomeTime",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasOutput,
      domain: "http://purl.obolibrary.org/obo/BFO_0000015",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "chemical manufacturing process has output a wastestream; toluene manufacturing process has output a certain quantity of toluene; car manufacturing process has output a car"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/ExtendedRelationOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "By introducing the condition that it must exist at the end of the process materials that only transitively exist during the process (e.g., reaction intermediary) are excluded from being considered the output.",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a process to someone or something physical or digital (continuant) that participates in the process such that it is generated or modified during the process, and that it exists at the end of the process"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/isOutputOf",
      label: {"en-us": "has output"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000057",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasProcessCharacteristic,
      domain: "http://purl.obolibrary.org/obo/BFO_0000015",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "product production process has process characteristic constant production rate; heating process has process characteristic temperature change of 5F/min"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation between a process and its characteristic"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/processCharacteristicOf",
      label: {"en-us": "has process characteristic"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/ProcessCharacteristic",
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasQuality,
      domain: "http://purl.obolibrary.org/obo/BFO_0000004",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "this apple has quality this red color"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/RO_0000086",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "A bearer can have many qualities, and its qualities can exist for different periods of time, but none of its qualities can exist when the bearer does not exist."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "hasQuality(x,y) → IndependentContinuant(x) ∧ Quality(y) ∧ bearerOf(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an independent continuant (the bearer) to a quality, in which the quality specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x has function y holds when x is a 'independent continuant' and y is a 'quality' and x is 'bearer of' y",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/qualityOf",
      label: {"en-us": "has quality"},
      range: "http://purl.obolibrary.org/obo/BFO_0000019",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000196",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasRole,
      domain: "http://purl.obolibrary.org/obo/BFO_0000004",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "this person has role this investigator role (more colloquially: this person has this role of investigator)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/RO_0000087",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {"en-us": "A bearer can have many roles, and its roles can exist for different periods of time, but none of its roles can exist when the bearer does not exist. A role need not be realized at all the times that the role exists."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "hasRole(x,y) → IndependentContinuant(x) ∧ Role(y) ∧ bearerOf(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an independent continuant (the bearer) to a role, in which the role specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x has role y holds when x is a 'independent continuant' and y is a 'role' and x is 'bearer of' y",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/roleOf",
      label: {"en-us": "has role"},
      range: "http://purl.obolibrary.org/obo/BFO_0000023",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000196",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasSimpleExpressionValue,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "value expression with the unit 'C' that is the value expression of temperature has simple expression value \"37\""},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. the literal represents the magnitude or a\ncategory within a classification scheme of an entity that the value expression is the value expression of\n2. The label 'simple expression' was chosen due to the possiblity of introduction of a 'complex expression' object property in the future release that would be utilized for representation of things such as mathematical formulas",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "data property that relates a value expression to a literal"},
      label: {"en-us": "has simple expression value"},
      subPropertyOf: "http://www.w3.org/2002/07/owl#topDataProperty",
      type: "http://www.w3.org/2002/07/owl#DatatypeProperty"
    property :hasSpecifiedOutput,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "biopharmaceutical production process has specified output an antibody solution of 99.999% purity; a simulation execution has specified output a prediction of part porosity; a temperature measurement process has specified output a temperature measurement result; a car manufacturing process has specified output a car"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/OBI_0000299",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "this relation was added to specifically model the outputs that are not byproducts/wasteproducts",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "hasSpecifiedOutput(x,y) → PlannedProcess(x) ∧ Continuant(y) ∧ ∃o(ObjectiveSpecification(o) ∧ prescribes(o,y) ∧ achievesAtSomeTime(x,o) ∧ hasOutput(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a planned process to someone or something physical or digital (continuant) that is produced or modified in the planned process as prescribed by an objective"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x 'has specified output' y holds when x is a 'planned process' and y is a 'continuant' and x 'has output' y and y is 'prescribed by' some 'objective specification' which x 'achieves at some time'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "has intended output"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/isSpecifiedOutputOf",
      label: {"en-us": "has specified output"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/hasOutput",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasValueExpressionAtAllTimes,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "speed of light in a vacuum has value expression 3×10^8 m/s ; electric charge carried by a single proton has the value expression 1.602176634×10−19 coulombs"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to a value expression that contains the value of the entity which does not change during the entire existence of the entity"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/isValueExpressionOfAtAllTimes",
      label: {"en-us": "has value expression at all times"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/hasValueExpressionAtSomeTime",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :hasValueExpressionAtSomeTime,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the diameter of a screw head has value expression 1cm that is specified in its design; a bioreactor has value expression 37C that was measured during the production process; \"low risk\" is the value expression of a process parameter \"low risk\" that is based on the risk analysis classification scheme; an antibody has value expression 3 g/l that was generated by a process simulation"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "determined in this context can be interpreted as either being simulated or being measured",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to a value expression that contains the value of the entity determined or set at some time t"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/isValueExpressionOfAtSomeTime",
      label: {"en-us": "has value expression at some time"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/describedBy",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isAbout,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a temperature recording is about temperature; SSN is about a particular individual; commercial service agreement is about a commercial service"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "IAO:http://purl.obolibrary.org/obo/IAO_0000136 and CCO:http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "primitive, generic relationship between an information content entity and some entity"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/isSubjectOf",
      label: {"en-us": "is about"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isAchievedByAtSomeTime,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The company plan of satisfying a surge in demand for its products is achieved by the staffing and ramping up of production to 2 shifts per work day."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "isAchievedByAtSomeTime(y,x) → Process(x) ∧ InformationContentEntity(y) ∧ (concretizesAtSomeTime(x,y) ∨ ∃z(continuantPartOf(z,y) ∧ InformationContentEntity(z) ∧ concretizesAtSomeTime(x,z)))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an information content entity to a process that partially or fully concretizes the information content entity"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "y is achieved by at some time x holds when x is a 'process' and y is an 'information content entity' and x 'concretizes' y or a 'continuant part of' y, at some time t",
      label: {"en-us": "is achieved by at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000015",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000058",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isAvailableToAtSomeTime,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list(term(
            "http://www.w3.org/2004/02/skos/core#example": "location of a container, floor area in a factory building, location of a machine (relative to the coordinate of a factory floor), location on a shelf in a warehouse",
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "Even though site (physical location) always refers to a 3D space it is fine to define it practically just through 2D or 1D or 0D spatial region. For example when we want to talk about 2x2m area within a factory floor even though the space specified is 2D it is still ok to assert it as site as there is always the third dimension above the area that is implicit.",
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": "physical location"
          ), "http://purl.obolibrary.org/obo/BFO_0000040")
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a roll of aluminum (resource) is avaiable to an agent to use in a forming process, a milling workstation (resource) is available to a manufacturer to produce some parts"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "this definition of 'is available to' is not the same as the state of availability e.g a machine is idle hence it is in the available state",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "isAvailableToAtSomeTime(x,y) → (MaterialEntity(x) ∨ Site(x)) ∧ Agent(y) ∧ ∃p∃o∃c(Process(p) ∧ ObjectiveSpecification(o) ∧ Capability(c) ∧ hasCapability(x,c) ∧ genericallyDependsOnAtSomeTime(o,y) ∧ (realizes(p,c) ∧ participatesInAtSomeTime(y,p)→ AchievesAtSomeTime(p,o)))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a material entity or physical location to an agent that holds when the material entity or physical location have a capability that is needed by the agent to fulfil some objective carried by the agent"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x is available at some time y holds when x is a 'material entity' or 'site' and y is an 'agent' and x 'has capability' some 'capability' which when 'realized in' some 'process' p that y 'participates in at some time' implies that p 'achieves at some time' some 'objective specification' that 'generically depends on at some time' y",
      label: {"en-us": "is available to at some time"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isInputOf,
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a dataset is an input of a machine learning execution process; growth medium is an input of a fermentation process; metal powder is an input of an additive manufacturing process;"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/ExtendedRelationOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relates someone or something physical or digital (continuant) to a process that it is a necessary precondition for the process to start"},
      label: {"en-us": "is input of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000015",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000056",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isMeasuredValueOfAtSomeTime,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "'80kg' is the measured weight of a particular male human"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a value expression to the entity indicating that the value expression contains the value of the entity measured at some time t"},
      label: {"en-us": "is measured value of at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/isValueExpressionOfAtSomeTime",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isOutputOf,
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "wastestream is an output of a chemical manufacturing process; a certain quantity of toluene is an output of a toluene manufacturing process; a car is an output of a car manufacturing process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/ExtendedRelationOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from someone or something physical or digital (continuant) to a process that it participates in such that it is generated or modified during the process, and it exists at the end of the process"},
      label: {"en-us": "is output of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000015",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000056",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isSpecifiedOutputOf,
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "antibody solution of 99.999% purity is the specified output of a biopharmaceutical production process; prediction of part porosity is a specified output of a simulation execution; temperature measurement result is the specified output of a temperature measurement process; a car is the specified output of a car manufacturing process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "isSpecifiedOutputOf(y,x) → PlannedProcess(x) ∧ Continuant(y) ∧ ∃o(ObjectiveSpecification(o) ∧ prescribes(o,y) ∧ achievesAtSomeTime(x,o) ∧ hasOutput(x,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from someone or something physical or digital (continuant) to a planned process in which it is produced or modified as prescribed by some objective"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "y 'has specified output' x holds when x is a 'planned process' and y is a 'continuant' and x 'has output' y and y is 'prescribed by' some 'objective specification' which x 'achieves at some time'",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/synonym": {"en-us": "is intended output of"},
      label: {"en-us": "is specified output of"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/PlannedProcess",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/isOutputOf",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isSubjectOf,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "temperature is subject of temperature recording; particular individual is subject of SSN; commercial service is subject of commercial service agreement"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "primitive, generic relationship between an entity and some information content entity"},
      label: {"en-us": "is subject of"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isTemporallyOverlappedBy,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "When two plates are being welded at a joint, the heating of current point being welded is temporally overlapped by the cooling of a previously welded point; the receiving process is temporally overlapped by the sending process in a transaction process; Sumerian civilization (c. 3500 BCE - c. 2000 BCE) in Mesopotamia was temporally overlapped by Ancient Egyptian civilization (c. 3000 BCE - 30 BCE)."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "isTemporallyOverlappedBy(x,y) ↔ temporallyOverlaps(y,x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals and processes i and j when the first instant of the temporal extent of j is earlier than and the last instant of the temporal extent of j is later than the first instant of the temporal extent of i, and the last instance of the temporal extent of j is earlier than the last instant of the temporal extent of i"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "'is temporally overlapped by' and 'temporally overlaps' are inverse relations",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/temporallyOverlaps",
      label: {"en-us": "is temporally overlapped by"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isValueExpressionOfAtAllTimes,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "3×10^8 m/s is the value expression of the speed of light in a vacuum; 1.602176634×10−19 coulombs is the value expression of the electric charge carried by a single proton"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a value expression to an entity indicating that the value expression contains the value of the entity which does not change during the entire existence of the entity"},
      label: {"en-us": "is value expression of at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/isValueExpressionOfAtSomeTime",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :isValueExpressionOfAtSomeTime,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/ValueExpression",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "1cm is the value expression of the diameter of a screw head that is specified in its design; 37C is the value expression of the temperature of a bioreactor measured during the production process; \"low risk\" is the value expression of a process parameter based on the risk analysis classification scheme; 3 g/l is the value expression of titer of an antibody generated by a process simulation"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/OBI_0001938",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a value expression to the entity indicating that the value expression contains the value of the entity determined or set at some time t"},
      label: {"en-us": "is value expression of at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/describes",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :measuredByAtSomeTime,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the temperature within a production vessel is measured by a temperature sensor at certain points in time during a chemical production process; the weight of a material bulk is measured by a scale"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to a material entity with a measurement capability that got realized to determine the value of the entity, at some time"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/measuresAtSomeTime",
      label: {"en-us": "measured by at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000040",
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :measuresAtSomeTime,
      domain: "http://purl.obolibrary.org/obo/BFO_0000040",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a tempearture sensor measures the temperature within a production vessel at certain points in time during the chemical production process; a scale measures the weight of a material bulk"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "In this context, value is always determined relative to some classification scheme or on a quantitative scale",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a material entity to an entity indicating that the measurement capability of the material entity got realized to determine the value of the entity, at some time"},
      label: {"en-us": "measures at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :meets,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "When an item is placed on a moving conveyor by a robotic arm, the process of placing the item meets the process of moving the item; summer meets fall; January meets February; the Christmas holiday period meets New Year’s holiday period."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: meets(i,j) → (TemporalInterval(i) ∧ TemporalInterval(j)) ∨ (Process(i) ∧ Process(j))", "LA2: TemporalInterval(i) ∧ TemporalInterval(j) ∧ meets(i,j) → ∃i1∃j1(TemporalInstant(i1) ∧ TemporalInstant(j1) ∧ hasLastInstant(i,i1) ∧ hasFirstInstant(j,j1) ∧ occursSimultaneouslyWith(i1,j1))", "LA3: Process(i) ∧ Process(j) ∧ meets(i,j) → ∃i1∃j1(TemporalInterval(i1) ∧ TemporalInterval(j1) ∧ occupiesTemporalRegion(i,i1) ∧ occupiesTemporalRegion(j,j1) ∧ meets(i1,j1))"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the last instant of the temporal extent of i is the same as the first instant of the temporal extent of j"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: If i 'meets' j then either both are 'temporal intervals' or both are 'process'", "LA2: If both i and j are 'temporal intervals' and i 'meets' j then the 'last instant of' i 'occurs simultaneously with' the 'first instant of' j", "LA3: If both i and j are 'process' and i 'meets' j then the 'temporal interval' that i occupies 'meets' the 'temporal interval' that j occupies"],
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/metBy",
      label: {"en-us": "meets"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000063",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :metBy,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "When an item is placed on a moving conveyor by a robotic arm, the process of moving of the item is met by the process of placing the item; fall is met by summer; February is met by January; the New Year’s holiday period is met by the Christmas holiday period."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "metBy(x,y) ↔ meets(y,x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the last instant of the temporal extent of j is the same as the first instant of the temporal extent of i"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "'met by' and 'meets' are inverse relations",
      label: {"en-us": "met by"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000062",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :observedByAtSomeTime,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a chemical reaction in an experiment is observed by a scientist, a machining process is observed by an operator, a group of COVID patients are observed by a doctor"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "observedByAtSomeTime (y, x) → Agent(x) ∧ Entity(y) ∧ ∃p∃i(Process(p) ∧ InformationContentEntity(i) ∧ participatesInAtSomeTime(x,p) ∧ hasOutput(p,i) ∧ isAbout(i,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to an agent indicating that the agent participates in some process that outputs information about the entity, at some time"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "p is observed by b at some time t holds when p is an 'entity' and b is an 'agent' and there is a 'process' in which b 'participates in at some time' and that 'has output' some 'information content entity' that 'is about' p",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/observesAtSomeTime",
      label: {"en-us": "observed by at some time"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :observesAtSomeTime,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a scientist observing a chemical reaction in an experiment, an operator observes a machining process, a doctor observes a group of COVID patients"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "this property was not put under participates in at some time because the target of observation can be continuant or an occurent and in the case of an occurent an agent that observes the occurent might not participate in that occurent",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "observesAtSomeTime (x, y) → Agent(x) ∧ Entity(y) ∧ ∃p∃i(Process(p) ∧ InformationContentEntity(i) ∧ participatesInAtSomeTime(x,p) ∧ hasOutput(p,i) ∧ isAbout(i,y))",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an agent to an entity indicating that the agent participates in some process that outputs information about the entity, at some time"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "b observes p at some time t when b is an 'agent' and p is an 'entity and there is a 'process' in which b 'participates in at some time' and that 'has output' some 'information content entity' that 'is about' p",
      label: {"en-us": "observes at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :occursDuring,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The final inspection and removal of defective products occur during the product is being moved to the packaging station by a conveyor belt; a sensor measures the thickness of the wall during the sand-grinding process; turkey is traditionally served during dinners on Thanksgiving In the United States."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: occursDuring(i,j) → (TemporalInterval(i) ∧ TemporalInterval(j)) ∨ (Process(i) ∧ Process(j))", "LA2: TemporalInterval(i) ∧ TemporalInterval(j) ∧ occursDuring(i,j) → ∃i1∃i2∃j1∃j2(TemporalInstant(i1) ∧ TemporalInstant(i2) ∧ TemporalInstant(j1) ∧ TemporalInstant(j2) ∧ hasFirstInstant(i,i1) ∧ hasLastInstant(i,i2) ∧ hasFirstInstant(j,j1) ∧ hasLastInstant(j,j2) ∧ precedes(j1,i1) ∧ precedes(i2,j2))", "LA3: Process(i) ∧ Process(j) ∧ occursDuring(i,j) → ∃i1∃j1(TemporalInterval(i1) ∧ TemporalInterval(j1) ∧ occupiesTemporalRegion(i,i1) ∧ occupiesTemporalRegion(j,j1) ∧ occursDuring(i1,j1))", "LA4: occursDuring(i,j) ↔ ∃k(temporallyFinishes(i,k) ∧ temporallyStarts(k,j))"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the first instant of the temporal extent of i is later than the first instant of the temporal extent of j and the last instant of the temporal extent of i is earlier than the last instant of the temporal extent of j"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: If i 'occurs during' j then either both are 'temporal intervals' or both are 'process'", "LA2: If both i and j are 'temporal intervals' and i 'occurs during' j' then first instant of' j ‘precedes’ the 'first instant of' i and the 'last instant of' i ‘precedes’ the 'last instant of' j", "LA3: If both i and j are 'process' and i 'occurs during' j then the 'temporal interval' that i occupies 'occurs during' the 'temporal interval' that j occupies", "LA4: i 'occurs during' j if and only if there exists k such that i temporally finishes k and k temporally starts j"],
      label: {"en-us": "occurs during"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :occursSimultaneouslyWith,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ), "http://purl.obolibrary.org/obo/BFO_0000203")
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The rotation of the chuck in a lathe occurs simultaneously with the running of the motor."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: occursSimultaneouslyWith(i,j) → (TemporalInstant(i) ∧ TemporalInstant(j)) ∨ (TemporalInterval(i) ∧ TemporalInterval(j)) ∨ (Process(i) ∧ Process(j)) ∧ (ProcessBoundary(i) ∧ ProcessBoundary(j))", "LA2: TemporalInstant(i) ∧ TemporalInstant(j) ∧ occursSimultaneouslyWith(i,j) → ∃k∃l(TemporalInstantValueExpression(k) ∧ TemporalInstantValueExpression(l) ∧ hasValueExpressionAtAllTimes(i,k) ∧ hasValueExpressionAtAllTimes(j,l) ∧ ∃v1∃v2(hasDateTimeInstantValue(k,v1) ∧ hasDateTimeInstantValue(l,v2) ∧ (v1 = v2)))", "LA3: TemporalInterval(i) ∧ TemporalInterval(j) ∧ occursSimultaneouslyWith(i,j) → ∃i1∃i2∃j1∃j2(TemporalInstant(i1) ∧ TemporalInstant(j1) ∧ TemporalInstant(i2) ∧ TemporalInstant(j2) ∧ hasFirstInstant(i,i1) ∧ hasLastInstant(i,i2) ∧ hasFirstInstant(j,j1) ∧ hasLastInstant(j,j2) ∧ occursSimultaneouslyWith(i1,j1) ∧ occursSimultaneouslyWith(i2,j2))", "LA4: Process(i) ∧ Process(j) ∧ occursSimultaneouslyWith(i,j) → ∃i1∃j1(TemporalInterval(i1) ∧ TemporalInterval(j1) ∧ occupiesTemporalRegion(i,i1) ∧ occupiesTemporalRegion(j,j1) ∧ occursSimultaneouslyWith(i1,j1))", "LA5: ProcessBoundary(i) ∧ ProcessBoundary(j) ∧ occursSimultaneouslyWith(i,j) → ∃i1∃j1(TemporalInstant(i1) ∧ TemporalInstant(j1) ∧ occupiesTemporalRegion(i,i1) ∧ occupiesTemporalRegion(j,j1) ∧ occursSimultaneouslyWith(i1,j1))"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two time instants when they are simultaneous or between two intervals when they have same first and last instants or between two processes or two process boundaries when their temporal extents are the same"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: if i 'occurs simultaneously with' j then either i and j are both ‘temporal instant’, or both are ‘temporal interval’ or both are ‘process’ or both are ‘process boundary’", "LA2: If both i and j are both ‘temporal instant’ and i 'occurs simoultaneously with' j then 'temporal instant value expression' of i is equal to the 'temporal instant value expression' of j", "LA3: If i and j are both ‘temporal interval’ and i 'occurs simoultaneously with' j then the 'first instant of' i 'occurs simoultaneously with' the 'first instant of' j and the 'last instant of' i 'occurs simoultaneously with' the 'last instant of' j", "LA4: If both i and j are ‘process’ and i 'occurs simoultaneously with' j then the ‘temporal interval’ occupied by i ‘occurs simoultaneously with’ the ‘temporal interval’ occupied by j", "LA5: If i and j are both ‘process boundary’ and i 'occurs simoultaneously with' j then the ‘temporal instant’ that i occupies 'occurs simoultaneously with' ‘temporal instant’ that j occupies"],
      label: {"en-us": "occurs simultaneously with"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ), "http://purl.obolibrary.org/obo/BFO_0000203")
        ),
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#SymmetricProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :prescribedBy,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "some Artifact or Facility is modeled by a blueprint; a set of rules to be followed while acting in a role within a profession are prescribed by a professional code of conduct; tasks that need to be performed to achieve the Objectives of the Operation are prescribed by the Operation Plan"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to an information content entity that the information content entity serves as a collection of rules or guide for if the entity is something that unfolds in time (occurrent), or as a model if the entity is someone or something physical or digital (continuant)"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/prescribes",
      label: {"en-us": "prescribed by"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/isSubjectOf",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :prescribes,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/InformationContentEntity",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a blueprint serves as a model of some Artifact or Facility; a professional code of conduct serves as a set of rules to be followed while acting in a role within that profession; an Operations Plan serves as a guide for the tasks that need to be performed to achieve the Objectives of the Operation"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://www.ontologyrepository.com/CommonCoreOntologies/Mid/InformationEntityOntology",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an information content entity to an entity such that the information content entity serves as a collection of rules or guide for the entity if the entity is something that unfolds in time (occurrent), or as a model if the entity is someone or something physical or digital (continuant)"},
      label: {"en-us": "prescribes"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "https://spec.industrialontologies.org/ontology/core/Core/isAbout",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :processCharacteristicOf,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/ProcessCharacteristic",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "constant production rate is the process characteristic of a product production process; temperature change of 1C/min is the process characteristic of a heating process"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation between a characteristic and the process it is a characteristic of"},
      label: {"en-us": "process characteristic of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000015",
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :qualityOf,
      domain: "http://purl.obolibrary.org/obo/BFO_0000019",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "this red color is a quality of this apple"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/RO_0000080",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "qualityOf(x,y) → Quality(x) ∧ IndependentContinuant(y) ∧ inheresIn(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a quality to an independent continuant (the bearer), in which the quality specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x disposition of y holds when x is a 'quality' and y is a 'independent continuant' and x is 'inheres in' y",
      label: {"en-us": "quality of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000004",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000197",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :recognizedByAtSomeTime,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a failure event is recognized by an operator that results in information about the event such as the time of occurrence and the description about the failure; a defect on a part is recognized by a quality control engineer that results in information about the defect such as the nature of the defect and the cause of the defect"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to an agent that is able to describe the entity or is able to associate an information content entity that describes the entity, at some time"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/recognizesAtSomeTime",
      label: {"en-us": "recognized by at some time"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :recognizesAtSomeTime,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/Agent",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "operator recognizes a failure event that results in information about the event such as the time of occurrence and the description about the failure, a quality control engineer recognizes a defect on a part that results in information about the defect such as the nature of the defect and the cause of the defect"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": ["Recognition is preceded by an observation of an entity that is related to the entity being recognized or the entity being recognized is an entity that is an attribute of the entity being observed", "this property was not put under participates in at some time because the target of recognition can be continuant or an occurent and in the case of an occurent an agent that recognizes the occurent might not participate in that occurent"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an agent to an entity that the agent is able to describe the entity or is able to associate an information content entity that describes the entity, at some time"},
      label: {"en-us": "recognizes at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :requirementSatisfiedBy,
      domain: "https://spec.industrialontologies.org/ontology/core/Core/RequirementSpecification",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a UML requirement specification is satisfied by a a piece of software; functional requirement specification of a car is satisfied by its desgn specification"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a requirement specification to an entity that conforms to the requirement specification"},
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/satisfiesRequirement",
      label: {"en-us": "requirement satisfied by"},
      range: "http://purl.obolibrary.org/obo/BFO_0000001",
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :roleOf,
      domain: "http://purl.obolibrary.org/obo/BFO_0000023",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "this investigator role is a role of this person"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/RO_0000081",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "roleOf(x,y) → Role(x) ∧ IndependentContinuant(y) ∧ inheresIn(x,y)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from a role to an independent continuant (the bearer), in which the role specifically depends on the bearer for its existence"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "x disposition of y holds when x is a 'role' and y is a 'independent continuant' and x is 'inheres in' y",
      label: {"en-us": "role of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000004",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000197",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :satisfiesRequirement,
      domain: "http://purl.obolibrary.org/obo/BFO_0000001",
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "a piece of software satisfies a UML requirement specification, a design specification of a car satisfies its functional requirement specification"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation from an entity to a requirement specification that the entity conforms to"},
      label: {"en-us": "satisfies requirement"},
      range: "https://spec.industrialontologies.org/ontology/core/Core/RequirementSpecification",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :temporallyFinishedBy,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "A delivery process is temporally finished by the generation of “proof of delivery”; a football match is temporally finished by the Referee’s final whistle; every week is temporally finished by a Sunday."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "temporallyFinishedBy(x,y) ↔ temporallyFinishes(y,x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the last instant of the temporal extent of j is the same as the last instant of the temporal extent of i and the first instant of i is precedes the first instant of j"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "'temporally finished by' and 'temporally finishes' are inverse relations",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/temporallyFinishes",
      label: {"en-us": "temporally finished by"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :temporallyFinishes,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "The generation of “proof of delivery” temporally finishes the delivery process; Referee’s final whistle temporally finishes the football match; Sunday temporally finishes the week."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: temporallyFinishes(i,j) → (TemporalInterval(i) ∧ TemporalInterval(j)) ∨ (Process(i) ∧ Process(j))", "LA2: TemporalInterval(i) ∧ TemporalInterval(j) ∧ temporallyFinishes(i,j) → ∃i1∃i2∃j1∃j2(TemporalInstant(i1) ∧ TemporalInstant(i2) ∧ TemporalInstant(j1) ∧ TemporalInstant(j2) ∧ hasFirstInstant(i,i1) ∧ hasLastInstant(i,i2) ∧ hasFirstInstant(j,j1) ∧ hasLastInstant(j,j2) ∧ occursSimultaneouslyWith(i2,j2) ∧ precedes(j1,i1))", "LA3: Process(i) ∧ Process(j) ∧ temporallyFinishes(i,j) → ∃i1∃j1(TemporalInterval(i1) ∧ TemporalInterval(j1) ∧ occupiesTemporalRegion(i,i1) ∧ occupiesTemporalRegion(j,j1) ∧ temporallyFinishes(i1,j1))", "LA4: temporallyFinishes(i,j) ↔ ∃k∃l(meets(i,k)∧meets(j,k) ∧ before(l,i) ∧ meets(l,j))"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the last instant of the temporal extent of i is the same as the last instant of the temporal extent of j and the first instant of j is precedes the first instant of i"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: If i 'temporally finishes' j then either both are 'temporal intervals' or both are 'process'", "LA2: If both i and j are 'temporal intervals' and i 'temporally finishes' j then the 'last instant’ of i ‘occurs simultaneously with’ the 'last instant of' j and the 'first instant of' j 'precedes' the 'first instant’ of i", "LA3: If both i and j are 'process' and i 'temporally finishes' j then the 'temporal interval' that i occupies 'temporally finishes' the 'temporal interval' that j occupies", "LA4: i 'temporally finishes' j if and only if there exists k such that i 'meets' k and j 'meets' k, and there exists l that is 'before' i and 'meets' j"],
      label: {"en-us": "temporally finishes"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :temporallyOverlaps,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "When two plates are being welded at a joint, the cooling of a previously welded point temporally overlaps the heating of the point which is currently being welded; the sending process temporally overlaps the receiving process in a transaction process; Ancient Egyptian civilization (c. 3000 BCE - 30 BCE) temporally overlapped the Sumerian civilization (c. 3500 BCE - c. 2000 BCE) in Mesopotamia and the Indus Valley Civilization (c. 2600 BCE - c. 1900 BCE) in South Asia."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: temporallyOverlaps(i,j) → (TemporalInterval(i) ∧ TemporalInterval(j)) ∨ (Process(i) ∧ Process(j))", "LA2: TemporalInterval(i) ∧ TemporalInterval(j) ∧ temporallyOverlaps(i,j) → ∃i1∃i2∃j1∃j2(TemporalInstant(i1) ∧ TemporalInstant(i2) ∧ TemporalInstant(j1) ∧ TemporalInstant(j2) ∧ hasFirstInstant(i,i1) ∧ hasLastInstant(i,i2) ∧ hasFirstInstant(j,j1) ∧ hasLastInstant(j,j2) ∧ precedes(j1,i2) ∧ precedes(i1,j1) ∧ precedes(i2,j2))", "LA3: Process(i) ∧ Process(j) ∧ temporallyOverlaps(i,j) → ∃i1∃j1(TemporalInterval(i1) ∧ TemporalInterval(j1) ∧ occupiesTemporalRegion(i,i1) ∧ occupiesTemporalRegion(j,j1) ∧ temporallyOverlaps(i1,j1))", "LA4: temporallyOverlaps(i,j) ↔ ∃k(temporallyFinishes(k,i) ∧ starts(k,j))"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals and processes i and j when the first instant of the temporal extent of i is earlier than and the last instant of the temporal extent of i is later than the first instant of the temporal extent of j, and the last instance of the temporal extent of i is earlier than the last instant of the temporal extent of j"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: If i 'temporally overlaps' j then either both are 'temporal intervals' or both are 'process'", "LA2: If both i and j are 'temporal intervals' and i 'temporally overlaps' j then the 'first instant’ of j ‘precedes’ the 'last instant of' i and the 'first instant of' i ‘precedes’ the 'first instant’ of j and the 'last instant of' i ‘precedes’ the 'last instant of' j", "LA3: If both i and j are 'process' and i 'temporally overlaps' j then the 'temporal interval' that i occupies 'temporally overlaps' the 'temporal interval' that j occupies", "LA4: i 'temporally overlaps' j if and only if there exists k that 'temporally finishes' i and 'temporally starts' j"],
      label: {"en-us": "temporally overlaps"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :temporallyStartedBy,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "An internal combustion engine is temporally started (running) by the process of cranking; some machine is temporally started (running) by pressing a switch; every year is temporally started by the New Year’s Day."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": "temporallyStartedBy(x,y) ↔ temporallyStarts(y,x)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the first instant of the temporal extent of j is the same as first the instant of the temporal extent of i and the last instant of j precedes the last instant of i"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": "'temporally started by' and 'temporally starts' are inverse relations",
      inverseOf: "https://spec.industrialontologies.org/ontology/core/Core/temporallyStarts",
      label: {"en-us": "temporally started by"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      subPropertyOf: "http://www.w3.org/2002/07/owl#topObjectProperty",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :temporallyStarts,
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      "http://www.w3.org/2004/02/skos/core#example": {"en-us": "the process of cranking temporally starts (the running of) an internal combustion engine; the pressing of a switch temporally starts (the running of) some machine; the New Year’s Day temporally starts a year."},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://dl.acm.org/doi/10.1145/182.358434",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/firstOrderLogicAxiom": ["LA1: temporallyStarts(i,j) → (TemporalInterval(i) ∧ TemporalInterval(j)) ∨ (Process(i) ∧ Process(j))", "LA2: TemporalInterval(i) ∧ TemporalInterval(j) ∧ temporallyStarts(i,j) → ∃i1∃i2∃j1∃j2(TemporalInstant(i1) ∧ TemporalInstant(i2) ∧ TemporalInstant(j1) ∧ TemporalInstant(j2) ∧ hasFirstInstant(i,i1) ∧ hasLastInstant(i,i2) ∧ hasFirstInstant(j,j1) ∧ hasLastInstant(j,j2) ∧ occursSimultaneouslyWith(i1,j1) ∧ precedes(i2,j2))", "LA3: Process(i) ∧ Process(j) ∧ temporallyStarts(i,j) → ∃i1∃j1(TemporalInterval(i1) ∧ TemporalInterval(j1) ∧ occupiesTemporalRegion(i,i1) ∧ occupiesTemporalRegion(j,j1) ∧ temporallyStarts(i1,j1))", "LA4: temporallyStarts(i,j) ↔ ∃k∃l(meets(k,i) ∧ meets(k,j) ∧ before(i,l) ∧ meets(j,l))"],
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {"en-us": "relation that holds between two intervals or processes i and j when the first instant of the temporal extent of i is the same as first the instant of the temporal extent of j and the last instant of i precedes the last instant of j"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/semiFormalNaturalLanguageAxiom": ["LA1: If i 'temporally starts' j then either both are 'temporal intervals' or both are 'process'", "LA2: If both i and j are 'temporal intervals' and i 'temporally starts' j then the 'first instant’ of i ‘occurs simultaneously with’ the 'first instant of' j and the 'last instant of' i 'precedes' the 'last instant of' j", "LA3: If both i and j are 'process' and i 'temporally starts' j then the 'temporal interval' that i occupies 'temporally starts' the 'temporal interval' that j occupies", "LA4: i 'temporally starts' j if and only if there exists k that 'meets' i and j and there exists l such that i is 'before' l and j 'meets' l"],
      label: {"en-us": "temporally starts"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", term(
            "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": "1. The ‘first instant of’ a ‘temporal interval’ should ‘precede’ the ‘last instant of’ that ‘temporal interval’. Therefore, the date-time asserted (i.e., ‘has date-time instant value’ of the ‘temporal instant value expression’ that ‘is value expression of at all times’ of the ‘temporal instant’) for the first instant should be before the last instant in terms their positions in the corresponding calendar and clock system. For example, the first instant and last instant of a ‘temporal interval’ are 2002-10-10T17:00:00Z and 2002-10-11T01:40:00Z. \n2. If only one date-time is available for the interval due to lack of data or an interval being smaller than the tick time (the smallest duration by which the time progresses) then the date-time should be asserted either only for first instant or only for last instant of every interval uniformly for the entire knowledge base. For example, Barack Obama gained the role of presidency on 20 January 2009 should be modeled as the process p of type ‘gain of role’ ‘occupies temporal region’ r (a ‘temporal interval’) which ‘has last instant’ i (a ‘temporal instant’) which ‘has value expression at all times’ v (a ‘temporal instant value expression’) which ‘has data-time value’ 2009-01-20T00:00:00Z."
          ))
        ),
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
  end
end
