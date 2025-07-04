# -*- encoding: utf-8 -*-
# frozen_string_literal: true
# This file generated automatically using rdf vocabulary format from https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/
require 'rdf'
module IOF
  # @!parse
  #   # Vocabulary for <https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/>
  #   #
  #   # Industrial Ontology Foundry (IOF) Physical Qualities Ontology
  #   #
  #   # Physical Qualities Ontology
  #   class QualitiesPhysical < RDF::StrictVocabulary
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AcousticCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AcousticQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Adhesion
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AdhesionStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AgingTemperature
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Angle
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AnteriorPosteriorDiameter
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Area
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :AtomicMass
  #
  #     # Where the Ultimate Strength is the maximum recorded stress, the breaking strength is the last stress recorded when the break event of the experiment occures.
  #     #
  #     # Where the ultimate strength is the maximum recorded stress, the breaking strength is the last stress recorded when the break event of the experiment occurs
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BreakingStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Brittleness
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :BulkModulus
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Circumference
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ClampingPressure
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CoolingCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CreepModulus
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CreepResistance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CreepStrain
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :CreepStress
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Deformation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DeformationSpeed
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DendriticFieldSize
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Density
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Depth
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Diameter
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Displacement
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DoseEquivalent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DryMass
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Ductility
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Durability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DynamicModulus
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :DynamicViscosity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElasticModulus
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElasticStrain
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Elasticity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricCharge
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricCurrent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricFieldStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricFluxDensity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricPotential
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricalCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricalCapacitance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricalConductance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricalQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectricalResistance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectroMagneticWave
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElectromotiveForce
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EngineeringStrain
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EngineeringStress
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Enthalpy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Entropy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EnvironmentalTemperature
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Exposure
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ExtentionalViscosity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ExtinctionCoefficient
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :FatigueStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :FlexuralStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :FluidDynamicQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Force
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Frequency
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Friction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Hardness
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :HeatTransferCoefficient
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :HeatingCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Height
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Humidity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ImpactStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :IndentationHardness
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Inductance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :KinematicViscosity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Length
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LinearThermalExpansionCoefficient
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LoadCellCapacity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LossModulus
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LossTangent
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LowerYieldStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LuminousEfficacy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LuminousIntensity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MagneticFlux
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MagneticQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Malleability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Mass
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MassConcentration
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MassFlowRate
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MassFraction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MassMixRatio
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MassPotential
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MassRatio
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialComposition
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialFatigue
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MaterialProperty
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MechanicalCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MechanicalImpulse
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MechanicalQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :MechanicalStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :NumberDensity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Odor
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Odorless
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Odorous
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :OlfactoricQuantity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :OperationalStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :OpticalAbsorptance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :OpticalCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :OpticalQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :OpticalReflectance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :OpticalTransmittance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Perimeter
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PhaseVelocity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PhysicalAction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PhysicalCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PhysicalProcessCharacteristic
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PhysicalQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PhysicalRateQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PhysicalReaction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PhysicalRelationalQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PixelDensity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PlasticStrain
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Plasticity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PoissonEffect
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :PoissonRatio
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Potential
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Pressure
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ProofStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RadiantEnergy
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RadiantEnergyDensity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RadiantEnergyFlux
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RadiationAbsorptionCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RadiationEmissionCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RadiationEmissonCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RadiationReflectionCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RadiationTransmissionCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RadiologicQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Radius
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ReboundHardness
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RefractiveIndex
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RelativeIsotopicMass
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ReynoldsNumber
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ScratchHardness
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ShearModulus
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ShearViscosity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SoundInsulationIndex
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SoundReflectionCoefficient
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SpecificHeatCapacity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Speed
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Stiffness
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :StorageModulus
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Strain
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Strength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Stress
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SurfaceTension
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Temperature
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TemperatureMeasurementCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TemperatureProfile
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TensileStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ThermalCapability
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ThermalCapacity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ThermalConductance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ThermalExpansionCoefficient
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ThermalInsulation
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ThermoDynamicQuality
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Thickness
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Thrust
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Toughness
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TrueStrain
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TrueStress
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :UpperYieldStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Viscoelasticity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Viscosity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Volume
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VolumeConcentration
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VolumeFraction
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VolumeMixRatio
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VolumeRatio
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VolumeViscosity
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :VolumetricThermalExpansionCoefficient
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Wavelength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :WearResistance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :WeatheringResistance
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Weight
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Width
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :YieldStrength
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :EModulus1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :ElasticResponse1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :LightReflexion1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Pull1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Pull2
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :RelaxtionCap1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Specimen1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :Sun
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SunExposureProcess1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SunLigthing1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :SunLigthingProcess1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TensionForce1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TensionForceMeasurementCapability1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :TensionRate1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :UniversalTestingMachine1
  #
  #     # @return [RDF::Vocabulary::Term]
  #     attr_reader :reflectance1
  #
  #   end
  QualitiesPhysical = Class.new(RDF::StrictVocabulary("https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/")) do

    # Ontology definition
    ontology :"https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/",
      "http://purl.org/dc/terms/abstract": {"en-us": "The IOF Physical Qualities Ontology represents Qualities found in material entities (e.g., Mass)."},
      "http://purl.org/dc/terms/contributor": {"en-us": "Thomas Hanke, Fraunhofer IWM"},
      "http://purl.org/dc/terms/creator": {"en-us": "IOF Materials Working Group"},
      "http://purl.org/dc/terms/license": "http://opensource.org/licenses/MIT",
      "http://purl.org/dc/terms/publisher": "Industrial Ontology Foundry",
      "http://purl.org/dc/terms/title": {"en-us": "Industrial Ontology Foundry (IOF) Physical Qualities Ontology"},
      "http://www.w3.org/2002/07/owl#imports": "https://spec.industrialontologies.org/ontology/qualities/Qualities/",
      "http://www.w3.org/2002/07/owl#versionIRI": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/gy/202301/qualities/Qualities-Physical",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/maturity": "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/Provisional",
      label: {en: "Physical Qualities Ontology"},
      type: "http://www.w3.org/2002/07/owl#Ontology"

    # Class definitions
    term :AcousticCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Acoustic capability entails realization through an entity related to sound interaction"},
      label: {en: "acoustic capability", de: "akustische Fähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :AcousticQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Acoustic quality pertains to properties related to sound or the science of sound, including aspects like pitch, volume, tone, timbre, echo, absorption, or sound wave propagation"},
      label: {en: "acoustic quality", de: "akustische Qualität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Adhesion,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Adhesion describes the ability of substances to bind to each other, involving attractive force between two bodies of different substances in contact and influencing material performance in scientific and industrial contexts"},
      label: {en: "adhesion", de: "Adhäsion"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Pressure",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :AdhesionStrength,
      altLabel: {en: "Adhesive Strength", de: "Klebkraft"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Adhesion strength measures the force required to separate two surfaces bonded together", de: "Haftfestigkeit ist das Maß für die Kraft, die erforderlich ist, um zwei miteinander verbundene Oberflächen zu trennen"},
      label: {en: "adhesion strength", de: "Haftfestigkeit"},
      prefLabel: {en: "Adhesion Strength", de: "Haftfestigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :AgingTemperature,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Aging temperature refers to variable temperature during an aging process depending on the desired deposition formations"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "aging temperature", de: "Alterungstemperatur"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Temperature",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Angle,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Angle",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "In Euclidean geometry, angle refers to the figure formed by two rays sharing a common endpoint, called the vertex of the angle"},
      label: {en: "angle", de: "Winkel"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities/SpatialRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :AnteriorPosteriorDiameter,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0002041",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Anterior-posterior diameter characterizes the diameter along the anterior-posterior axis"},
      label: {en: "anterior-posterior diameter", de: "Antero Posteraler Durchmesser"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Diameter",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Area,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0001323",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Area signifies a 2-D extent quality inhering by virtue of the bearer's two-dimensional extent"},
      label: {en: "area", de: "Fläche"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities/DimensionQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :AtomicMass,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Atomic_mass",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Atomic mass refers to the mass of an atom, often expressed in the non-SI unit dalton, where 1 Da is defined as 1/12 of the mass of a free carbon-12 atom at rest in its ground state"},
      label: {en: "atomic mass", de: "Atommasse"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Mass",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BreakingStrength,
      altLabel: {en: "strength at break", de: "Bruchspannung"},
      comment: {en: "Where the ultimate strength is the maximum recorded stress, the breaking strength is the last stress recorded when the break event of the experiment occurs"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Fracture",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Fracture strength, also known as breaking strength, is the stress at which a specimen fails via fracture.[2] This is usually determined for a given specimen by a tensile test, which charts the stress–strain curve (see image). The final recorded point is the fracture strength."},
      label: {en: "breaking strength", de: "Bruchfestigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Toughness",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Brittleness,
      altLabel: {en: "fragility", de: "Zerbrechlichkeit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Opposite to toughness, brittleness is the property of being easily broken or damaged", de: "Sprödigkeit ist die Eigenschaft, leicht zu brechen oder zu beschädigen"},
      label: {en: "brittleness", de: "Sprödigkeit"},
      prefLabel: {en: "brittleness", de: "Sprödigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MechanicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :BulkModulus,
      altLabel: {de: "Kompressionsmodul"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Bulk_modulus",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Bulk modulus is a measure of the resistance of a substance to bulk compression, defined as the ratio of infinitesimal pressure increase to relative volume decrease"},
      label: {en: "bulk modulus", de: "Kompressionsmodul"},
      prefLabel: {en: "bulk modulus"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Stiffness",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Circumference,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0001648",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Circumference characterizes a 1-D extent equal to the length of the closed curve of a circle"},
      label: {en: "circumference", de: "Kreisumfang"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Perimeter",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ClampingPressure,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Clamping pressure describes the force per area used during the mounting process of a sample, typically involving grips or similar tools", de: "Klemmdruck ist die Eigenschaft, die als quantitativer Wert die Kraft pro Fläche beschreibt, die beim Einbau einer Probe, eines Prüfkörpers oder eines Prüfstücks aufgebracht wird, typischerweise verbunden mit einer Art von Klemm- oder Spannzubehör"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "clamping pressure", de: "Klemmdruck"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Pressure",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :CoolingCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Cooling capability refers to a material artifact's ability to cause temperature decrease in another material entity"},
      label: {en: "cooling capability", de: "Abkühlfähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :CreepModulus,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Creep modulus measures a material's viscoelasticity, indicating its ability to deform under stress over time", de: "Der Kriechmodul ist ein Maß für die Viskoelastizität eines Materials, das seine Fähigkeit zur Verformung unter Belastung im Laufe der Zeit beschreibt"},
      label: {en: "creep modulus", de: "Kriechmodul"},
      prefLabel: {en: "creep modulus", de: "Kriechmodul"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Viscoelasticity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :CreepResistance,
      altLabel: {en: "Creep Resistant", de: "Kriechfestig"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Creep resistance is the ability of a material to resist deformation under load over time", de: "Die Kriechfestigkeit ist die Fähigkeit eines Materials, unter Last über einen bestimmten Zeitraum eine Deformation zu widerstehen"},
      label: {en: "creep resistance", de: "Kriechfestigkeit"},
      prefLabel: {en: "Creep Resistance", de: "Kriechfestigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Durability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :CreepStrain,
      altLabel: {en: "creeping strain", de: "Kriechbeanspruchung"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Creep strain occurs when a material is subjected to constant stress over a long period of time", de: "Eine Kriechverformung tritt auf, wenn ein Material einer konstanten Belastung über einen langen Zeitraum ausgesetzt ist"},
      label: {en: "creep strain", de: "Kriechverformung"},
      prefLabel: {en: "creep strain", de: "Kriechverformung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strain",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :CreepStress,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Creep stress is characterized by strain occurring with time when a constant force is applied to a physical body"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "creep stress", de: "Kriechspannung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Stress",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Deformation,
      "http://purl.obolibrary.org/obo/IAO_0000116": {en: "excludes any rigid body motion"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Deformation_(physics)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Deformation refers to the change in shape or size of an object, quantified as the residual displacement of particles in a non-rigid body, excluding average translation and rotation"},
      label: {en: "deformation", de: "Verformung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MechanicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DeformationSpeed,
      altLabel: {en: "strain rate", de: "Dehnrate"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Strain_rate",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Deformation speed measures the rate at which distances of adjacent material parcels change with time near a specific point, including expansion and shear rates"},
      label: {en: "deformation speed", de: "Deformationsgeschwindigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Speed",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DendriticFieldSize,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0070064",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Dendritic field size characterizes a 3-D extent defined by the maximal span of a dendritic arbor"},
      label: {en: "dendritic field size", de: "Dendritische Feldgröße"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Volume",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Density,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Density, or specific mass, is a substance's mass per unit of volume, typically denoted by ρ, defined as mass divided by volume: ρ = m / V"},
      label: {en: "density", de: "Dichte"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Depth,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0001595",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Depth characterizes a 1-D extent measured from the front to the back, or inward, distinguishing it from width and length"},
      label: {en: "depth", de: "Tiefe"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Length",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Diameter,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0001334",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Diameter is a length quality equal to any straight line segment passing through the center of a circle with endpoints on the circular boundary"},
      label: {en: "diameter", de: "Durchmesser"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Length",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Displacement,
      altLabel: {de: "Auslenkung"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Displacement_(geometry)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "In geometry and mechanics, displacement is a vector representing the shortest distance from the initial to the final position of a point undergoing motion"},
      label: {en: "displacement", de: "Verschiebung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities/SpatialRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DoseEquivalent,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.nrc.gov/reading-rm/basic-ref/glossary/dose-equivalent.html",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Dose equivalent measures biological damage to living tissue from radiation exposure, calculated as absorbed dose multiplied by a quality factor, and expressed in rems or sieverts"},
      label: {en: "dose equivalent"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DryMass,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Dry mass denotes mass after removing all humidity from an object, typically using qualified heating methods in an oven"},
      label: {en: "dry mass", de: "Trockenmasse"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MassRatio",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Ductility,
      altLabel: {en: "flexibility", de: "Biegsamkeit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Ductility is the ability of a material to deform plastically without breaking", de: "Duktilität ist die Fähigkeit eines Materials, plastisch zu verformen, ohne zu brechen"},
      label: {en: "ductility", de: "Duktilität"},
      prefLabel: {en: "ductility", de: "Duktilität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MechanicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Durability,
      altLabel: {en: "longevity", de: "Langlebigkeit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Durability is the ability of a material to resist wear, tear, and other types of damage over time", de: "Die Dauerhaftigkeit ist die Fähigkeit eines Materials, Abnutzung, Rissbildung und andere Arten von Schäden im Laufe der Zeit zu widerstehen"},
      label: {en: "durability", de: "Dauerhaftigkeit"},
      prefLabel: {en: "durability", de: "Dauerhaftigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MechanicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DynamicModulus,
      altLabel: {en: "complex shear modulus"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Dynamic_modulus",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Dynamic modulus is the ratio of stress to strain under vibratory conditions, typically measured in shear, compression, or elongation tests, and characterizes viscoelastic materials"},
      label: {en: "dynamic modulus", de: "dynamischer Modul"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Viscoelasticity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :DynamicViscosity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Dynamic viscosity measures a fluid's resistance to gradual deformation by shear stress or tensile stress, indicative of the fluid's internal friction", de: "Die dynamische Viskosität ist ein Maß für den Widerstand eines Fluids gegen eine allmähliche Verformung durch Scher- oder Zugspannung. Es ist ein Maß für den inneren Widerstand des Fluids gegen den Fluss und kann als Maß für die Flüssigkeitsreibung betrachtet werden"},
      label: {en: "dynamic viscosity", de: "dynamische Viskosität"},
      prefLabel: {en: "dynamic viscosity", de: "dynamische Viskosität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Viscosity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElasticModulus,
      altLabel: {en: "modulus of elasticity"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Elastic modulus represents the quotient of change of stress and change of percentage extension in the evaluation range, recommending reporting in GPa rounded to the nearest 0.1 GPa according to ISO 80000-1", de: "Quotient der Änderung der Spannung ΔR und Änderung der prozentualen Dehnung Δe in dem untersuchten Bereich multipliziert mit 100 %. Anmerkung: Es wird empfohlen, den Wert in GPa, gerundet auf 0,1 GPa, und nach ISO 80000-1 anzugeben"},
      label: {en: "elastic modulus", de: "Elastizitätsmodul"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Stiffness",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElasticStrain,
      altLabel: {en: "elastic feformation", de: "elastische Verformung"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Plasticity_(physics)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      label: {en: "elastic strain", de: "Eelastische Deformation"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strain",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Elasticity,
      altLabel: {en: "resilience", de: "elastisch"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Elasticity is the ability of an object or material to resume its normal shape after deformation", de: "Elastizität ist die Fähigkeit eines Objekts oder Materials, nach Deformation seine normale Form wiederherzustellen"},
      label: {en: "elasticity", de: "Elastizität"},
      prefLabel: {en: "elasticity", de: "Elastizität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricCharge,
      altLabel: {de: "elektrische Ladung"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electric charge refers to the physical property of matter causing it to experience a force when placed in an electromagnetic field"},
      label: {en: "electric charge", de: "elektrische Ladung"},
      prefLabel: {en: "electric charge"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ElectricalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricCurrent,
      altLabel: {de: "elektischer Strom"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electric current represents the flow of electric charge per unit time, typically measured in amperes"},
      label: {en: "electric current", de: "elektrischer Strom"},
      prefLabel: {en: "electric current"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalProcessCharacteristic",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricFieldStrength,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.britannica.com/science/electric-field",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electric field strength, or intensity, refers to the magnitude and direction of the electric field at a point, crucial for determining effects on electric charges near that point"},
      label: {en: "electric field strength", de: "elektrische Feldstärke"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ElectricalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricFluxDensity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.britannica.com/science/electric-flux",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electric flux density measures the total number of electric lines of force intersecting a given area, originating on positive charges and terminating on negative charges"},
      label: {en: "electric flux density", de: "elektrische Flussdichte"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Density",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricPotential,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": ["https://www.britannica.com/science/electric-potential", {en: "Electric potential characterizes the amount of work needed to move a unit charge from a reference point to a specific point against an electric field, typically from Earth or any point beyond the field's influence"}],
      label: {en: "electric potential", de: "elektrisches Potential"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Potential",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricalCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electrical capability entails realization through an entity related to electric interaction"},
      label: {en: "electrical capability", de: "elektrische Fähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricalCapacitance,
      altLabel: {en: "electrical capacity", de: "elektrische Kapazität"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electrical capacitance refers to an entity's ability to store electric charge, expressed as the amount of electric charge stored per given electric potential"},
      label: {en: "electrical capacitance", de: "elektrische Kapazität"},
      prefLabel: {en: "electrical capacitance"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ElectricalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricalConductance,
      altLabel: {de: "Stromleitfähigkeit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electrical conductance represents the reciprocal of a conductor's electrical resistance, measuring its ability to conduct an electric current, denoted in siemens (S)"},
      label: {en: "electrical conductance", de: "elektrische Leitfähigkeit"},
      prefLabel: {en: "electrical conductance", de: "elektrische Leitfähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ElectricalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricalQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electrical quality characterizes a material entity's behavior or state concerning electricity"},
      label: {en: "electrical quality", de: "elektrische Qualität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectricalResistance,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.britannica.com/technology/resistance-electronics",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electrical resistance pertains to a circuit's capability to transform electric energy into heat energy, opposing electric current through particle collisions, characteristic of resistors, lamps, and wires"},
      label: {en: "electrical resistance", de: "elektrischer Widerstand"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ElectricalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectroMagneticWave,
      equivalentClass: term(
          onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasQuality",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Wavelength",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ),
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electromagnetic wave characterizes radiation generated by vibrating electrically charged particles, traveling as waves with specific wavelengths and intensities"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition_source": "https://ec.europa.eu/health/scientific_committees/opinions_layman/en/energy-saving-lamps/glossary/def/electromagnetic-wave.htm",
      label: {en: "electro magnetic wave", de: "elektromagnetische Welle"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000040",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ElectromotiveForce,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/abbreviation": {en: "EMP"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Electromotive_force",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Electromotive force refers to energy transferred to an electric circuit per unit charge, measured in volts, produced by transducers converting forms of energy to electrical energy"},
      label: {en: "electromotive force", de: "Quellenspannung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRateQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :EngineeringStrain,
      altLabel: {en: "technical strain"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Strain_(mechanics)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Engineering strain, or Cauchy strain, expresses total deformation relative to the initial dimension of the material under load, reflecting elongation in axial loading"},
      label: {en: "engineering strain", de: "technische Dehnung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strain",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :EngineeringStress,
      "http://purl.obolibrary.org/obo/IAO_0000116": {en: "Assumes unchanged size of Area the force is normalized to. Changes in the Area can only be neglected for very small deformations"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Engineering stress quantifies the internal force per unit area a material experiences under load, assuming the area remains constant", de: "Technische Spannung beschreibt die innere Kraft pro Fläche, die ein Material unter Last erfährt, unter der Annahme, dass die Fläche konstant bleibt"},
      label: {en: "engineering stress", de: "technische Spannung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Stress",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Enthalpy,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.britannica.com/science/enthalpy",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Enthalpy, denoted as H, represents the sum of internal energy and the product of pressure and volume in a thermodynamic system, crucial for energy calculations"},
      label: {en: "enthalpy", de: "Enthalpie"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermoDynamicQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Entropy,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.britannica.com/science/entropy-physics",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Entropy measures the thermal energy per unit temperature unavailable for work in a system, indicating molecular disorder or randomness"},
      label: {en: "entropy", de: "Entropie"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermoDynamicQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :EnvironmentalTemperature,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Environmental temperature describes the observed temperature surrounding a tangible object, including room temperature and temperatures measured in test chambers", de: "Umgebungstemperatur ist die Eigenschaft, die die beobachtete Temperatur in der Umgebung eines betrachteten materiellen Objekts beschreibt. Dazu gehören Raumtemperatur und die in Prüfkammern gemessenen Temperaturen"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "environmental temperature", de: "Umgebungstemperatur"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Temperature",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Exposure,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Exposure_(photography)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Exposure in photography refers to the amount of light per unit area reaching film or sensor, determined by shutter speed, lens F-number, and scene luminance"},
      label: {en: "exposure", de: "Belichtungszeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/OpticalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ExtentionalViscosity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Extentional viscosity measures a fluid's resistance to tension flow", de: "Die Dehnviskosität ist die Messung des Widerstands einer Flüssigkeit gegen den Fluss bei Dehnspannung"},
      label: {en: "extentional viscosity", de: "Dehnviskosität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Viscosity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ExtinctionCoefficient,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Refractive_index#Complex_index_of_refraction_and_absorption",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Extinction coefficient, the imaginary component of the complex refractive index, indicates attenuation of electromagnetic waves through a material"},
      label: {en: "extinction coefficient", de: "Extinktionskoeffizient"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/RefractiveIndex",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :FatigueStrength,
      altLabel: {en: "fatigue strength", de: "Ermüdungsfestigkeit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Fatigue strength denotes a material's ability to resist fatigue or cyclic loading", de: "Ermüdungsfestigkeit bezeichnet die Fähigkeit eines Materials, Ermüdung oder zyklische Belastung zu widerstehen"},
      label: {en: "fatigue strength", de: "Ermüdungsfestigkeit"},
      prefLabel: {en: "fatigue strength", de: "Ermüdungsfestigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :FlexuralStrength,
      altLabel: {en: "bending strength"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Flexural strength indicates a material's ability to resist deformation under flexural load", de: "Biegefestigkeit bezeichnet die Fähigkeit eines Materials, unter Biegelast Deformationen zu widerstehen"},
      label: {en: "flexural strength", de: "Biegefestigkeit"},
      prefLabel: {en: "flexural strength", de: "Biegefestigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/BreakingStrength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :FluidDynamicQuality,
      altLabel: {de: "Qualität der Strömungslehre"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Fluid dynamic quality characterizes a material entity's behavior or state in relation to fluidic interaction"},
      label: ["fluid dynamic quality", {de: "Strömungsqualität"}],
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Force,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.merriam-webster.com/dictionary/force",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Strength or energy exerted or brought to bear : cause of motion or change : active power"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "force", de: "Kraft"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Frequency,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.britannica.com/science/frequency-physics",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Frequency describes the number of waves passing a fixed point in unit time, or cycles undergone by a body in periodic motion"},
      label: {en: "frequency", de: "Frequenz"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalProcessCharacteristic",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Friction,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.britannica.com/science/friction",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Friction is the force resisting the sliding or rolling of one solid object over another, arising from shear between contact regions of microscopic irregularities"},
      label: {en: "friction", de: "Reibung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Force",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Hardness,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Hardness quantifies the resistance of a material to localized deformation or plasticity caused by mechanical action, such as bending, crushing, or scratching", de: "Härte ist die Widerstandsfähigkeit eines Materials gegen lokalisierte Verformung oder Plastizität, die durch mechanische Einwirkung wie Biegen, Quetschen oder Kratzen verursacht wird"},
      label: {en: "hardness", de: "Härte"},
      prefLabel: {en: "hardness", de: "Härte"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :HeatTransferCoefficient,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Heat_transfer_coefficient",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Heat transfer coefficient represents the proportionality constant between heat flux and the thermodynamic driving force for heat flow, used in calculating heat transfer, typically by convection"},
      label: {en: "heat transfer coefficient", de: "Wärmeübergangskoeffizient"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :HeatingCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Heating capability refers to a material artifact's ability to cause temperature increase in another material entity"},
      label: {en: "heating capability", de: "Aufheizfähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Height,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0000119",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Height is a 1-D extent quality describing the vertical dimension of an object or space, measured from the base to the top"},
      label: {en: "height", de: "Höhe"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Length",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Humidity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Humidity characterizes air's partial pressure exerted by water vapor content, defined as the mass of water to volume of the medium-water mixture"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "humidity", de: "Feuchtigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRateQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ImpactStrength,
      altLabel: {en: "mpact strength", de: "Schlagfestigkeit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Impact strength is the ability of a material to absorb energy and plastically deform without fracturing under dynamic load", de: "Schlagzähigkeit bezeichnet die Fähigkeit eines Materials, Energie zu absorbieren und bei Anwendung einer dynamischen Last plastisch zu verformen, ohne dass es bricht"},
      label: {en: "impact strength", de: "Schlagzähigkeit"},
      prefLabel: {en: "impact strength", de: "Schlagzähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Toughness",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :IndentationHardness,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Indentation hardness is a measure of a material's resistance to indentation", de: "Indentationshärte ist ein Maß für die Widerstandsfähigkeit eines Materials gegen Eindringen"},
      label: {en: "indentation hardness", de: "Indentationshärte"},
      note: "Was a subclass of 'Hardness'",
      prefLabel: {en: "identation hardness", de: "Indentationshärte"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Hardness",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Inductance,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Inductance",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Inductance is the tendency of an electrical conductor to oppose a change in electric current through electromagnetic induction, creating back electromotive force"},
      label: {en: "inductance", de: "Induktion"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :KinematicViscosity,
      altLabel: {en: "kinetic viscosity", de: "kinetische Viskosität"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Kinematic viscosity is the ratio of dynamic viscosity to density", de: "Die kinematische Viskosität ist das Verhältnis der dynamischen Viskosität zur Dichte"},
      label: {en: "kinematic viscosity", de: "kinematische Viskosität"},
      prefLabel: {en: "kinematic viscosity", de: "kinematische Viskosität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Viscosity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Length,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0000122",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Length characterizes a 1-D extent equal to the distance between two points"},
      label: {en: "length", de: "Länge"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities/DimensionQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :LinearThermalExpansionCoefficient,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Linear thermal expansion coefficient quantifies the degree to which a material expands upon heating into a specific axial direction"},
      label: {en: "linear thermal expansion coefficient", de: "linearer thermischer Ausdehnungkoeffizient"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermalExpansionCoefficient",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :LoadCellCapacity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Load cell capacity measures the maximum force a load cell can accurately read", de: "Kapazität der Wägezelle ist die Messung der maximalen Kraft, die eine Wägezelle genau ablesen kann"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "load cell capacity", de: "Kapazität der Wägezelle"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MechanicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :LossModulus,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Dynamic_modulus",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Loss modulus measures the viscous portion of stored energy in viscoelastic materials"},
      label: {en: "loss modulus", de: "Verlustmodul"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/DynamicModulus",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :LossTangent,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Dynamic_modulus",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Loss tangent, represented as tan δ, is the ratio of the loss modulus to storage modulus in viscoelastic materials, providing a measure of damping"},
      label: {en: "loss tangent", de: "Verlustwinkel"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/DynamicModulus",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :LowerYieldStrength,
      altLabel: {en: "lower yield stress", de: "untere Fließspannung"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Yield_(engineering)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Lower yield strength defines the stress at which a material exhibits plastic behavior after initial yielding", de: "Untere Streckgrenze beschreibt die Spannung, bei der ein Material nach dem anfänglichen Fließen plastisches Verhalten zeigt"},
      label: {en: "lower yield strength", de: "untere Streckgrenze"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/YieldStrength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :LuminousEfficacy,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Luminous_efficacy",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Luminous efficacy measures how well a light source produces visible light, calculated as luminous flux divided by power, expressed in lumens per watt"},
      label: {en: "luminous efficacy", de: "Lichtausbeute"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRateQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :LuminousIntensity,
      altLabel: {de: "Lichtintensität"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Luminous intensity quantifies the visible light emitted per unit solid angle in a particular direction from a source, measured in candela (cd)", de: "Lichtstärke ist die Menge des sichtbaren Lichts, das pro Einheitswinkel in eine bestimmte Richtung von einer Quelle abgestrahlt wird, gemessen in Candela (cd)"},
      label: {en: "luminous intensity", de: "Lichtstärke in cd gemessen"},
      prefLabel: {en: "luminous intensity", de: "Leuchtintensität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/OpticalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MagneticFlux,
      altLabel: {en: "magnetic field", de: "Magnetfeld"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Magnetic flux is the total number of magnetic field lines passing through a given area", de: "Magnetischer Fluss ist die Gesamtanzahl der Magnetfeldlinien, die durch eine bestimmte Fläche verlaufen"},
      label: {en: "magnetic flux", de: "magnetischer Fluss"},
      prefLabel: {en: "magnetic flux", de: "magnetischer Fluss"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MagneticQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MagneticQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Magnetic quality characterizes a material entity's response to external magnetic fields or its emission of magnetic fields"},
      label: {en: "magnetic quality", de: "magnetische Qualität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Malleability,
      altLabel: {en: "Malleable", de: "formbar"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Malleability refers to a material's amenability to forming by hammering or rolling, distinct from ductility", de: "Formbarkeit beschreibt Materialien, die durch Hammern oder Walzen bearbeitet werden können und sich von Duktilität unterscheiden"},
      label: {en: "malleability", de: "Formbarkeit"},
      prefLabel: {en: "Malleability", de: "Formbarkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Ductility",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Mass,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Mass",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mass denotes intrinsic quality of a body, historically related to matter quantity, though distinct in modern physics with multiple definitions"},
      label: {en: "mass", de: "Masse"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MassConcentration,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://de.wikipedia.org/wiki/Massenkonzentration",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mass concentration links mass of a mixture component to the total volume in quantitative description, frequently used in solutions"},
      label: {en: "mass concentration", de: "Massenkonzentration"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MaterialComposition",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MassFlowRate,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Mass_flow_rate",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mass flow rate quantifies the mass passing per unit time, commonly measured in kilograms per second or pounds per second"},
      label: {en: "mass flow rate", de: "Massendurchsatz"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalProcessCharacteristic",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MassFraction,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://de.wikipedia.org/wiki/Massenanteil",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mass fraction describes the relative proportion of a mass to the total mass of a mixture, a common quantitative measure"},
      label: {en: "mass fraction", de: "Massenanteil"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MassRatio",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MassMixRatio,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://de.wikipedia.org/wiki/Massenverh%C3%A4ltnis",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mass mix ratio represents the ratio of masses of two mixture components, providing a quantitative composition description"},
      label: {en: "mass mix ratio", de: "Massenmischungsverhältnis"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MassRatio",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MassPotential,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mass potential defines a scalar quantity describing energy stored due to a material's position, shape, or configuration"},
      label: {en: "mass potential", de: "Massenpotential"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Potential",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MassRatio,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mass ratio denotes a relational quality expressing one mass value relative to another, typically producing a dimensionless number"},
      label: {en: "mass ratio", de: "Massenverhältnis"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MaterialComposition",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialComposition,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Material composition describes the ratio of substances or components making up a material, considering types, proportions, and arrangements"},
      label: {en: "material composition", de: "Materialzusammensetzung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialFatigue,
      altLabel: {en: "fatigue of material", de: "Ermüdung des Materials"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Material fatigue is the failure of a material caused by repeated or sustained loading below its ultimate strength.", de: "Materialermüdung ist das Versagen von Werkstoffen infolge wiederholter oder dauernder Belastung unterhalb der Probenfestigkeit"},
      label: {en: "material fatigue", de: "Materialermüdung"},
      prefLabel: {en: "material fatigue", de: "Materialermüdung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MechanicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MaterialProperty,
      equivalentClass: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list("https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalCapability", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality")
        ),
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Material property is a quality or capability of a material entity used to characterize its technical performance"},
      label: {en: "material property", de: "Materialeigenschaft"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000020",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MechanicalCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mechanical capability can be realized through an entity related to mechanical interaction"},
      label: {en: "mechanical capability", de: "mechanische Fähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MechanicalImpulse,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Impulse_(physics)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mechanical impulse signifies the change in momentum of an object when subjected to a force over time"},
      label: {en: "mechanical impulse", de: "mechanischer Impuls"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalProcessCharacteristic",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MechanicalQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mechanical quality is related to the performance of a material when enduring mechanical loads"},
      label: {en: "mechanical quality", de: "mechanische Qualität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :MechanicalStrength,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Mechanical strength refers to a material's ability to resist applied load without failure or plastic deformation, characterized by stress and strain", de: "Festigkeit in der Mechanik von Materialien bezeichnet die Fähigkeit eines Materials, eine angewandte Last ohne Versagen oder plastische Verformung zu widerstehen. Innere Kräfte werden auf der Basis einer Einheit als Spannungen ausgedrückt und bewirken eine Verformung des Materials, bekannt als Dehnung"},
      label: {en: "mechanical strength", de: "Festigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :NumberDensity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Number density measures the number of objects per unit volume or area"},
      label: {en: "number density", de: "Stoffmenge"},
      prefLabel: {en: "Number Density"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Density",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Odor,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0000058",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Odor is a morphologic quality inhering in a bearer whose molecules are dispersed and perceived by an odorant receptor"},
      label: {en: "odor", de: "Geruch"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/OlfactoricQuantity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Odorless,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0001208",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Odorless denotes an odor quality inhering in a bearer lacking odor"},
      label: {en: "odorless", de: "geruchlos"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Odor",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Odorous,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0001331",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Odorous denotes an odor quality inhering in a bearer possessing odor"},
      label: {en: "odorous", de: "riechend"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Odor",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :OlfactoricQuantity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Olfactoric quantity relates to a material entity's qualitative characteristics as perceived by the scent system"},
      label: {en: "olfactoric quantity", de: "olfaktorische Quantität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :OperationalStrength,
      altLabel: {en: "operation strength", de: "Betriebsstärke"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Operational strength describes a system's ability to perform its intended function in an operational environment", de: "Betriebsfestigkeit beschreibt die Fähigkeit eines Systems, seine vorgesehene Funktion in einer betrieblichen Umgebung auszuführen"},
      label: {en: "operational strength", de: "Betriebsfestigkeit"},
      prefLabel: {en: "operational strength", de: "Betriebsfestigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :OpticalAbsorptance,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Optical absorptance defines the ratio of absorbed radiant power to incident radiant power, indicating a medium's absorption capability"},
      label: {en: "optical absorptance", de: "optische Absorption"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRateQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :OpticalCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Optical capability describes interactions related to light occurring via an entity", de: "Optische Fähigkeit beschreibt die Wechselwirkungen im Zusammenhang mit Licht, die über eine Entität stattfinden"},
      label: {en: "optical capability", de: "optische Fähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :OpticalQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Optical quality characterizes the interaction results of material entities with light emissions or their generation of light emissions"},
      label: {en: "optical quality", de: "optische Qualität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :OpticalReflectance,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Optical reflectance is defined by the ratio of reflected radiant power to incident radiant power, assessing reflective capacity"},
      label: {en: "optical reflectance", de: "optische Reflexion"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRateQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :OpticalTransmittance,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Optical transmittance is defined by the ratio of transmitted radiant power to incident radiant power, assessing transmission efficiency"},
      label: {en: "optical transmittance", de: "optische Transmittance"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRateQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Perimeter,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0001711",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Perimeter measures a 1-D extent inhering in a two-dimensional bearer, representing the distance around it"},
      label: {en: "perimeter", de: "Umfang"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Length",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PhaseVelocity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Phase velocity refers to the rate at which the phase of a wave propagates, defined as wavelength divided by time period"},
      label: {en: "phase velocity", de: "Phasengeschwindigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Speed",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PhysicalAction,
      equivalentClass: term(
          type: "http://www.w3.org/2002/07/owl#Class",
          unionOf: list(term(
            onProperty: "http://purl.obolibrary.org/obo/BFO_0000057",
            someValuesFrom: term(
              intersectionOf: list("http://purl.obolibrary.org/obo/BFO_0000040", term(
                onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasQuality",
                someValuesFrom: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
                type: "http://www.w3.org/2002/07/owl#Restriction"
              )),
              type: "http://www.w3.org/2002/07/owl#Class"
            ),
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ), term(
            onProperty: "https://spec.industrialontologies.org/ontology/core/Core/hasProcessCharacteristic",
            someValuesFrom: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalProcessCharacteristic",
            type: "http://www.w3.org/2002/07/owl#Restriction"
          ))
        ),
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Physical action represents a stimulus enacting a physical interaction with an object"},
      label: {en: "physical action", de: "physikalische Aktion"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities/Action",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PhysicalCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Physical capability describes a capability realized through an entity in a physical interaction, fulfilling an agent's interest"},
      label: {en: "physical capability", de: "physische Fähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/Capability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PhysicalProcessCharacteristic,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Physical process characteristic defines attributes of a process concretizing a physical interaction over time"},
      label: {en: "physical process characteristic", de: "physikalische Prozesscharakteristik"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/ProcessCharacteristic",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PhysicalQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Physical quality pertains to properties or characteristics related to an entity's physical presence or interaction, independent of other entities"},
      isDefinedBy: {en: "A Quality that inheres in a material entity that is an independent continuant which has some portion of matter as continuant part"},
      label: {en: "physical quality", de: "physische Qualität"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000019",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PhysicalRateQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/explanatoryNote": {en: "Rate =(def.) a measure, quantity, or frequency, typically one measured against some other quantity or measure"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Physical rate quality denotes the quotient of two physical quantities in different units, representing one quantity's rate of change in relation to another"},
      label: {en: "physical rate quality", de: "physische Geschwindigkeitsqualität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PhysicalReaction,
      equivalentClass: term(
          onProperty: "http://purl.obolibrary.org/obo/BFO_0000055",
          someValuesFrom: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalCapability",
          type: "http://www.w3.org/2002/07/owl#Restriction"
        ),
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Physical reaction characterizes a process where a physical capability of entity X is realized in response to a physical action involving X or more material entities"},
      label: {en: "physical reaction", de: "physikalische Antwort"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities/Reaction",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PhysicalRelationalQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Physical relational quality pertains to properties or characteristics of an entity dependent on its relation to other entities"},
      label: {en: "physical relational quality", de: "physisch relative Qualität"},
      subClassOf: "http://purl.obolibrary.org/obo/BFO_0000145",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PixelDensity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Pixel density describes the relationship between the number of pixels and the area they occupy on a related entity", de: "Pixeldichte beschreibt das Verhältnis zwischen der Anzahl der Pixel und der Fläche, die sie auf einer verwandten Entität einnehmen"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "pixel density", de: "Pixeldichte"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/NumberDensity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PlasticStrain,
      altLabel: {en: "plastic deformation", de: "plastische Verformung"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Plasticity_(physics)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Plastic strain describes permanent deformation occurring when a material is subjected to stress beyond its elastic limit", de: "Plastische Deformation beschreibt die dauerhafte Verformung, die auftritt, wenn ein Material einer Belastung ausgesetzt wird, die über seine elastische Grenze hinausgeht"},
      label: {en: "plastic strain", de: "plastische Deformation"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strain",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Plasticity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Plasticity signifies a material's ability to undergo permanent deformation without breaking or cracking", de: "Plastizität bezeichnet die Fähigkeit eines Materials, dauerhafte Verformungen ohne Bruch oder Riss zu erleiden"},
      label: {en: "plasticity", de: "Plastizität"},
      prefLabel: {en: "plasticity", de: "Plastizität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PoissonEffect,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Poisson%27s_ratio",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Poisson effect describes deformation perpendicular to the direction of loading, named after Siméon Poisson", de: "Querkontraktion beschreibt die Deformation senkrecht zur Belastungsrichtung, benannt nach Siméon Poisson"},
      label: {en: "poisson effect", de: "Querkontraktion"},
      note: "Was a subclass of 'Mechanical Quality'",
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MechanicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :PoissonRatio,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Poisson%27s_ratio",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Poisson's ratio is a measure of the Poisson effect, with values typically between 0.0 and 0.5 for most materials", de: "Poissonzahl ist ein Maß für den Poisson-Effekt, mit Werten typischerweise zwischen 0,0 und 0,5 für die meisten Materialien"},
      label: {en: "poisson's ratio", de: "Poissonzahl"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PoissonEffect",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Potential,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Potential describes the capacity of an entity to perform work or transform due to its position or configuration within a system", de: "Potenzial beschreibt die Fähigkeit einer Entität, Arbeit zu leisten oder sich aufgrund ihrer Position oder Konfiguration innerhalb eines Systems zu transformieren"},
      label: {en: "potential", de: "Potenzial"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Pressure,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Pressure defines the amount of force applied per unit area, expressing potential energy within a fluid or gas", de: "Druck definiert die Menge an Kraft, die pro Flächeneinheit aufgebracht wird und das Potenzial an Energie innerhalb eines Fluids oder Gases ausdrückt"},
      label: {en: "pressure", de: "Druck"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ProofStrength,
      altLabel: {en: "proof stress"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Proof strength refers to the stress a material can endure until exhibiting a small amount of plastic deformation"},
      label: {en: "proof strength", de: "Festigkeitsnachweis"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MechanicalStrength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RadiantEnergy,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Radiant_energy",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Radiant energy refers to the energy of electromagnetic radiation, calculated by integrating radiant flux over time"},
      label: {en: "radiant energy", de: "Strahlungsenergie"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RadiantEnergyDensity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Radiant_energy",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Radiant energy density quantifies radiant energy per unit volume", de: "Strahlungsenergiedichte misst die Strahlungsenergie pro Volumeneinheit"},
      label: {en: "radiant energy density", de: "Strahlungsenergiedichte"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Density",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RadiantEnergyFlux,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Radiant_energy",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Radiant energy flux describes the radiant energy emitted, reflected, transmitted, or received per unit time", de: "Strahlungsfluss beschreibt die Strahlungsenergie, die pro Zeiteinheit emittiert, reflektiert, übertragen oder empfangen wird"},
      label: {en: "radiant energy flux", de: "Strahlungsfluss"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalProcessCharacteristic",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RadiationAbsorptionCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Radiation absorption capability characterizes an entity's ability to absorb electromagnetic radiation", de: "Strahlungsabsorptionsfähigkeit beschreibt die Fähigkeit einer Entität, elektromagnetische Strahlung zu absorbieren"},
      label: {en: "radiation absorption capability", de: "Strahlungsabsorptionsfähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/OpticalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RadiationEmissionCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Radiation emission capability refers to an entity's ability to emit light of a defined spectrum and intensity", de: "Strahlungsemitter beschreibt die Fähigkeit einer Entität, Licht eines definierten Spektrums und Intensität zu emittieren"},
      label: {en: "radiation emission capability", de: "Strahlungsemitter"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/OpticalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RadiationEmissonCapability,
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RadiationReflectionCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Radiation reflection capability characterizes an entity's ability to reflect electromagnetic radiation", de: "Strahlungsreflexionsfähigkeit beschreibt die Fähigkeit einer Entität, elektromagnetische Strahlung zu reflektieren"},
      label: {en: "radiation reflection capability", de: "Strahlungsreflexionsfähigkeiten"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/OpticalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RadiationTransmissionCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Radiation transmission capability describes an entity's ability to transmit electromagnetic radiation", de: "Strahlungsübertragungsfähigkeit beschreibt die Fähigkeit einer Entität, elektromagnetische Strahlung zu übertragen"},
      label: {en: "radiation transmission capability", de: "Strahlungsübertragungsfähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/OpticalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RadiologicQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Radiologic quality pertains to properties or characteristics related to an entity's interaction with radiant energy", de: "Radiologische Qualität bezieht sich auf die Eigenschaften oder Merkmale im Zusammenhang mit der Wechselwirkung einer Entität mit Strahlungsenergie"},
      label: {en: "radiologic quality", de: "radiologische Qualität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Radius,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0002390",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Radius is a length quality equal to the distance from the center of a circle to any endpoint on the circular boundary", de: "Radius ist eine Längeneigenschaft, die gleich der Entfernung vom Mittelpunkt eines Kreises zu einem beliebigen Endpunkt auf der Kreisgrenze ist"},
      label: {en: "radius", de: "Radius"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Length",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ReboundHardness,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Rebound hardness measures the elasticity of a material, defined as the ratio of the rebound velocity to the impact velocity of a standard ball", de: "Rückprallhärte misst die Elastizität eines Materials, definiert als das Verhältnis der Rückprallgeschwindigkeit zur Aufprallgeschwindigkeit eines Standardballs"},
      label: {en: "rebound hardness", de: "Rückprallhärte"},
      note: "Was a subclass of 'Hardness'",
      prefLabel: {en: "rebound hardness", de: "Rückprallhärte"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Hardness",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RefractiveIndex,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Refractive_index#Complex_index_of_refraction_and_absorption",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Refractive index indicates an optical medium's light bending ability; encompassing a real and imaginary part known as the extinction coefficient", de: "Brechzahl gibt die Lichtbrechungsfähigkeit eines optischen Mediums an; umfasst einen realen und einen imaginären Teil, der als Extinktionskoeffizient bekannt ist"},
      label: {en: "refractive index", de: "Brechzahl"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRelationalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :RelativeIsotopicMass,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Atomic_mass",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Relative isotopic mass refers to the mass of a single isotope compared to 1/12 of the mass of a carbon-12 atom", de: "Relative Isotopenmasse bezieht sich auf die Masse eines einzelnen Isotops im Vergleich zu 1/12 der Masse eines Kohlenstoff-12-Atoms"},
      label: {en: "relative isotopic mass", de: "relative Isotopenmasse"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalRateQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ReynoldsNumber,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Reynolds_number",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Reynolds number is a dimensionless quantity predicting fluid flow patterns, measuring the ratio between inertial and viscous forces", de: "Reynolds-Zahl ist eine dimensionslose Größe zur Vorhersage von Strömungsmustern in Flüssigkeiten, die das Verhältnis zwischen Trägheits- und Viskosekräften misst"},
      label: {en: "Reynolds number", de: "Reynolds-Zahl"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/FluidDynamicQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ScratchHardness,
      altLabel: {en: "scratch resistance", de: "Kratzbeständigkeit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Scratch hardness measures a material's ability to resist being scratched", de: "Kratzhärte misst die Fähigkeit eines Materials, Kratzern zu widerstehen"},
      label: {en: "scratch hardness", de: "Kratzhärte"},
      prefLabel: {en: "scratch hardness", de: "Kratzfestigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Hardness",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ShearModulus,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Shear_modulus",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Shear modulus is a measure of elastic shear stiffness, defined as the ratio of shear stress to shear strain", de: "Schubmodul ist ein Maß für die elastische Schersteifigkeit, definiert als Verhältnis von Schubspannung zu Scherdehnung"},
      label: {en: "shear modulus", de: "Schubmodul"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Stiffness",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ShearViscosity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Shear viscosity measures a fluid's resistance to shear flow", de: "Scherviskosität misst den Widerstand eines Fluids gegen Scherfluss"},
      label: {en: "shear viscosity", de: "Scherviskosität"},
      prefLabel: {en: "shear viscosity", de: "Scherviskosität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Viscosity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :SoundInsulationIndex,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Sound insulation index quantifies the ability of a material to reduce sound transmission", de: "Schalldämmmaß quantifiziert die Fähigkeit eines Materials, die Schallübertragung zu reduzieren"},
      label: {en: "sound insulation index", de: "Schalldämmmaß"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/AcousticCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :SoundReflectionCoefficient,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Sound reflection coefficient quantifies the proportion of sound energy reflected by a surface", de: "Schallreflexionsgrad quantifiziert den Anteil der Schallenergie, die von einer Oberfläche reflektiert wird"},
      label: {en: "sound reflection coefficient", de: "Schallreflexionsgrad"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/AcousticQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :SpecificHeatCapacity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Specific heat capacity is the heat capacity of a sample divided by its mass, representing the heat required to raise temperature by one unit", de: "Spezifische Wärmekapazität ist die Wärmekapazität einer Probe geteilt durch ihre Masse und repräsentiert die erforderliche Wärme, um die Temperatur um eine Einheit zu erhöhen"},
      label: {en: "specific heat capacity", de: "spezifische Wärmekapazität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermoDynamicQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Speed,
      "http://www.w3.org/2004/02/skos/core#example": {en: "If a train takes 1 hour to travel 100 kilometers, it has a speed of 100 kilometers per hour (62 mph)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://simple.wikipedia.org/wiki/Speed",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Speed describes the distance an object moves in a given amount of time, always positive"},
      label: {en: "speed", de: "Geschwindigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalProcessCharacteristic",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Stiffness,
      "http://purl.obolibrary.org/obo/IAO_0000116": {en: "While Stiffness characterizes a body's response, taking into account its geometry and materials. Elastic Modulus aims to be agnostic to geometry and specific for the material"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Stiffness is the extent to which an object resists deformation in response to an applied force", de: "Steifigkeit ist das Maß, bis zu dem ein Objekt einer Verformung als Reaktion auf eine einwirkende Kraft widersteht"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "stiffness", de: "Steifigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Elasticity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :StorageModulus,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Dynamic_modulus",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Storage modulus measures the elastic portion of stored energy in viscoelastic materials", de: "Speichermodul misst den elastischen Teil der gespeicherten Energie in viskoelastischen Materialien"},
      label: {en: "storage modulus", de: "Speichermodul"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/DynamicModulus",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Strain,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Strain_(mechanics)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Strain is defined as relative deformation, compared to a reference position configuration", de: "Dehnung ist als relative Verformung definiert, verglichen mit einer Referenzpositionskonfiguration"},
      label: {en: "strain", de: "Dehnung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Deformation",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Strength,
      altLabel: {de: "Festigkeit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Strength refers to the capacity of an object or substance to withstand great force or pressure", de: "Stärke bezeichnet die Fähigkeit eines Objekts oder Stoffes, großer Kraft oder Druck standzuhalten"},
      label: {en: "strength", de: "Stärke"},
      prefLabel: {en: "strength", de: "Stärke"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MechanicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Stress,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Stress is the internal force per unit area a material experiences under external load, commonly described in tensile, compressive, or shear forms", de: "Spannung ist die innere Kraft pro Flächeneinheit, die ein Material unter äußerer Belastung erfährt, und wird häufig als Zug-, Druck- oder Scherspannung beschrieben"},
      label: {en: "stress", de: "Spannung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Pressure",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :SurfaceTension,
      altLabel: {en: "surface stress"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Surface tension refers to the effect within the surface layer of a liquid, caused by intermolecular forces between its molecules", de: "Oberflächenspannung bezeichnet den Effekt innerhalb der Oberflächenschicht einer Flüssigkeit, der durch Wechselwirkungskräfte zwischen ihren Molekülen verursacht wird"},
      label: {en: "surface tension", de: "Oberflächenspannung"},
      prefLabel: {en: "surface tension", de: "Oberflächenspannung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Adhesion",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Temperature,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.merriam-webster.com/dictionary/temperature",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Temperature characterizes the degree of hotness or coldness measured on a definite scale", de: "Temperatur beschreibt den Grad der Hitze oder Kälte, gemessen auf einer bestimmten Skala"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "temperature", de: "Temperatur"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermoDynamicQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :TemperatureMeasurementCapability,
      altLabel: {de: "Temperaturmessungsfähigkeit"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Temperature measurement capability involves using an artifact to measure the temperature of an object or space", de: "Temperaturmessfähigkeit bezeichnet die Messfähigkeit, die während Ereignissen realisiert wird, in denen ein Artefakt verwendet wird, um die Temperatur eines Objekts oder Raums zu messen"},
      label: {en: "temperature measurement capability", de: "Temperaturmessfähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/core/Core/MeasurementCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :TemperatureProfile,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Temperature profile describes changes in the temperature of a material entity or space over time", de: "Temperatur Profil beschreibt Änderungen der Temperatur eines materiellen Wesens oder Raums über die Zeit"},
      label: {en: "temperature profile", de: "Temperaturprofil"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalProcessCharacteristic",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :TensileStrength,
      altLabel: {en: "ultimate tensile strength"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Tensile strength measures the maximum stress a material can withstand while being stretched or pulled before breaking", de: "Zugfestigkeit misst die maximale Spannung, die ein Material aushalten kann, während es gestreckt oder gezogen wird, bevor es bricht"},
      label: {en: "tensile strength", de: "Zugfestigkeit"},
      prefLabel: {en: "ultimate tensile strength", de: "Zugfestigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/BreakingStrength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ThermalCapability,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Thermal capability can be realized through an entity related to thermodynamic interaction", de: "Thermische Fähigkeit kann durch eine Entität im Zusammenhang mit thermischer Wechselwirkung realisiert werden"},
      label: {en: "thermal capability", de: "thermische Fähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ThermalCapacity,
      altLabel: {en: "heat capacity"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Heat_capacity",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Thermal capacity, or heat capacity, is defined as the amount of heat required to produce a unit change in temperature of an object", de: "Wärmekapazität, auch als thermische Kapazität bekannt, ist die Menge an Wärme, die erforderlich ist, um eine Änderung der Temperatur eines Objekts um eine Einheit zu erzeugen"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "thermal capacity", de: "Wärmekapazität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ThermalConductance,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Thermal conduction refers to the process by which heat is transferred from the hotter end to the colder end of an object, characterized by conductance", de: "Thermische Leitung beschreibt den Prozess, bei dem Wärme vom heißeren zum kälteren Ende eines Objekts übertragen wird, gekennzeichnet durch Leitfähigkeit"},
      label: {en: "thermal conductance", de: "thermische Leitfähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ThermalExpansionCoefficient,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Thermal expansion coefficient quantifies the degree to which a material expands upon heating, representing fractional change per degree temperature increase", de: "Thermischer Ausdehnungkoeffizient quantifiziert den Grad, in dem ein Material beim Erhitzen expandiert, und stellt die proportionale Änderung pro Temperaturanstieg dar"},
      label: {en: "thermal expansion coefficient", de: "thermischer Ausdehnungkoeffizient"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ThermalInsulation,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Thermal_insulation",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Thermal insulation reduces heat transfer between objects in thermal contact or radiative influence, achieved with engineered methods or material properties", de: "Thermische Isolierung verringert den Wärmeaustausch zwischen Objekten, die in thermischem Kontakt oder Strahlungseinfluss stehen, realisiert durch spezielle Konstruktionsmethoden oder Materialien"},
      isDefinedBy: "https://w3id.org/pmd/co",
      label: {en: "thermal insulation", de: "thermische Isolierung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermalCapability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :ThermoDynamicQuality,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Thermo dynamic quality characterizes a material entity's behavior or state in relation to thermal heating or cooling", de: "Thermodynamische Qualität beschreibt das Verhalten oder den Zustand eines materiellen Wesens in Bezug auf thermische Erwärmung oder Kühlung"},
      label: {en: "thermo dynamic quality", de: "thermodynamische Qualität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/PhysicalQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Thickness,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0000915",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Thickness represents the extent of an object opposing its lateral dimensions, providing a measure of depth", de: "Dicke stellt das Ausmaß eines Objekts entgegen seinen seitlichen Abmessungen dar und bietet ein Maß für die Tiefe"},
      label: {en: "thickness", de: "Dicke"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Length",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Thrust,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Thrust",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Thrust is a force described by Newton's third law, where mass expulsion in one direction causes an equal force in the opposite direction", de: "Schubkraft ist eine von Newtons drittem Gesetz beschriebene Kraft, bei der Massenbeschleunigung in eine Richtung eine gleich große Kraft in die entgegengesetzte Richtung verursacht"},
      label: {en: "thrust", de: "Schubkraft"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Force",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Toughness,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": {en: "true"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Toughness describes the resistance of a material to fracture or crack propagation, determined by its ability to absorb mechanical energy during deformation", de: "Zähigkeit beschreibt die Widerstandsfähigkeit eines Werkstoffs gegen Bruch oder Rissausbreitung, bestimmt durch die Fähigkeit zur Absorption von mechanischer Energie bei Verformung"},
      label: {en: "toughness", de: "Zähigkeit"},
      prefLabel: {en: "toughness", de: "Zähigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :TrueStrain,
      altLabel: {en: "Hencky strain"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Strain_(mechanics)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "True strain, or logarithmic strain, integrates incrementally over deformation; related to engineering strain as ε=ln(1+e)", de: "Wahre Dehnung, auch als logarithmische Dehnung bekannt, integriert sich schrittweise über die Verformung; in Beziehung zum technischen Dehnungsmaß als ε=ln(1+e)"},
      label: {en: "true strain", de: "wahre Dehnung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strain",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :TrueStress,
      "http://purl.obolibrary.org/obo/IAO_0000116": {en: "The true stress in accordance with the cauchy stress tensor. It always relates to the current size of the surface of a filled volume element of a material entity. It can be assumed equal to the engineering stress for very small deformations (lower then 0.01 %)"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "True stress is defined using the cauchy stress tensor, relating stress to the current surface size of a volume element", de: "Wahre Spannung wird unter Verwendung des Cauchy-Spannungstensors definiert und bezieht die Spannung auf die aktuelle Oberflächengröße eines Volumenelements"},
      label: {en: "true stress", de: "wahre Spannung"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Stress",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :UpperYieldStrength,
      altLabel: {en: "upper yield stress", de: "obere Fließspannung"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Yield_(engineering)",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Upper yield strength characterizes the maximum stress that can be applied before a material begins to yield plastically", de: "Obere Streckgrenze charakterisiert die maximale Spannung, die vor dem plastischen Fließen eines Materials angewendet werden kann"},
      label: {en: "upper yield strength", de: "obere Streckgrenze"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/YieldStrength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Viscoelasticity,
      altLabel: {en: "elasticity of viscosity", de: "Viskoelastizität"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Viscoelasticity describes materials exhibiting both viscous and elastic characteristics during deformation", de: "Viscoelastizität beschreibt Materialien, die sowohl viskose als auch elastische Eigenschaften während der Verformung zeigen"},
      label: {en: "viscoelasticity", de: "Viscoelastizität"},
      prefLabel: {en: "viscoelasticity", de: "Viscoelastizität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Viscosity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": {en: "true"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Viscosity measures a fluid's resistance to flow", de: "Viskosität misst den Widerstand eines Fluids gegen den Fluss"},
      label: {en: "viscosity", de: "Viskosität"},
      prefLabel: {en: "viscosity", de: "Viskosität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Plasticity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Volume,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0000918",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Volume signifies the 3-D extent quality inhering due to the bearer's occupied space", de: "Volumen bezeichnet die 3-D-Ausdehnungsqualität, die aufgrund des vom Träger besetzten Raums entsteht"},
      label: {en: "volume", de: "Volumen"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities/DimensionQuality",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :VolumeConcentration,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://de.wikipedia.org/wiki/Volumenkonzentration",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Volume concentration links the volume of a mixture component to the total volume, crucial for quantitative composition description", de: "Volumenkonzentration verbindet das Volumen eines Mischbestandteils mit dem Gesamtvolumen, entscheidend für die quantitative Zusammensetzungsbeschreibung"},
      label: {en: "volume concentration", de: "Volumenkonzentration"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/VolumeRatio",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :VolumeFraction,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://de.wikipedia.org/wiki/Volumenkonzentration",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Volume fraction describes the volume of a mixture component relative to the sum of all components' volumes", de: "Volumenanteil beschreibt das Volumen eines Mischbestandteils im Verhältnis zur Summe der Volumina aller Bestandteile"},
      label: {en: "volume fraction", de: "Volumenanteil"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/VolumeRatio",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :VolumeMixRatio,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://de.wikipedia.org/wiki/Volumenverh%C3%A4ltnis",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Volume mix ratio defines the ratio of volumes of two mixture components to each other", de: "Mischengehaltverhältnis definiert das Verhältnis der Volumina von zwei Mischbestandteilen zueinander"},
      label: {en: "volume mix ratio", de: "Mischengehaltverhältnis"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/VolumeRatio",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :VolumeRatio,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Volume ratio represents a relational quality expressing one volume value relative to another, typically resulting in a dimensionless number", de: "Volumenverhältnis stellt eine relationale Qualität dar, die einen Volumenwert im Verhältnis zu einem anderen ausdrückt, typischerweise resultierend in einer dimensionslosen Zahl"},
      label: {en: "volume ratio", de: "Volumenverhältnis"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/MaterialComposition",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :VolumeViscosity,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Volume viscosity measures a fluid's resistance to volumetric stress", de: "Volumenviskosität misst den Widerstand eines Fluids gegenüber volumetrischer Belastung"},
      label: {en: "volume viscosity", de: "Volumenviskosität"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Viscosity",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :VolumetricThermalExpansionCoefficient,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Volumetric thermal expansion coefficient quantifies the degree to which a material expands upon heating into all three axial directions simultaneously"},
      label: {en: "volumetric thermal expansion coefficient", de: "thermischer Volumenausdehnungskoeffizient"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ThermalExpansionCoefficient",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Wavelength,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://www.oxfordreference.com/display/10.1093/oi/authority.20110803121421585",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Wavelength is the distance between successive peaks or troughs of a wave, equal to wave speed divided by frequency", de: "Wellenlänge ist die Entfernung zwischen aufeinanderfolgenden Gipfeln oder Tälern einer Welle, gleich der Wellenbewegungsgeschwindigkeit geteilt durch die Frequenz"},
      label: {en: "wavelength", de: "Wellenlänge"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Length",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :WearResistance,
      altLabel: {en: "resistance to wear", de: "widerstand gegen Verschleiß"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/isPrimitive": "true",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Wear resistance is the ability of a material to resist mechanical actions such as rubbing, scraping or erosion that tend to progressively remove material from its surface.", de: "Verschleißfestigkeit ist die Fähigkeit eines Materials, mechanischen Aktionen wie Reiben, Kratzen oder Erosion zu widerstehen, die dazu tendieren, Material allmählich von seiner Oberfläche zu entfernen."},
      label: {en: "wear resistance", de: "Verschleißfestigkeit"},
      prefLabel: {en: "wear resistance", de: "Verschleißfestigkeit"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Durability",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :WeatheringResistance,
      altLabel: {en: "weather resistant", de: "wetterbeständig"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Ability of a material to resist the effects of weathering, such as wind, rain, and sunlight.", de: "Fähigkeit eines Materials, den Auswirkungen von Witterungseinflüssen wie Wind, Regen und Sonnenlicht standzuhalten."},
      label: {en: "weathering resistance", de: "Witterungsbeständigkeit"},
      note: {en: "Was a subclass of 'Operational Strength';\n\nBut 'Operational Strength' does not appear to be Quality."},
      prefLabel: {en: "weathering resistance", de: "Witterungsbeständigkeit"},
      subClassOf: ["https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/OperationalStrength", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Strength"],
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Weight,
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "https://en.wikipedia.org/wiki/Weight",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "In science and engineering, the weight of an object, is the force acting on the object due to acceleration of gravity."},
      label: {en: "weight", de: "Gewicht"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Force",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :Width,
      altLabel: {en: "breadth"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/adaptedFrom": "http://purl.obolibrary.org/obo/PATO_0000921",
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Width describes a 1-D extent measured side-to-side on an object or space, emphasizing the lateral dimension", de: "Breite beschreibt eine 1- Dimension, die von Seite zu Seite auf einem Objekt oder Raum gemessen wird und die laterale Dimension betont"},
      label: {en: "width", de: "Breite"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Length",
      type: "http://www.w3.org/2002/07/owl#Class"
    term :YieldStrength,
      altLabel: {en: "yield stress"},
      "https://spec.industrialontologies.org/ontology/core/meta/AnnotationVocabulary/naturalLanguageDefinition": {en: "Yield strength signfies the stress level at which material begins to deform plastically, marking the end of elastic behavior", de: "Fließgrenze bezeichnet das Spannungsniveau, bei dem sich Material beginnt, plastisch zu verformen und das Ende des elastischen Verhaltens markiert"},
      label: {en: "yield strength", de: "Fließgrenze"},
      subClassOf: "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Plasticity",
      type: "http://www.w3.org/2002/07/owl#Class"

    # Extra definitions
    term :EModulus1,
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ElasticModulus"]
    term :ElasticResponse1,
      "http://purl.obolibrary.org/obo/BFO_0000055": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/EModulus1",
      type: ["http://purl.obolibrary.org/obo/BFO_0000015", "http://www.w3.org/2002/07/owl#NamedIndividual"]
    term :LightReflexion1,
      "http://purl.obolibrary.org/obo/BFO_0000055": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/RelaxtionCap1",
      "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/isTriggeredBy": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/SunExposureProcess1",
      type: ["http://purl.obolibrary.org/obo/BFO_0000015", "http://www.w3.org/2002/07/owl#NamedIndividual"]
    term :Pull1,
      "http://purl.obolibrary.org/obo/BFO_0000055": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/TensionForceMeasurementCapability1",
      "http://purl.obolibrary.org/obo/BFO_0000057": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Specimen1",
      "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/triggers": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/ElasticResponse1",
      type: ["http://purl.obolibrary.org/obo/BFO_0000015", "http://www.w3.org/2002/07/owl#NamedIndividual"]
    term :Pull2,
      "http://purl.obolibrary.org/obo/BFO_0000057": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Specimen1",
      "https://spec.industrialontologies.org/ontology/core/Core/hasProcessCharacteristic": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/TensionRate1",
      type: ["http://purl.obolibrary.org/obo/BFO_0000015", "http://www.w3.org/2002/07/owl#NamedIndividual"]
    term :RelaxtionCap1,
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/RadiationReflectionCapability"]
    term :Specimen1,
      "https://spec.industrialontologies.org/ontology/core/Core/hasCapability": ["https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/EModulus1", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/RelaxtionCap1"],
      "https://spec.industrialontologies.org/ontology/core/Core/hasQuality": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/reflectance1",
      type: ["http://purl.obolibrary.org/obo/BFO_0000030", "http://www.w3.org/2002/07/owl#NamedIndividual"]
    term :Sun,
      "https://spec.industrialontologies.org/ontology/core/Core/hasCapability": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/SunLigthing1",
      type: ["http://purl.obolibrary.org/obo/BFO_0000040", "http://www.w3.org/2002/07/owl#NamedIndividual"]
    term :SunExposureProcess1,
      "http://purl.obolibrary.org/obo/BFO_0000057": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Specimen1",
      "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/isTriggeredBy": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/SunLigthingProcess1",
      type: ["http://purl.obolibrary.org/obo/BFO_0000015", "http://www.w3.org/2002/07/owl#NamedIndividual"]
    term :SunLigthing1,
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/RadiationEmissonCapability"]
    term :SunLigthingProcess1,
      "http://purl.obolibrary.org/obo/BFO_0000055": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/SunLigthing1",
      "http://purl.obolibrary.org/obo/BFO_0000057": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Sun",
      type: ["http://purl.obolibrary.org/obo/BFO_0000015", "http://www.w3.org/2002/07/owl#NamedIndividual"]
    term :TensionForce1,
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/Force"]
    term :TensionForceMeasurementCapability1,
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/materials/Materials/ForceMeasurementCapability"]
    term :TensionRate1,
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/DeformationSpeed"]
    term :UniversalTestingMachine1,
      "https://spec.industrialontologies.org/ontology/core/Core/hasCapability": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/TensionForceMeasurementCapability1",
      "https://spec.industrialontologies.org/ontology/core/Core/hasQuality": "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/TensionForce1",
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/core/Core/PieceOfEquipment"]
    term :reflectance1,
      type: ["http://www.w3.org/2002/07/owl#NamedIndividual", "https://spec.industrialontologies.org/ontology/qualities/Qualities-Physical/OpticalReflectance"]
  end
end
