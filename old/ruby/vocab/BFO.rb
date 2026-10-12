# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from http://purl.obolibrary.org/obo/
require 'rdf'
module BFO
  # @!parse
  #   # Vocabulary for <http://purl.obolibrary.org/obo/>
  #   #
  #   class BFO < RDF::Vocabulary
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000001
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000002
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000003
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000004
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000006
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000008
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000009
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000011
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000015
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000016
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000017
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000018
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000019
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000020
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000023
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000024
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000026
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000027
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000028
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000029
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000030
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000031
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000034
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000035
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000038
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000040
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000140
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000141
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000142
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000145
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000146
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000147
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000148
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000182
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000202
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000203
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000054
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000055
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000056
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000057
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000058
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000059
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000062
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000063
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000066
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000082
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000084
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000101
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000108
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000110
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000111
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000113
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000115
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000117
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000118
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000121
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000124
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000127
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000129
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000132
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000136
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000137
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000138
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000139
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000153
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000163
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000164
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000165
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000166
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000167
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000170
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000171
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000172
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000173
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000174
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000175
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000176
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000177
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000178
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000181
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000183
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000184
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000185
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000194
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000195
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000196
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000197
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000199
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000200
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000210
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000211
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000216
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000217
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000218
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000219
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000220
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000221
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000222
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000223
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BFO_0000224
  #
  #   end
  BFO = Class.new(RDF::StrictVocabulary("http://purl.obolibrary.org/obo/")) do

    # Class definitions
    term :BFO_0000001,
      definition: {en: "(Elucidation) An entity is anything that exists or has existed or will exist"},
      "http://purl.org/dc/elements/1.1/identifier": "001-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Julius Caesar, the Second World War, your body mass index, Verdi's Requiem."},
      label: {en: "entity"},
      prefLabel: {en: "entity"},
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000002,
      definition: {en: "(Elucidation) A continuant is an entity that persists, endures, or continues to exist through time while maintaining its identity"},
      "http://purl.org/dc/elements/1.1/identifier": "008-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A human being, a tennis ball, a cave, a region of space, someone's temperature."},
      label: {en: "continuant"},
      prefLabel: {en: "continuant"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000001", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000002",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000176",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000003,
      definition: {en: "(Elucidation) An occurrent is an entity that unfolds itself in time or it is the start or end of such an entity or it is a temporal or spatiotemporal region"},
      "http://purl.org/dc/elements/1.1/identifier": "077-BFO",
      "http://www.w3.org/2002/07/owl#disjointWith": "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for process, history, process boundary, spatiotemporal region, zero-dimensional temporal region, one-dimensional temporal region, temporal interval, temporal instant."},
      label: {en: "occurrent"},
      prefLabel: {en: "occurrent"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000001",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000004,
      definition: {en: "b is an independent continuant =Def b is a continuant which is such that there is no c such that b s-depends on c and no c such that b g-depends on c"},
      "http://purl.org/dc/elements/1.1/identifier": "017-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "An atom, a molecule, an organism, a heart, a chair, the bottom right portion of a human torso, a leg; the interior of your mouth; a spatial region; an orchestra."},
      label: {en: "independent continuant"},
      prefLabel: {en: "independent continuant"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000002", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000004",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000176",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000006,
      definition: {en: "(Elucidation) A spatial region is a continuant entity that is a continuant part of the spatial projection of a portion of spacetime at a given time"},
      "http://purl.org/dc/elements/1.1/identifier": "035-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for zero-dimensional spatial region, one-dimensional spatial region, two-dimensional spatial region, three-dimensional spatial region."},
      label: {en: "spatial region"},
      prefLabel: {en: "spatial region"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000141", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000006",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000176",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000008,
      definition: {en: "(Elucidation) A temporal region is an occurrent over which processes can unfold"},
      "http://purl.org/dc/elements/1.1/identifier": "100-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for zero-dimensional temporal region and one-dimensional temporal region."},
      label: {en: "temporal region"},
      prefLabel: {en: "temporal region"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000003", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000008",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000132",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000008",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000139",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000009,
      definition: {en: "(Elucidation) A two-dimensional spatial region is a spatial region that is a whole consisting of a surface together with zero or more surfaces and/or spatial regions of lower dimension as parts"},
      "http://purl.org/dc/elements/1.1/identifier": "039-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The surface of a sphere-shaped part of space, an infinitely thin plane in space."},
      label: {en: "two-dimensional spatial region"},
      prefLabel: {en: "two-dimensional spatial region"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000006", term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000009", "http://purl.obolibrary.org/obo/BFO_0000026", "http://purl.obolibrary.org/obo/BFO_0000018")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000011,
      definition: {en: "(Elucidation) A spatiotemporal region is an occurrent that is an occurrent part of spacetime"},
      "http://purl.org/dc/elements/1.1/identifier": "095-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The spatiotemporal region occupied by the development of a cancer tumour, the spatiotemporal region occupied by an orbiting satellite."},
      "http://www.w3.org/2004/02/skos/core#scopeNote": {en: "'Spacetime' here refers to the maximal instance of the universal spatiotemporal region."},
      label: {en: "spatiotemporal region"},
      prefLabel: {en: "spatiotemporal region"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000003", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000011",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000132",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000011",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000139",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000015,
      definition: {en: "(Elucidation) p is a process means p is an occurrent that has some temporal proper part and for some time t, p has some material entity as participant at t"},
      "http://purl.org/dc/elements/1.1/identifier": "083-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "An act of selling, the life of an organism, a process of sleeping, a process of cell-division, a beating of the heart, a process of meiosis, the taxiing of an aircraft, the programming of a computer."},
      label: {en: "process"},
      prefLabel: {en: "process"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000003", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000015",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000132",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000015",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000139",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000117",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000016,
      altLabel: {en: "internally-grounded realizable entity"},
      definition: {en: "(Elucidation) b is a disposition means: b is a realizable entity & b is such that if it ceases to exist, then its bearer is physically changed, & b's realization occurs when and because this bearer is in some special physical circumstances, & this realization occurs in virtue of the bearer's physical make-up"},
      "http://purl.org/dc/elements/1.1/identifier": "062-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "An atom of element X has the disposition to decay to an atom of element Y; the cell wall is disposed to transport cellular material through endocytosis and exocytosis; certain people have a predisposition to colon cancer; children are innately disposed to categorize objects in certain ways."},
      label: {en: "disposition"},
      prefLabel: {en: "disposition"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000017",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000017,
      definition: {en: "(Elucidation) b is a realizable entity means: b is a specifically dependent continuant that inheres in some independent continuant which is not a spatial region and is of a type some instances of which are realized in processes of a correlated type"},
      "http://purl.org/dc/elements/1.1/identifier": "058-BFO",
      "http://www.w3.org/2002/07/owl#disjointWith": "http://purl.obolibrary.org/obo/BFO_0000019",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The role of being a doctor, the role of this boundary to delineate where Utah and Colorado meet, the function of your reproductive organs, the disposition of your blood to coagulate, the disposition of this piece of metal to conduct electricity."},
      label: {en: "realizable entity"},
      prefLabel: {en: "realizable entity"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000020",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000018,
      definition: {en: "(Elucidation) A zero-dimensional spatial region is one or a collection of more than one spatially disjoint points in space"},
      "http://purl.org/dc/elements/1.1/identifier": "037-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The spatial region occupied at some time instant by the North Pole."},
      label: {en: "zero-dimensional spatial region"},
      prefLabel: {en: "zero-dimensional spatial region"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000006", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000018",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000019,
      definition: {en: "(Elucidation) a quality is a specifically dependent continuant that, in contrast to roles and dispositions, does not require any further process in order to be realized"},
      "http://purl.org/dc/elements/1.1/identifier": "055-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The colour of a tomato, the ambient temperature of this portion of air, the length of the circumference of your waist, the shape of your nose, the shape of your nostril, the mass of this piece of gold."},
      label: {en: "quality"},
      prefLabel: {en: "quality"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000020",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000020,
      definition: {en: "b is a specifically dependent continuant =Def b is a continuant & there is some independent continuant c which is not a spatial region & which is such that b s-depends on c"},
      "http://purl.org/dc/elements/1.1/identifier": "050-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "(with one bearer) The mass of this tomato, the pink colour of a medium rare piece of grilled filet mignon at its centre, the smell of this portion of mozzarella, the disposition of this fish to decay, the role of being a doctor, the function of this heart: to pump blood, the shape of this hole; (with multiple bearers:) John's love for Mary, the ownership relation between John and this statue, the relation of authority between John and his subordinates."},
      "http://www.w3.org/2004/02/skos/core#scopeNote": {en: "On the multiple bearers case, see relational quality."},
      label: {en: "specifically dependent continuant"},
      prefLabel: {en: "specifically dependent continuant"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000002",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000023,
      altLabel: {en: "externally-grounded realizable entity"},
      definition: {en: "(Elucidation) b is a role means: b is a realizable entity & b exists because there is some single bearer that is in some special physical, social, or institutional set of circumstances in which this bearer does not have to be & b is not such that, if it ceases to exist, then the physical make-up of the bearer is thereby changed"},
      "http://purl.org/dc/elements/1.1/identifier": "061-BFO",
      "http://www.w3.org/2002/07/owl#disjointWith": "http://purl.obolibrary.org/obo/BFO_0000016",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The priest role, the student role, the role of subject in a clinical trial, the role of a stone in marking a property boundary, the role of a boundary to demarcate two neighbouring administrative territories, the role of a building in serving as a military target."},
      label: {en: "role"},
      prefLabel: {en: "role"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000017",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000024,
      definition: {en: "(Elucidation) a fiat object part b is a material entity which is such that for all times t, if b exists at t then there is some object c such that b is a proper continuant part of c at t and b is demarcated from the remainder of c by one or more fiat surfaces"},
      "http://purl.org/dc/elements/1.1/identifier": "027-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The upper and lower lobes of the left lung, the dorsal and ventral surfaces of the body, the Western hemisphere of the Earth, the FMA:regional parts of an intact human body."},
      label: {en: "fiat object part"},
      prefLabel: {en: "fiat object part"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000026,
      definition: {en: "(Elucidation) A one-dimensional spatial region is a whole consisting of a line together with zero or more lines and/or points as parts"},
      "http://purl.org/dc/elements/1.1/identifier": "038-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "An edge of a cube-shaped portion of space, a line connecting two points, two parallel lines extended in space."},
      label: {en: "one-dimensional spatial region"},
      prefLabel: {en: "one-dimensional spatial region"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000006", term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000026", "http://purl.obolibrary.org/obo/BFO_0000018")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000027,
      definition: {en: "(Elucidation) an object aggregate is a material entity consisting exactly of a plurality (≥1) of objects as member parts which together form a unit"},
      "http://purl.org/dc/elements/1.1/identifier": "025-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The aggregate of the musicians in a symphony orchestra and their instruments, the aggregate of bearings in a constant velocity axle joint, the nitrogen atoms in the atmosphere, a collection of cells in a blood biobank. NOTE 1: 'Exactly' means that there are no parts of the object aggregate other than its member parts. NOTE 2: The unit can, at certain times, consist of exactly one object, for example, when a wolf litter loses all but one of its pups, but it must at some time have a plurality of member parts."},
      label: {en: "object aggregate"},
      prefLabel: {en: "object aggregate"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000028,
      definition: {en: "(Elucidation) A three-dimensional spatial region is a whole consisting of a spatial volume together with zero or more spatial volumes and/or spatial regions of lower dimension as parts"},
      "http://purl.org/dc/elements/1.1/identifier": "040-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A cube-shaped region of space, a sphere-shaped region of space, the region of space occupied by all and only the planets in the solar system at some point in time."},
      label: {en: "three-dimensional spatial region"},
      prefLabel: {en: "three-dimensional spatial region"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000006", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000006",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000029,
      definition: {en: "(Elucidation) b is a site means: b is a three-dimensional immaterial entity whose boundaries either (1) (partially or wholly) coincide with the boundaries of one or more material entities or (2) have locations determined in relation to some material entity"},
      "http://purl.org/dc/elements/1.1/identifier": "034-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A hole in a portion of cheese, a rabbit hole, the Grand Canyon, the Piazza San Marco, the kangaroo-joey-containing hole of a kangaroo pouch, your left nostril (a fiat part - the opening - of your left nasal cavity), the lumen of your gut, the hold of a ship, the interior of the trunk of your car, hole in an engineered floor joist; An air traffic control region of type A is determined in terms of elevation above mean sea level of lower and upper boundaries."},
      label: {en: "site"},
      prefLabel: {en: "site"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000141", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000028",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000210",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000029", "http://purl.obolibrary.org/obo/BFO_0000040")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000176",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000029", "http://purl.obolibrary.org/obo/BFO_0000140")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000030,
      definition: {en: "(Elucidation) an object is a material entity which manifests causal unity & is of a type instances of which are maximal relative to the sort of causal unity manifested"},
      "http://purl.org/dc/elements/1.1/identifier": "024-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "An organism, a fish tank, a planet, a laptop, a valve, a block of marble, an ice cube."},
      "http://www.w3.org/2004/02/skos/core#scopeNote": {en: "A description of three primary sorts of causal unity is provided in Basic Formal Ontology 2.0. Specification and User’s Guide"},
      label: {en: "object"},
      prefLabel: {en: "object"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000031,
      altLabel: {en: "g-dependent continuant"},
      definition: {en: "(Elucidation) a generically dependent continuant is an entity that exists in virtue of the fact that there is at least one of what may be multiple copies; it is the content or the pattern that the multiple copies share"},
      "http://purl.org/dc/elements/1.1/identifier": "074-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The pdf file on your laptop, the pdf file that is a copy thereof on my laptop; the sequence of this protein molecule; the sequence that is a copy thereof in that protein molecule; the content that is shared by a string of dots and dashes written on a page and the transmitted Morse code signal; the content of a sentence; an engineering blueprint."},
      label: {en: "generically dependent continuant"},
      prefLabel: {en: "generically dependent continuant"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000002",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000034,
      definition: {en: "(Elucidation) A function is a disposition that exists in virtue of the bearer's physical make-up and this physical make-up is something the bearer possesses because it came into being either through evolution (in the case of natural biological entities) or through intentional design (in the case of artefacts), in order to realize processes of a certain sort"},
      "http://purl.org/dc/elements/1.1/identifier": "064-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The function of a hammer to drive in nails, the function of a heart pacemaker to regulate the beating of a heart through electricity."},
      label: {en: "function"},
      prefLabel: {en: "function"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000016",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000035,
      definition: {en: "p is a process boundary =Def p is a temporal part of a process & p has no proper temporal parts"},
      "http://purl.org/dc/elements/1.1/identifier": "084-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The boundary between the 2nd and 3rd year of your life."},
      label: {en: "process boundary"},
      prefLabel: {en: "process boundary"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000003", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000035",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000117",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000035",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000121",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000132",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000139",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000038,
      definition: {en: "(Elucidation) A one-dimensional temporal region is a temporal region is a whole that has a temporal interval and zero or more temporal intervals and temporal instants as parts"},
      "http://purl.org/dc/elements/1.1/identifier": "103-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The temporal region during which a process occurs."},
      label: {en: "one-dimensional temporal region"},
      prefLabel: {en: "one-dimensional temporal region"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000008", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000038",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000139",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000038", "http://purl.obolibrary.org/obo/BFO_0000148")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000121",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000040,
      definition: {en: "(Elucidation) A material entity is an independent continuant that at all times at which it exists has some portion of matter as continuant part"},
      "http://purl.org/dc/elements/1.1/identifier": "019-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A human being, the undetached arm of a human being, an aggregate of human beings."},
      label: {en: "material entity"},
      prefLabel: {en: "material entity"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000004", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000040",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000176",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000029", "http://purl.obolibrary.org/obo/BFO_0000140", "http://purl.obolibrary.org/obo/BFO_0000040")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000140,
      definition: {en: "(Elucidation) b is a continuant fiat boundary means: b is an immaterial entity that is of zero, one or two dimensions, which is such that there is no time t when b has a spatial region as continuant part at t, and whose location is determined in relation to some material entity"},
      "http://purl.org/dc/elements/1.1/identifier": "029-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for fiat point, fiat line, fiat surface."},
      label: {en: "continuant fiat boundary"},
      prefLabel: {en: "continuant fiat boundary"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000141", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000140",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000124",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ), term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000140",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000141,
      definition: {en: "a is an immaterial entity =Def a is an independent continuant which is such that there is no time t when it has a material entity as continuant part at t"},
      "http://purl.org/dc/elements/1.1/identifier": "028-BFO",
      "http://www.w3.org/2002/07/owl#disjointWith": "http://purl.obolibrary.org/obo/BFO_0000040",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for fiat point, fiat line, fiat surface, site."},
      label: {en: "immaterial entity"},
      prefLabel: {en: "immaterial entity"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000004",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000142,
      definition: {en: "(Elucidation) a fiat line is a one-dimensional continuant fiat boundary that is continuous"},
      "http://purl.org/dc/elements/1.1/identifier": "032-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The Equator, all geopolitical boundaries, all lines of latitude and longitude, the median sulcus of your tongue, the line separating the outer surface of the mucosa of the lower lip from the outer surface of the skin of the chin."},
      label: {en: "fiat line"},
      prefLabel: {en: "fiat line"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000140", term(
          allValuesFrom: term(
            type: "http://www.w3.org/2002/07/owl#Class",
            unionOf: list("http://purl.obolibrary.org/obo/BFO_0000142", "http://purl.obolibrary.org/obo/BFO_0000147")
          ),
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000145,
      definition: {en: "b is a relational quality =Def b is a quality and there exists c and d such that b and c are not identical, & b s-depends on c & b s-depends on d"},
      "http://purl.org/dc/elements/1.1/identifier": "057-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A marriage bond, an instance of love, an obligation between one person and another."},
      label: {en: "relational quality"},
      prefLabel: {en: "relational quality"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000019",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000146,
      definition: {en: "(Elucidation) a fiat surface is a two-dimensional continuant fiat boundary that is self-connected"},
      "http://purl.org/dc/elements/1.1/identifier": "033-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The surface of the Earth, the plane separating the smoking from the non-smoking zone in a restaurant"},
      label: {en: "fiat surface"},
      prefLabel: {en: "fiat surface"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000140", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000140",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000147,
      definition: {en: "(Elucidation) a fiat point is a zero-dimensional continuant fiat boundary that consists of a single point"},
      "http://purl.org/dc/elements/1.1/identifier": "031-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The geographic North Pole; the quadripoint where the boundaries of Colorado, Utah, New Mexico and Arizona meet, the point of origin of some spatial coordinate system."},
      label: {en: "fiat point"},
      prefLabel: {en: "fiat point"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000140", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000147",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000178",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000148,
      definition: {en: "(Elucidation) A zero-dimensional temporal region is a temporal region that is a whole consisting of one or more separated temporal instants as parts"},
      "http://purl.org/dc/elements/1.1/identifier": "102-BFO",
      "http://www.w3.org/2002/07/owl#disjointWith": "http://purl.obolibrary.org/obo/BFO_0000038",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A temporal region that is occupied by a process boundary; the moment at which a finger is detached in an industrial accident."},
      label: {en: "zero-dimensional temporal region"},
      prefLabel: {en: "zero-dimensional temporal region"},
      subClassOf: ["http://purl.obolibrary.org/obo/BFO_0000008", term(
          allValuesFrom: "http://purl.obolibrary.org/obo/BFO_0000148",
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000121",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        )],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000182,
      definition: {en: "(Elucidation) A history is a process that is the sum of the totality of processes taking place in the spatiotemporal region occupied by the material part of a material entity"},
      "http://purl.org/dc/elements/1.1/identifier": "138-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The life of an organism from the beginning to the end of its existence."},
      label: {en: "history"},
      prefLabel: {en: "history"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000015",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000202,
      definition: {en: "(Elucidation) a temporal interval is a one-dimensional temporal region that is continuous, thus without gaps or breaks"},
      "http://purl.org/dc/elements/1.1/identifier": "155-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The year 2018."},
      "http://www.w3.org/2004/02/skos/core#scopeNote": {en: "A one-dimensional temporal region can include as parts not only temporal intervals but also temporal instants separated from other parts by gaps."},
      label: {en: "temporal interval"},
      prefLabel: {en: "temporal interval"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000038",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BFO_0000203,
      definition: {en: "(Elucidation) a temporal instant is a zero-dimensional temporal region that has no proper temporal part"},
      "http://purl.org/dc/elements/1.1/identifier": "209-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The millennium."},
      label: {en: "temporal instant"},
      prefLabel: {en: "temporal instant"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000148",
      type: "http://www.w3.org/2002/07/owl#Class"

    # Property definitions
    property :BFO_0000054,
      definition: {en: "b has realization c =Def c realizes b"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000017",
      "http://purl.org/dc/elements/1.1/identifier": "206-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for realizes"},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000055",
      label: {en: "has realization"},
      prefLabel: {en: "has realization"},
      range: "http://purl.obolibrary.org/obo/BFO_0000015",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000055,
      definition: {en: "(Elucidation) b realizes c means: b is a process & c is a realizable entity that inheres in d & for all t, if b has participant d at t then c exists at t & the type instantiated by b is correlated with the type instantiated by c"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000015",
      "http://purl.org/dc/elements/1.1/identifier": "059-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A disposition to go bald is realized in a balding process; a role of student is realized in studying processes; the pumping function of a heart is realized in processes of pumping."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000054",
      label: {en: "realizes"},
      prefLabel: {en: "realizes"},
      range: "http://purl.obolibrary.org/obo/BFO_0000017",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000056,
      definition: {en: "b participates in p at some time =Def for some time t (p has participant b at t)"},
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list(term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
              "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
              type: "http://www.w3.org/2002/07/owl#Class"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ), "http://purl.obolibrary.org/obo/BFO_0000020", "http://purl.obolibrary.org/obo/BFO_0000031")
        ),
      "http://purl.org/dc/elements/1.1/identifier": "250-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000057",
      label: {en: "participates in at some time"},
      prefLabel: {en: "participates in at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000015",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000057,
      definition: {en: "p has participant c at some time =Def for some time t (p is a process, c is a continuant, and c participates in p some way at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000015",
      "http://purl.org/dc/elements/1.1/identifier": "248-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000056",
      label: {en: "has participant at some time"},
      prefLabel: {en: "has participant at some time"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list(term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
              "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
              type: "http://www.w3.org/2002/07/owl#Class"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ), "http://purl.obolibrary.org/obo/BFO_0000020", "http://purl.obolibrary.org/obo/BFO_0000031")
        ),
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000058,
      definition: {en: "a g-dependent continuant c is concretized at some time by an s-dependent continuant or process b =Def for some time t, b concretizes c at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000031",
      "http://purl.org/dc/elements/1.1/identifier": "258-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000059",
      label: {en: "is concretized by at some time"},
      prefLabel: {en: "is concretized by at some time"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000020", "http://purl.obolibrary.org/obo/BFO_0000015")
        ),
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000059,
      definition: {en: "an s-dependent continuant b concretizes a g-dependent continuant c at some time =Def for some time t (c is the pattern or content which b shares at t with actual or potential copies)"},
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000020", "http://purl.obolibrary.org/obo/BFO_0000015")
        ),
      "http://purl.org/dc/elements/1.1/identifier": "256-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000058",
      label: {en: "concretizes at some time"},
      prefLabel: {en: "concretizes at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000031",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000062,
      definition: {en: "b preceded by c =Def b precedes c"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "213-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The temporal region occupied by the second half of the match is preceded by the temporal region occupied by the first half of the match."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000063",
      label: {en: "preceded by"},
      prefLabel: {en: "preceded by"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :BFO_0000063,
      definition: {en: "(Elucidation) If o, o' are occurrents and t is the temporal extent of o and t' is the temporal extent of o' then o precedes o' means: either last instant of o is before first instant of o'  or last instant of o = first instant of o' and neither o nor o' are temporal instants"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "270-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The temporal region occupied by Mary's birth precedes the temporal region occupied by Mary's death. NOTE 1: Each temporal region is its own temporal extent. The temporal extent of a spatiotemporal region is the temporal region it temporally projects onto. The temporal extent of a process or process boundary that occupies temporal region t is t. NOTE 2: Precedes defines a strict partial order on occurrents."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000062",
      label: {en: "precedes"},
      prefLabel: {en: "precedes"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :BFO_0000066,
      definition: {en: "b occurs in c =Def b is a process or a process boundary and c is a material entity or immaterial entity & there exists a spatiotemporal region r and b occupies spatiotemporal region r & for all t, if b exists at t then c exists at t & there exist spatial regions s and s' where b spatially projects onto s at t & c occupies spatial region s' at t & s is a continuant part of s' at t"},
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035")
        ),
      "http://purl.org/dc/elements/1.1/identifier": "143-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A process of digestion occurs in the interior of an organism, a process of loading artillery rounds into a tank cannon occurs in the interior of the tank."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000183",
      label: {en: "occurs in"},
      prefLabel: {en: "occurs in"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", "http://purl.obolibrary.org/obo/BFO_0000029")
        ),
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000082,
      definition: {en: "b located in c at all times =Def for all times t, b exists at t implies (b and c are independent continuants and not spatial regions, and the spatial region which b occupies at t is a (proper or improper) continuant part of the spatial region which c occupies at t)"},
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://purl.org/dc/elements/1.1/identifier": "235-BFO",
      label: {en: "located in at all times"},
      prefLabel: {en: "located in at all times"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000171",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :BFO_0000084,
      altLabel: {en: "g-depends on at some time"},
      definition: {en: "a g-dependent continuant b g-depends on an independent continuant c at some time =Def for some time t (there inheres in c an s-dependent continuant which concretizes b at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000031",
      "http://purl.org/dc/elements/1.1/identifier": "252-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000101",
      label: {en: "generically depends on at some time"},
      prefLabel: {en: "generically depends on at some time"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000101,
      definition: {en: "b is carrier of c at some time =Def for some time t (c g-depends on b at t)"},
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://purl.org/dc/elements/1.1/identifier": "254-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000084",
      label: {en: "is carrier of at some time"},
      prefLabel: {en: "is carrier of at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000031",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000108,
      definition: {en: "(Elucidation) exists at is a relation between a particular and some temporal region at which the particular exists"},
      "http://purl.org/dc/elements/1.1/identifier": "118-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "First World War exists at 1914-1916, Mexico exists at January 1, 2000."},
      label: {en: "exists at"},
      prefLabel: {en: "exists at"},
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000110,
      definition: {en: "b has continuant part c at all times =Def for all times t, b exists at t implies (b and c are continuants & b is a part of c at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://purl.org/dc/elements/1.1/identifier": "223-BFO",
      label: {en: "has continuant part at all times"},
      prefLabel: {en: "has continuant part at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000178",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000111,
      definition: {en: "b has proper continuant part c at all times =Def c proper continuant part of b at all times"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://purl.org/dc/elements/1.1/identifier": "227-BFO",
      label: {en: "has proper continuant part at all times"},
      prefLabel: {en: "has proper continuant part at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      subPropertyOf: ["http://purl.obolibrary.org/obo/BFO_0000110", "http://purl.obolibrary.org/obo/BFO_0000174"],
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000113,
      definition: {en: "b has material basis c at all times =Def For all times t, b exists at t implies (b is a disposition & c is a material entity & there is some d bearer of b & c continuant part of d at t & d has disposition b because c continuant part of d at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000016",
      "http://purl.org/dc/elements/1.1/identifier": "243-BFO",
      label: {en: "has material basis at all times"},
      prefLabel: {en: "has material basis at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000040",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000218",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000115,
      definition: {en: "b has member part c at some time =Def for some time t (c member part of b at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000040",
      "http://purl.org/dc/elements/1.1/identifier": "230-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000129",
      label: {en: "has member part at some time"},
      prefLabel: {en: "has member part at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000040",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000178",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000117,
      definition: {en: "(Elucidation) b has occurrent part c means: c is a part of b & b and c are occurrents"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "202-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Mary's life has occurrent part Mary's 5th birthday."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000132",
      label: {en: "has occurrent part"},
      prefLabel: {en: "has occurrent part"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :BFO_0000118,
      definition: {en: "b has proper occurrent part c =Def b has occurrent part c & b and c are not identical"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "154-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for has occurrent part."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000138",
      label: {en: "has proper occurrent part"},
      prefLabel: {en: "has proper occurrent part"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000117",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000121,
      definition: {en: "b has temporal part c =Def c temporal part of b"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "211-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Your life has temporal part the first year of your life."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000139",
      label: {en: "has temporal part"},
      prefLabel: {en: "has temporal part"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000117",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :BFO_0000124,
      definition: {en: "b location of c at some time =Def for some time t (c located in b at t)"},
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://purl.org/dc/elements/1.1/identifier": "236-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000171",
      label: {en: "location of at some time"},
      prefLabel: {en: "location of at some time"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000127,
      definition: {en: "b material basis of c at some time =Def at some time t (c has material basis b at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000040",
      "http://purl.org/dc/elements/1.1/identifier": "244-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000218",
      label: {en: "material basis of at some time"},
      prefLabel: {en: "material basis of at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000016",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000129,
      definition: {en: "b member part of c at some time =Def for some time t (b is an object & there is at t a mutually exhaustive and pairwise disjoint partition of c into objects x1, ..., xn (for some n ≠ 1) with b = xi (for some 1 <= i <= n))"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000040",
      "http://purl.org/dc/elements/1.1/identifier": "228-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000115",
      label: {en: "member part of at some time"},
      prefLabel: {en: "member part of at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000040",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000176",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000132,
      definition: {en: "(Elucidation) b occurrent part of c =Def c has occurrent part b"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "003-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Mary's 5th birthday is an occurrent part of Mary's life; the first set of the tennis match is an occurrent part of the tennis match."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000117",
      label: {en: "occurrent part of"},
      prefLabel: {en: "occurrent part of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :BFO_0000136,
      definition: {en: "b proper temporal part of c =Def b temporal part of c & not (b = c)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "116-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for temporal part of."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000181",
      label: {en: "proper temporal part of"},
      prefLabel: {en: "proper temporal part of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000139",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000137,
      definition: {en: "b proper continuant part of c at all times =Def for all times t, b exists at t implies (b continuant part of c at t & not (c proper continuant part of b at t))"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://purl.org/dc/elements/1.1/identifier": "225-BFO",
      label: {en: "proper continuant part of at all times"},
      prefLabel: {en: "proper continuant part of at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      subPropertyOf: ["http://purl.obolibrary.org/obo/BFO_0000175", "http://purl.obolibrary.org/obo/BFO_0000177"],
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :BFO_0000138,
      definition: {en: "b proper occurrent part of c =Def b occurrent part of c & b and c are not identical"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "005-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for occurrent part of."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000118",
      label: {en: "proper occurrent part of"},
      prefLabel: {en: "proper occurrent part of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000132",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000139,
      definition: {en: "b temporal part of c =Def b occurrent part of c & either b and c are temporal regions or b and c are spatiotemporal regions & b temporally projects onto an occurrent part of the temporal region that c temporally projects onto or b and c are processes or process boundaries & b occupies a temporal region that is an occurrent part of the temporal region that c occupies"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "078-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Your heart beating from 4pm to 5pm today is a temporal part of the process of your heart beating; the 4th year of your life is a temporal part of your life, as is the process boundary which separates the 3rd and 4th years of your life; the first quarter of a game of football is a temporal part of the whole game."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000121",
      label: {en: "temporal part of"},
      prefLabel: {en: "temporal part of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000132",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :BFO_0000153,
      definition: {en: "(Elucidation) temporally projects onto is a relation between a spatiotemporal region s and some temporal region which is the temporal extent of s"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000011",
      "http://purl.org/dc/elements/1.1/identifier": "080-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The world line of a particle temporally projects onto the temporal region extending from the beginning to the end of the existence of the particle."},
      label: {en: "temporally projects onto"},
      prefLabel: {en: "temporally projects onto"},
      range: "http://purl.obolibrary.org/obo/BFO_0000008",
      type: ["http://www.w3.org/2002/07/owl#FunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]
    property :BFO_0000163,
      definition: {en: "b material basis of c at all times =Def for all times t, b exists at t implies (c has material basis b at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000040",
      "http://purl.org/dc/elements/1.1/identifier": "245-BFO",
      label: {en: "material basis of at all times"},
      prefLabel: {en: "material basis of at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000016",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000127",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000164,
      definition: {en: "an s-dependent continuant b concretizes a g-dependent continuant c at all times =Def for all times t, b exists at t implies (c is the pattern or content which b shares at t with actual or potential copies)"},
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000020", "http://purl.obolibrary.org/obo/BFO_0000015")
        ),
      "http://purl.org/dc/elements/1.1/identifier": "257-BFO",
      label: {en: "concretizes at all times"},
      prefLabel: {en: "concretizes at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000031",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000059",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000165,
      definition: {en: "a g-dependent continuant c is concretized by an s-dependent continuant or process b at all times =Def for all times t, b exists at t implies (b concretizes c at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000031",
      "http://purl.org/dc/elements/1.1/identifier": "259-BFO",
      label: {en: "is concretized by at all times"},
      prefLabel: {en: "is concretized by at all times"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000020", "http://purl.obolibrary.org/obo/BFO_0000015")
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000058",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000166,
      definition: {en: "b participates in p at all times =Def for all times t, b exists at t implies (p has participant b at t)"},
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list(term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
              "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
              type: "http://www.w3.org/2002/07/owl#Class"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ), "http://purl.obolibrary.org/obo/BFO_0000020", "http://purl.obolibrary.org/obo/BFO_0000031")
        ),
      "http://purl.org/dc/elements/1.1/identifier": "251-BFO",
      label: {en: "participates in at all times"},
      prefLabel: {en: "participates in at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000015",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000056",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000167,
      definition: {en: "p has participant c at all times =Def for all times t, p exists at t implies (p is a process, c is a continuant, and c participates in p some way at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000015",
      "http://purl.org/dc/elements/1.1/identifier": "249-BFO",
      label: {en: "has participant at all times"},
      prefLabel: {en: "has participant at all times"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list(term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
              "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
              type: "http://www.w3.org/2002/07/owl#Class"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ), "http://purl.obolibrary.org/obo/BFO_0000020", "http://purl.obolibrary.org/obo/BFO_0000031")
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000057",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000170,
      definition: {en: "b location of c at all times =Def for all times t, b exists at t implies (c located in b at t)"},
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://purl.org/dc/elements/1.1/identifier": "237-BFO",
      label: {en: "location of at all times"},
      prefLabel: {en: "location of at all times"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000124",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000171,
      definition: {en: "b located in c at some time =Def for some time t (b and c are independent continuants and not spatial regions, and the spatial region which b occupies at t is a (proper or improper) continuant part of the spatial region which c occupies at t)"},
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://purl.org/dc/elements/1.1/identifier": "234-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000124",
      label: {en: "located in at some time"},
      prefLabel: {en: "located in at some time"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000172,
      definition: {en: "b has member part c at all times =Def for all times t, b exists at t implies (c member part b at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000040",
      "http://purl.org/dc/elements/1.1/identifier": "231-BFO",
      label: {en: "has member part at all times"},
      prefLabel: {en: "has member part at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000040",
      subPropertyOf: ["http://purl.obolibrary.org/obo/BFO_0000110", "http://purl.obolibrary.org/obo/BFO_0000115"],
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000173,
      definition: {en: "b member part of c at all times =Def for all times t, b exists at t implies (b is an object & c is an object aggregate & there is at t a mutually exhaustive and pairwise disjoint partition of c into objects x1,..., xn (for some n ≠ 1) with b = xi (for some 1 <= i <= n))"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000040",
      "http://purl.org/dc/elements/1.1/identifier": "229-BFO",
      label: {en: "member part of at all times"},
      prefLabel: {en: "member part of at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000040",
      subPropertyOf: ["http://purl.obolibrary.org/obo/BFO_0000129", "http://purl.obolibrary.org/obo/BFO_0000177"],
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000174,
      definition: {en: "b has proper continuant part c at some time =Def c proper continuant part of b at some time"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://purl.org/dc/elements/1.1/identifier": "226-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000175",
      label: {en: "has proper continuant part at some time"},
      prefLabel: {en: "has proper continuant part at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000178",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000175,
      definition: {en: "b proper continuant part of c at some time =Def for some time t (b continuant part of c at t & not (c continuant part of b at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://purl.org/dc/elements/1.1/identifier": "224-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000174",
      label: {en: "proper continuant part of at some time"},
      prefLabel: {en: "proper continuant part of at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000176",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000176,
      definition: {en: "b continuant part of c at some time =Def for some time t (b exists at t and c exists at t and b continuant part of c at t & t is a temporal region & b and c are continuants)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://purl.org/dc/elements/1.1/identifier": "221-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Milk teeth continuant part of human at some time; surgically removed tumour continuant part of organism at some time."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000178",
      label: {en: "continuant part of at some time"},
      prefLabel: {en: "continuant part of at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000177,
      definition: {en: "b continuant part of c at all times =Def for all times t, (b exists at t, implies b continuant part of c at t & t is a temporal region & b and c are continuants)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://purl.org/dc/elements/1.1/identifier": "222-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Centre of mass of a material entity continuant part of material entity at all times; continuant fiat external boundary of an object continuant part of object at all times."},
      label: {en: "continuant part of at all times"},
      prefLabel: {en: "continuant part of at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000176",
      type: ["http://www.w3.org/2002/07/owl#ObjectProperty", "http://www.w3.org/2002/07/owl#TransitiveProperty"]
    property :BFO_0000178,
      definition: {en: "b has continuant part c at some time =Def for some time t (b and c are continuants & b is a part of c at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000002",
      "http://purl.org/dc/elements/1.1/identifier": "271-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000176",
      label: {en: "has continuant part at some time"},
      prefLabel: {en: "has continuant part at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000002",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000181,
      definition: {en: "b has proper temporal part c =Def c proper temporal part of b"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000003",
      "http://purl.org/dc/elements/1.1/identifier": "212-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "As for has temporal part."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000136",
      label: {en: "has proper temporal part"},
      prefLabel: {en: "has proper temporal part"},
      range: "http://purl.obolibrary.org/obo/BFO_0000003",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000121",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000183,
      definition: {en: "b environs c =Def c occurs in b"},
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", "http://purl.obolibrary.org/obo/BFO_0000029")
        ),
      "http://purl.org/dc/elements/1.1/identifier": "267-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Mouth environs process of mastication, city environs traffic."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000066",
      label: {en: "environs"},
      prefLabel: {en: "environs"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035")
        ),
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000184,
      definition: {en: "(Elucidation) b history of c if c is a material entity and b is a history that is the unique history of c"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000182",
      "http://purl.org/dc/elements/1.1/identifier": "144-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "This life is the history of this organism."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000185",
      label: {en: "history of"},
      prefLabel: {en: "history of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: ["http://www.w3.org/2002/07/owl#FunctionalProperty", "http://www.w3.org/2002/07/owl#InverseFunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]
    property :BFO_0000185,
      definition: {en: "b has history c =Def c history of b"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000040",
      "http://purl.org/dc/elements/1.1/identifier": "145-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "This organism has history this life."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000184",
      label: {en: "has history"},
      prefLabel: {en: "has history"},
      range: "http://purl.obolibrary.org/obo/BFO_0000182",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000194,
      altLabel: {en: "s-depended on by"},
      definition: {en: "b s-depended on by c =Def c specifically depends on b"},
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000020", term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
              "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
              type: "http://www.w3.org/2002/07/owl#Class"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ))
        ),
      "http://purl.org/dc/elements/1.1/identifier": "260-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Coloured object s-depended on by colour."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000195",
      label: {en: "specifically depended on by"},
      prefLabel: {en: "specifically depended on by"},
      range: "http://purl.obolibrary.org/obo/BFO_0000020",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000195,
      altLabel: {en: "s-depends on"},
      definition: {en: "(Elucidation) b specifically depends on c means: b and c do not share common parts & b is of a nature such that at all times t it cannot exist at t unless c exists at t & b is not a boundary of c"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000020",
      "http://purl.org/dc/elements/1.1/identifier": "012-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A shape s-depends on the shaped object, hue, saturation and brightness of a colour sample s-depend on each other."},
      "http://www.w3.org/2004/02/skos/core#scopeNote": {en: "The analogue of s-dependence for occurrents is has participant."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000194",
      label: {en: "specifically depends on"},
      prefLabel: {en: "specifically depends on"},
      range: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000020", term(
            intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
              "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
              type: "http://www.w3.org/2002/07/owl#Class"
            )),
            type: "http://www.w3.org/2002/07/owl#Class"
          ))
        ),
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000196,
      definition: {en: "b bearer of c =Def c inheres in b"},
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://purl.org/dc/elements/1.1/identifier": "053-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A patch of ink is the bearer of a colour quality; an organism is the bearer of a temperature quality."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000197",
      label: {en: "bearer of"},
      prefLabel: {en: "bearer of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000020",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000194",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000197,
      definition: {en: "b inheres in c =Def b is a specifically dependent continuant & c is an independent continuant that is not a spatial region & b s-depends on c"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000020",
      "http://purl.org/dc/elements/1.1/identifier": "051-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A shape inheres in a shaped object; a mass inheres in a material entity."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000196",
      label: {en: "inheres in"},
      prefLabel: {en: "inheres in"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000195",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000199,
      definition: {en: "p occupies temporal region t =Def the spatiotemporal region occupied by p temporally projects onto t"},
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035")
        ),
      "http://purl.org/dc/elements/1.1/identifier": "132-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The Second World War occupies the temporal region September 1, 1939 - September 2, 1945."},
      label: {en: "occupies temporal region"},
      prefLabel: {en: "occupies temporal region"},
      range: "http://purl.obolibrary.org/obo/BFO_0000008",
      type: ["http://www.w3.org/2002/07/owl#FunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]
    property :BFO_0000200,
      definition: {en: "(Elucidation) p occupies spatiotemporal region s is a relation between an occurrent p and the spatiotemporal region s which is its spatiotemporal extent"},
      domain: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("http://purl.obolibrary.org/obo/BFO_0000015", "http://purl.obolibrary.org/obo/BFO_0000035")
        ),
      "http://purl.org/dc/elements/1.1/identifier": "082-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "A particle emitted by a nuclear reactor occupies the spatiotemporal region which is its trajectory."},
      label: {en: "occupies spatiotemporal region"},
      prefLabel: {en: "occupies spatiotemporal region"},
      range: "http://purl.obolibrary.org/obo/BFO_0000011",
      type: ["http://www.w3.org/2002/07/owl#FunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]
    property :BFO_0000210,
      definition: {en: "an independent continuant c that is not a spatial region occupies spatial region r at some time =Def for some time t (every continuant part of c occupies some continuant part of r at t and no continuant part of c occupies any spatial region that is not a continuant part of r at t)"},
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://purl.org/dc/elements/1.1/identifier": "232-BFO",
      label: {en: "occupies spatial region at some time"},
      prefLabel: {en: "occupies spatial region at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000006",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000211,
      definition: {en: "an independent continuant c that is not a spatial region occupies spatial region r at all times =Def for all times t, b exists at t implies (every continuant part of c occupies some continuant part of r at t and no continuant part of c occupies any spatial region that is not a continuant part of r at t)"},
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://purl.org/dc/elements/1.1/identifier": "233-BFO",
      label: {en: "occupies spatial region at all times"},
      prefLabel: {en: "occupies spatial region at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000006",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000210",
      type: ["http://www.w3.org/2002/07/owl#FunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]
    property :BFO_0000216,
      definition: {en: "b spatially projects onto c at some time =Def for some time t (b is a spatiotemporal region and c is a spatial region and c is the spatial extent of b at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000011",
      "http://purl.org/dc/elements/1.1/identifier": "246-BFO",
      label: {en: "spatially projects onto at some time"},
      prefLabel: {en: "spatially projects onto at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000006",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000217,
      definition: {en: "b spatially projects onto c at all times =Def for all times t, b exists at t implies (b is a spatiotemporal region and c is a spatial region and c is the spatial extent of b at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000011",
      "http://purl.org/dc/elements/1.1/identifier": "247-BFO",
      label: {en: "spatially projects onto at all times"},
      prefLabel: {en: "spatially projects onto at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000006",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000216",
      type: ["http://www.w3.org/2002/07/owl#FunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]
    property :BFO_0000218,
      definition: {en: "b has material basis c at some time =Def For some time t (b is a disposition & c is a material entity & there is some d bearer of b & c continuant part of d at t & d has disposition b because c continuant part of d at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000016",
      "http://purl.org/dc/elements/1.1/identifier": "242-BFO",
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000127",
      label: {en: "has material basis at some time"},
      prefLabel: {en: "has material basis at some time"},
      range: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000219,
      altLabel: {en: "g-depends on at all times"},
      definition: {en: "a g-dependent continuant b g-depends on an independent continuant c at all times =Def for all times t, b exists at t implies (there inheres in c an s-dependent continuant which concretizes b at t)"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000031",
      "http://purl.org/dc/elements/1.1/identifier": "253-BFO",
      label: {en: "generically depends on at all times"},
      prefLabel: {en: "generically depends on at all times"},
      range: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000084",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000220,
      definition: {en: "b is carrier of c at all times =Def for all times t, b exists at t implies (c g-depends on b at t)"},
      domain: term(
          intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000004", term(
            "http://www.w3.org/2002/07/owl#complementOf": "http://purl.obolibrary.org/obo/BFO_0000006",
            type: "http://www.w3.org/2002/07/owl#Class"
          )),
          type: "http://www.w3.org/2002/07/owl#Class"
        ),
      "http://purl.org/dc/elements/1.1/identifier": "255-BFO",
      label: {en: "is carrier of at all times"},
      prefLabel: {en: "is carrier of at all times"},
      range: "http://purl.obolibrary.org/obo/BFO_0000031",
      subPropertyOf: "http://purl.obolibrary.org/obo/BFO_0000101",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000221,
      definition: {en: "temporal instant t first instant of temporal region t' =Def t precedes all temporal parts of t' other than t"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000203",
      "http://purl.org/dc/elements/1.1/identifier": "268-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "An hour starting at midnight yesterday has first instant midnight yesterday."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000222",
      label: {en: "first instant of"},
      prefLabel: {en: "first instant of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000008",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000222,
      definition: {en: "t has first instant t' =Def t' first instant of t"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000008",
      "http://purl.org/dc/elements/1.1/identifier": "261-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The first hour of a year has first instant midnight on December 31."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000221",
      label: {en: "has first instant"},
      prefLabel: {en: "has first instant"},
      range: "http://purl.obolibrary.org/obo/BFO_0000203",
      type: ["http://www.w3.org/2002/07/owl#FunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]
    property :BFO_0000223,
      definition: {en: "temporal instant t last instant of temporal region t' =Def all temporal parts of t' other than t precede t"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000203",
      "http://purl.org/dc/elements/1.1/identifier": "269-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "Last midnight is the last instant of yesterday."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000224",
      label: {en: "last instant of"},
      prefLabel: {en: "last instant of"},
      range: "http://purl.obolibrary.org/obo/BFO_0000008",
      type: "http://www.w3.org/2002/07/owl#ObjectProperty"
    property :BFO_0000224,
      definition: {en: "t has last instant t' =Def t' last instant of t"},
      domain: "http://purl.obolibrary.org/obo/BFO_0000008",
      "http://purl.org/dc/elements/1.1/identifier": "215-BFO",
      "http://www.w3.org/2004/02/skos/core#example": {en: "The last hour of a year has last instant midnight December 31."},
      inverseOf: "http://purl.obolibrary.org/obo/BFO_0000223",
      label: {en: "has last instant"},
      prefLabel: {en: "has last instant"},
      range: "http://purl.obolibrary.org/obo/BFO_0000203",
      type: ["http://www.w3.org/2002/07/owl#FunctionalProperty", "http://www.w3.org/2002/07/owl#ObjectProperty"]

    # Extra definitions
    term :"bfo.owl",
      comment: "The most recent version of this file will always be in the GitHub repository https://github.com/bfo-ontology/bfo-2020",
      "http://purl.org/dc/elements/1.1/contributor": ["Alan Ruttenberg", "Albert Goldfain", "Barry Smith", "Bill Duncan", "Bjoern Peters", "Chris Mungall", "David Osumi-Sutherland", "Fabian Neuhaus", "James A. Overton", "Janna Hastings", "Jie Zheng", "Jonathan Bona", "Larry Hunter", "Leonard Jacuzzo", "Ludger Jansen", "Mark Ressler", "Mathias Brochhausen", "Mauricio Almeida", "Melanie Courtot", "Pierre Grenon", "Randall Dipert", "Robert Rovetto", "Ron Rudnicki", "Stefan Schulz", "Thomas Bittner", "Werner Ceusters", "Yongqun \"Oliver\" He"],
      "http://purl.org/dc/elements/1.1/license": "https://creativecommons.org/licenses/by/4.0/",
      "http://www.w3.org/2002/07/owl#versionIRI": "http://purl.obolibrary.org/obo/bfo/2020/bfo.owl",
      label: "BFO 2020",
      type: "http://www.w3.org/2002/07/owl#Ontology"
  end
end
