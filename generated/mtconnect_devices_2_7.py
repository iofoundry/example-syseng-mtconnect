from __future__ import annotations

from enum import Enum
from typing import ForwardRef

from pydantic import BaseModel, ConfigDict
from xsdata.models.datatype import XmlDateTime
from xsdata_pydantic.fields import field

from generated.xlink import TypeType

__NAMESPACE__ = "urn:mtconnect.org:MTConnectDevices:2.7"


class AbstractConfigurationType(BaseModel):
    """
    Abstract configuration.
    """

    model_config = ConfigDict(defer_build=True)


class AbstractDataItemRelationshipType(BaseModel):
    """
    Description.

    :ivar name: identifier of the maintenance activity.
    :ivar id_ref: A reference to the related DataItem id.
    """

    model_config = ConfigDict(defer_build=True)
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    id_ref: str = field(
        metadata={
            "name": "idRef",
            "type": "Attribute",
        }
    )


class ActuationTypeEnumType(Enum):
    """
    The actuation of this component.

    :cvar DIRECT: The movement is initiated by the component.
    :cvar VIRTUAL: The motion is computed and is used for expressing an
        imaginary movement.
    :cvar NONE: There is no actuation of this Axis.
    """

    DIRECT = "DIRECT"
    VIRTUAL = "VIRTUAL"
    NONE = "NONE"


class AssetCountType(BaseModel):
    """
    {{def(EventEnum::ASSET_COUNT)}}.

    :ivar value:
    :ivar asset_type: The type of asset
    """

    model_config = ConfigDict(defer_build=True)
    value: int = field(
        metadata={
            "min_inclusive": 0,
            "max_exclusive": 4294967295,
        }
    )
    asset_type: str = field(
        metadata={
            "name": "assetType",
            "type": "Attribute",
        }
    )


class CategoryType(Enum):
    """
    The measurement sampling type.

    :cvar EVENT: An event represents a change in state occurs at a point
        in time. Note: An event does not occur at predefined
        frequencies.
    :cvar SAMPLE: A sample is a data point for continuous data items,
        that is, the value of a data item at a point in time.
    :cvar CONDITION: The condition of the device
    """

    EVENT = "EVENT"
    SAMPLE = "SAMPLE"
    CONDITION = "CONDITION"


class ChannelType(BaseModel):
    """
    Description.

    :ivar description: textual description for {{block(Channel)}}.
    :ivar calibration_date: Date upon which the {{term(sensor unit)}}
        was last calibrated to the {{term(sensor element)}}.
    :ivar next_calibration_date: Date upon which the {{term(sensor
        element)}} is next scheduled to be calibrated with the
        {{term(sensor unit)}}.
    :ivar calibration_initials: The initials of the person verifying the
        validity of the calibration data.
    :ivar number: The channel id
    :ivar name: identifier of the maintenance activity.
    """

    model_config = ConfigDict(defer_build=True)
    description: None | str = field(
        default=None,
        metadata={
            "name": "Description",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    calibration_date: None | XmlDateTime = field(
        default=None,
        metadata={
            "name": "CalibrationDate",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    next_calibration_date: None | XmlDateTime = field(
        default=None,
        metadata={
            "name": "NextCalibrationDate",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    calibration_initials: None | str = field(
        default=None,
        metadata={
            "name": "CalibrationInitials",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    number: int = field(
        metadata={
            "type": "Attribute",
        }
    )
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )


class ComponentDescriptionType(BaseModel):
    """
    The descriptive information.

    This can be manufacturer specific.

    :ivar manufacturer: name of the material manufacturer.
    :ivar model: The model
    :ivar serial_number: {{def(EventEnum::SERIAL_NUMBER)}}
    :ivar station: leaf {{block(Component)}} composed of a storage or
        mounting location for a tool associated with a
        {{block(Turret)}}, {{block(GangToolBar)}}, or
        {{block(ToolRack)}}.
    :ivar content:
    """

    model_config = ConfigDict(defer_build=True)
    manufacturer: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    model: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    serial_number: None | str = field(
        default=None,
        metadata={
            "name": "serialNumber",
            "type": "Attribute",
        },
    )
    station: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
        },
    )


class CompositionEnumTypeEnum(Enum):
    """
    The vocab for the type of composition.

    :cvar ACTUATOR: {{block(Composition)}} composed of a mechanism that
        moves or controls a mechanical part of a piece of equipment. It
        takes energy usually provided by air, electric current, or
        liquid and converts the energy into some kind of motion.
    :cvar AMPLIFIER: {{block(Composition)}} composed of an electronic
        component or circuit that amplifies power, electric current, or
        voltage.
    :cvar BALLSCREW: {{block(Composition)}} composed of a mechanical
        structure that transforms rotary motion into linear motion.
    :cvar BELT: {{block(Composition)}} composed of an endless flexible
        band that transmits motion for a piece of equipment or conveys
        materials and objects.
    :cvar BRAKE: {{block(Composition)}} composed of a mechanism that
        slows down or stops a moving object by the absorption or
        transfer of the energy of momentum, usually by means of
        friction, electrical force, or magnetic force.
    :cvar CHAIN: {{block(Composition)}} composed of an interconnected
        series of objects that band together and transmit motion for a
        piece of equipment or to convey materials and objects.
    :cvar CHOPPER: {{block(Composition)}} composed of a mechanism that
        breaks material into smaller pieces.
    :cvar CHUCK: {{block(Composition)}} composed of a mechanism that
        holds a part, stock material, or any other item in place.
    :cvar CHUTE: {{block(Composition)}} composed of an inclined channel
        that conveys material.
    :cvar CIRCUIT_BREAKER: {{block(Composition)}} composed of a
        mechanism that interrupts an electric circuit.
    :cvar CLAMP: {{block(Composition)}} composed of a mechanism that
        strengthens, supports, or fastens objects in place.
    :cvar COMPRESSOR: {{block(Composition)}} composed of a pump or other
        mechanism that reduces volume and increases pressure of gases in
        order to condense the gases to drive pneumatically powered
        pieces of equipment.
    :cvar DOOR: {{block(Composition)}} composed of a mechanical
        mechanism or closure that covers a physical access portal into a
        piece of equipment allowing or restricting access to other parts
        of the equipment.
    :cvar DRAIN: {{block(Composition)}} composed of a mechanism that
        allows material to flow for the purpose of drainage from, for
        example, a vessel or tank.
    :cvar ENCODER: {{block(Composition)}} composed of a mechanism that
        measures rotary position.
    :cvar EXPOSURE_UNIT: {{block(Composition)}} composed of a mechanism
        that emits a type of radiation.
    :cvar EXTRUSION_UNIT: {{block(Composition)}} composed of a mechanism
        that dispenses liquid or powered materials.
    :cvar FAN: {{block(Composition)}} composed of a mechanism that
        produces a current of air.
    :cvar FILTER: {{block(Composition)}} composed of a substance or
        structure that allows liquids or gases to pass through to remove
        suspended impurities or to recover solids.
    :cvar GALVANOMOTOR: {{block(Composition)}} composed of an
        electromechanical actuator that produces deflection of a beam of
        light or energy in response to electric current through its coil
        in a magnetic field.
    :cvar GRIPPER: {{block(Composition)}} composed of a mechanism that
        holds a part, stock material, or any other item in place.
    :cvar HOPPER: {{block(Composition)}} composed of a chamber or bin
        that stores materials temporarily, typically being filled
        through the top and dispensed through the bottom.
    :cvar LINEAR_POSITION_FEEDBACK: {{block(Composition)}} composed of a
        mechanism that measures linear motion or position.
    :cvar MOTOR: {{block(Composition)}} composed of a mechanism that
        converts electrical, pneumatic, or hydraulic energy into
        mechanical energy.
    :cvar OIL: {{block(Composition)}} composed of a viscous liquid.
    :cvar POWER_SUPPLY: {{block(Composition)}} composed of a unit that
        provides power to electric mechanisms.
    :cvar PULLEY: {{block(Composition)}} composed of a mechanism or
        wheel that turns in a frame or block and serves to change the
        direction of or to transmit force.
    :cvar PUMP: {{block(Composition)}} composed of an apparatus that
        raises, drives, exhausts, or compresses fluids or gases by means
        of a piston, plunger, or set of rotating vanes.
    :cvar REEL: {{block(Composition)}} composed of a rotary storage unit
        for material.
    :cvar SENSING_ELEMENT: {{block(Composition)}} composed of a
        mechanism that provides a signal or measured value.
    :cvar SPREADER: {{block(Composition)}} composed of a mechanism that
        flattens or spreads materials.
    :cvar STORAGE_BATTERY: {{block(Composition)}} composed of one or
        more cells that converts chemical energy to electricity and
        serves as a source of power.
    :cvar SWITCH: {{block(Composition)}} composed of a mechanism that
        turns on or off an electric current or makes or breaks a
        circuit.
    :cvar TABLE: {{block(Composition)}} composed of a surface that holds
        an object or material.
    :cvar TANK: {{block(Composition)}} composed of a receptacle or
        container that holds material.
    :cvar TENSIONER: {{block(Composition)}} composed of a mechanism that
        provides or applies a stretch or strain to another mechanism.
    :cvar TRANSFORMER: {{block(Composition)}} composed of a mechanism
        that transforms electric energy from a source to a secondary
        circuit.
    :cvar VALVE: {{block(Composition)}} composed of a mechanism that
        halts or controls the flow of a liquid, gas, or other material
        through a passage, pipe, inlet, or outlet.
    :cvar VAT: {{block(Composition)}} composed of a container for liquid
        or powdered materials.
    :cvar WATER: {{block(Composition)}} composed of a fluid.
    :cvar WIRE: {{block(Composition)}} composed of a string like piece
        or filament of relatively rigid or flexible material provided in
        a variety of diameters.
    :cvar WORKPIECE: {{block(Composition)}} composed of an object or
        material on which a form of work is performed.
    :cvar COOLING_TOWER: {{block(Composition)}} composed of a heat
        exchange system that uses a fluid to transfer heat to the
        atmosphere.
    :cvar POT: {{block(Composition)}} composed of a tool storage
        location associated with a {{block(ToolMagazine)}} or
        {{block(AutomaticToolChanger)}}.
    :cvar STATION: {{block(Composition)}} composed of a storage or
        mounting location for a tool associated with a
        {{block(Turret)}}, {{block(GangToolBar)}}, or
        {{block(ToolRack)}}.
    :cvar TRANSFER_ARM: {{block(Composition)}} composed of a mechanism
        that physically moves a tool from one location to another.
    :cvar TRANSFER_POT: {{block(Pot)}} for a tool awaiting transfer from
        a {{block(ToolMagazine)}} to {{term(spindle)}} or
        {{block(Turret)}}.
    :cvar RETURN_POT: {{block(Pot)}} for a tool removed from
        {{term(spindle)}} or {{block(Turret)}} and awaiting for return
        to a {{block(ToolMagazine)}}.
    :cvar STAGING_POT: {{block(Pot)}} for a tool awaiting transfer to a
        {{block(ToolMagazine)}} or {{block(Turret)}} from outside of the
        piece of equipment.
    :cvar REMOVAL_POT: {{block(Pot)}} for a tool to be removed from a
        {{block(ToolMagazine)}} or {{block(Turret)}} to a location
        outside of the piece of equipment.
    :cvar EXPIRED_POT: {{block(Pot)}} for a tool that is no longer
        usable for removal from a {{block(ToolMagazine)}} or
        {{block(Turret)}}.
    """

    ACTUATOR = "ACTUATOR"
    AMPLIFIER = "AMPLIFIER"
    BALLSCREW = "BALLSCREW"
    BELT = "BELT"
    BRAKE = "BRAKE"
    CHAIN = "CHAIN"
    CHOPPER = "CHOPPER"
    CHUCK = "CHUCK"
    CHUTE = "CHUTE"
    CIRCUIT_BREAKER = "CIRCUIT_BREAKER"
    CLAMP = "CLAMP"
    COMPRESSOR = "COMPRESSOR"
    DOOR = "DOOR"
    DRAIN = "DRAIN"
    ENCODER = "ENCODER"
    EXPOSURE_UNIT = "EXPOSURE_UNIT"
    EXTRUSION_UNIT = "EXTRUSION_UNIT"
    FAN = "FAN"
    FILTER = "FILTER"
    GALVANOMOTOR = "GALVANOMOTOR"
    GRIPPER = "GRIPPER"
    HOPPER = "HOPPER"
    LINEAR_POSITION_FEEDBACK = "LINEAR_POSITION_FEEDBACK"
    MOTOR = "MOTOR"
    OIL = "OIL"
    POWER_SUPPLY = "POWER_SUPPLY"
    PULLEY = "PULLEY"
    PUMP = "PUMP"
    REEL = "REEL"
    SENSING_ELEMENT = "SENSING_ELEMENT"
    SPREADER = "SPREADER"
    STORAGE_BATTERY = "STORAGE_BATTERY"
    SWITCH = "SWITCH"
    TABLE = "TABLE"
    TANK = "TANK"
    TENSIONER = "TENSIONER"
    TRANSFORMER = "TRANSFORMER"
    VALVE = "VALVE"
    VAT = "VAT"
    WATER = "WATER"
    WIRE = "WIRE"
    WORKPIECE = "WORKPIECE"
    COOLING_TOWER = "COOLING_TOWER"
    POT = "POT"
    STATION = "STATION"
    TRANSFER_ARM = "TRANSFER_ARM"
    TRANSFER_POT = "TRANSFER_POT"
    RETURN_POT = "RETURN_POT"
    STAGING_POT = "STAGING_POT"
    REMOVAL_POT = "REMOVAL_POT"
    EXPIRED_POT = "EXPIRED_POT"


class ConstraintType(BaseModel):
    """
    The limit of a constraint.
    """

    model_config = ConfigDict(defer_build=True)
    value: float = field()


class CoordinateSystemEnumType(Enum):
    """
    The coordinate system to be used for the position.

    :cvar MACHINE: unchangeable coordinate system that has machine zero
        as its origin.
    :cvar WORK: coordinate system that represents the working area for a
        particular workpiece whose origin is shifted within the
        `MACHINE` coordinate system. If the `WORK` coordinates are not
        currently defined in the piece of equipment, the `MACHINE`
        coordinates will be used.
    """

    MACHINE = "MACHINE"
    WORK = "WORK"


class CoordinateSystemTypeEnumType(Enum):
    """
    The type of coordinate system.

    :cvar WORLD: The world
    :cvar BASE: The base of the manipulator chain
    :cvar OBJECT: The object
    :cvar TASK: The current task
    :cvar MECHANICAL_INTERFACE: The last joint in the chain
    :cvar TOOL: The tool's coord
    :cvar MOBILE_PLATFORM: The platform
    :cvar MACHINE: For machine tools, the coordinate system in the work
        area
    :cvar CAMERA: For machine tools, the coordinate system in the work
        area
    """

    WORLD = "WORLD"
    BASE = "BASE"
    OBJECT = "OBJECT"
    TASK = "TASK"
    MECHANICAL_INTERFACE = "MECHANICAL_INTERFACE"
    TOOL = "TOOL"
    MOBILE_PLATFORM = "MOBILE_PLATFORM"
    MACHINE = "MACHINE"
    CAMERA = "CAMERA"


class CriticalityEnumType(Enum):
    """
    The criticality.

    :cvar CRITICAL: critical
    :cvar NONCRITICAL: Not critical
    """

    CRITICAL = "CRITICAL"
    NONCRITICAL = "NONCRITICAL"


class DataItemBaseType(BaseModel):
    """
    A starting point for a data item.
    """

    model_config = ConfigDict(defer_build=True)
    value: str = field(default="")


class DataItemDescriptionType(BaseModel):
    """
    The description of a data item, can be free form text or elements.
    """

    model_config = ConfigDict(defer_build=True)
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
        },
    )


class DataItemEnumEnum(Enum):
    """
    The types of measurements available.

    :cvar ACCELERATION: positive rate of change of velocity.
    :cvar ACCUMULATED_TIME: accumulated time for an activity or event.
    :cvar AMPERAGE: strength of electrical current. **DEPRECATED** in
        *Version 1.6*. Replaced by `AMPERAGE_AC` and `AMPERAGE_DC`.
    :cvar ANGLE: angular position.
    :cvar ANGULAR_ACCELERATION: positive rate of change of angular
        velocity.
    :cvar ANGULAR_VELOCITY: rate of change of angular position.
    :cvar AXIS_FEEDRATE: feedrate of a linear axis.
    :cvar CAPACITY_FLUID: maximum amount of fluid that can be held by a
        container.
    :cvar CAPACITY_SPATIAL: maximum amount of material that can be held
        by a container.
    :cvar CONCENTRATION: percentage of one component within a mixture of
        components.
    :cvar CONDUCTIVITY: ability of a material to conduct electricity.
    :cvar CUTTING_SPEED: speed difference (relative velocity) between
        the cutting mechanism and the surface of the workpiece it is
        operating on.
    :cvar DENSITY: volumetric mass of a material per unit volume of that
        material.
    :cvar DEPOSITION_ACCELERATION_VOLUMETRIC: rate of change in spatial
        volume of material deposited in an additive manufacturing
        process.
    :cvar DEPOSITION_DENSITY: density of the material deposited in an
        additive manufacturing process per unit of volume.
    :cvar DEPOSITION_MASS: mass of the material deposited in an additive
        manufacturing process.
    :cvar DEPOSITION_RATE_VOLUMETRIC: rate at which a spatial volume of
        material is deposited in an additive manufacturing process.
    :cvar DEPOSITION_VOLUME: spatial volume of material to be deposited
        in an additive manufacturing process.
    :cvar DISPLACEMENT: change in position of an object.
    :cvar ELECTRICAL_ENERGY: {{block(Wattage)}} used or generated by a
        component over an interval of time.
    :cvar EQUIPMENT_TIMER: amount of time a piece of equipment or a sub-
        part of a piece of equipment has performed specific activities.
    :cvar FILL_LEVEL: amount of a substance remaining compared to the
        planned maximum amount of that substance.
    :cvar FLOW: rate of flow of a fluid.
    :cvar FREQUENCY: number of occurrences of a repeating event per unit
        time.
    :cvar GLOBAL_POSITION: position in three-dimensional space.
        **DEPRECATED** in Version 1.1.
    :cvar LENGTH: length of an object.
    :cvar LEVEL: level of a resource. **DEPRECATED** in *Version 1.2*.
        See `FILL_LEVEL`.
    :cvar LINEAR_FORCE: {{term(force)}} applied to a mass in one
        direction only.
    :cvar LOAD: actual versus the standard rating of a piece of
        equipment.
    :cvar MASS: mass of an object(s) or an amount of material.
    :cvar PATH_FEEDRATE: feedrate for the axes, or a single axis,
        associated with a {{block(Path)}} component.
    :cvar PATH_FEEDRATE_PER_REVOLUTION: feedrate for the axes, or a
        single axis.
    :cvar PATH_POSITION: position of a control point associated with a
        {{block(Controller)}} or a {{block(Path)}}.
    :cvar PH: acidity or alkalinity of a solution.
    :cvar POSITION: point along an axis in a {{term(cartesian coordinate
        system)}}.
    :cvar POWER_FACTOR: ratio of real power flowing to a load to the
        apparent power in that AC circuit.
    :cvar PRESSURE: force per unit area measured relative to atmospheric
        pressure. Commonly referred to as gauge pressure.
    :cvar PROCESS_TIMER: amount of time a piece of equipment has
        performed different types of activities associated with the
        process being performed at that piece of equipment.
    :cvar RESISTANCE: degree to which a substance opposes the passage of
        an electric current.
    :cvar ROTARY_VELOCITY: rotational speed of a rotary axis.
    :cvar SOUND_LEVEL: sound level or sound pressure level relative to
        atmospheric pressure.
    :cvar SPINDLE_SPEED: rotational speed of the rotary axis.
        **DEPRECATED** in *Version 1.2*. Replaced by `ROTARY_VELOCITY`.
    :cvar STRAIN: amount of deformation per unit length of an object
        when a load is applied.
    :cvar TEMPERATURE: degree of hotness or coldness measured on a
        definite scale.
    :cvar TENSION: force that stretches or elongates an object.
    :cvar TILT: angular displacement.
    :cvar TORQUE: turning force exerted on an object or by an object.
    :cvar VELOCITY: rate of change of position of a
        {{block(Component)}}.
    :cvar VISCOSITY: fluid's resistance to flow.
    :cvar VOLTAGE: electrical potential between two points.
        **DEPRECATED** in *Version 1.6*. Replaced by `VOLTAGE_AC` and
        `VOLTAGE_DC`.
    :cvar VOLT_AMPERE: apparent power in an electrical circuit, equal to
        the product of root-mean-square (RMS) voltage and RMS current
        (commonly referred to as VA).
    :cvar VOLT_AMPERE_REACTIVE: reactive power in an AC electrical
        circuit (commonly referred to as VAR).
    :cvar VOLUME_FLUID: fluid volume of an object or container.
    :cvar VOLUME_SPATIAL: geometric volume of an object or container.
    :cvar WATTAGE: power flowing through or dissipated by an electrical
        circuit or piece of equipment.
    :cvar AMPERAGE_AC: electrical current that reverses direction at
        regular short intervals.
    :cvar AMPERAGE_DC: electric current flowing in one direction only.
    :cvar VOLTAGE_AC: electrical potential between two points in an
        electrical circuit in which the current periodically reverses
        direction.
    :cvar VOLTAGE_DC: electrical potential between two points in an
        electrical circuit in which the current is unidirectional.
    :cvar X_DIMENSION: dimension of an entity relative to the X
        direction of the referenced coordinate system.
    :cvar Y_DIMENSION: dimension of an entity relative to the Y
        direction of the referenced coordinate system.
    :cvar Z_DIMENSION: dimension of an entity relative to the Z
        direction of the referenced coordinate system.
    :cvar DIAMETER: dimension of a diameter.
    :cvar ORIENTATION: angular position of a plane or vector relative to
        a {{term(cartesian coordinate system)}}
    :cvar HUMIDITY_RELATIVE: amount of water vapor present expressed as
        a percent to reach saturation at the same temperature.
    :cvar HUMIDITY_ABSOLUTE: amount of water vapor expressed in grams
        per cubic meter.
    :cvar HUMIDITY_SPECIFIC: ratio of the water vapor present over the
        total weight of the water vapor and air present expressed as a
        percent.
    :cvar OBSERVATION_UPDATE_RATE: average rate of change of values for
        data items in the MTConnect streams. The average is computed
        over a rolling window defined by the implementation.
    :cvar ASSET_UPDATE_RATE: average rate of change of values for assets
        in the MTConnect streams. The average is computed over a rolling
        window defined by the implementation.
    :cvar PRESSURIZATION_RATE: change of pressure per unit time.
    :cvar DECELERATION: negative rate of change of velocity.
    :cvar ANGULAR_DECELERATION: negative rate of change of angular
        velocity.
    :cvar PRESSURE_ABSOLUTE: force per unit area measured relative to a
        vacuum.
    :cvar OPENNESS: percentage open where 100% is fully open and 0% is
        fully closed.
    :cvar DEW_POINT: temperature at which moisture begins to condense,
        corresponding to saturation for a given absolute humidity.
    :cvar GRAVITATIONAL_FORCE: force relative to earth's gravity.
    :cvar GRAVITATIONAL_ACCELERATION: acceleration relative to Earth's
        gravity of 9.80665 `METER/SECOND^2`.
    :cvar BATTERY_CAPACITY: maximum rated charge a battery is capable of
        maintaining based on the battery discharging at a specified
        current over a specified time period.
    :cvar DISCHARGE_RATE: value of current being drawn from the
        {{block(Component)}}.
    :cvar CHARGE_RATE: value of the current being supplied to the
        {{block(Component)}} for the purpose of charging.
    :cvar BATTERY_CHARGE: value of the battery's present capacity
        expressed as a percentage of the battery's maximum rated
        capacity.
    :cvar SETTLING_ERROR: difference between actual and commanded
        position at the end of a motion.
    :cvar FOLLOWING_ERROR: difference between actual and commanded
        position at any specific point in time during a motion.
    :cvar SETTLING_ERROR_LINEAR: difference between the commanded
        encoder/resolver position, and the actual encoder/resolver
        position when motion is complete.
    :cvar SETTLING_ERROR_ANGULAR: angular difference between the
        commanded encoder/resolver position, and the actual
        encoder/resolver position when motion is complete.
    :cvar FOLLOWING_ERROR_LINEAR: difference between the commanded
        encoder/resolver position and the actual encoder/resolver
        position at any specified point in time during a motion.
    :cvar FOLLOWING_ERROR_ANGULAR: angular difference between the
        commanded encoder/resolver position and the actual
        encoder/resolver position at any specified point in time during
        a motion.
    :cvar DISPLACEMENT_LINEAR: absolute value of the change in position
        along a vector.
    :cvar DISPLACEMENT_ANGULAR: absolute value of the change in angular
        position around a vector
    :cvar POSITION_CARTESIAN: point in a {{term(cartesian coordinate
        system)}}.
    :cvar RESISTIVITY: inability of a material to conduct electricity.
    :cvar FILL_HEIGHT: amount of a substance in a container.
    :cvar PARTICLE_COUNT: number of particles counted by their size or
        other characteristics.
    :cvar PARTICLE_SIZE: size of particles counted by their size or
        other characteristics.
    :cvar WATER_HARDNESS: concentration of calcium carbonate (CaCO3) in
        water
    :cvar ACTIVE_AXES: set of axes currently associated with a
        {{block(Path)}} or {{block(Controller)}}.
    :cvar ACTUATOR_STATE: operational state of an apparatus for moving
        or controlling a mechanism or system.
    :cvar ALARM: **DEPRECATED:** Replaced with `CONDITION` category data
        items in Version 1.1.0.
    :cvar ASSET_CHANGED: {{property(Asset::assetId)}} of the
        {{block(Asset)}} that has been changed.
    :cvar ASSET_REMOVED: {{property(Asset::assetId)}} of the
        {{block(Asset)}} that has been removed.
    :cvar AVAILABILITY: {{term(agent)}}'s ability to communicate with
        the data source.
    :cvar AXIS_COUPLING: describes the way the axes will be associated
        to each other. This is used in conjunction with `COUPLED_AXES`
        to indicate the way they are interacting.
    :cvar AXIS_FEEDRATE_OVERRIDE: value of a signal or calculation
        issued to adjust the feedrate of an individual linear type axis.
    :cvar AXIS_INTERLOCK: state of the axis lockout function when power
        has been removed and the axis is allowed to move freely.
    :cvar AXIS_STATE: state of a {{block(Linear)}} or {{block(Rotary)}}
        component representing an axis.
    :cvar BLOCK: line of code or command being executed by a
        {{block(Controller)}} entity.
    :cvar BLOCK_COUNT: total count of the number of blocks of program
        code that have been executed since execution started.
    :cvar CHUCK_INTERLOCK: state of an interlock function or control
        logic state intended to prevent the associated {{block(Chuck)}}
        component from being operated.
    :cvar CHUCK_STATE: operating state of a mechanism that holds a part
        or stock material during a manufacturing process. It may also
        represent a mechanism that holds any other mechanism in place
        within a piece of equipment.
    :cvar CODE: programmatic code being executed. **DEPRECATED** in
        *Version 1.1*.
    :cvar COMPOSITION_STATE: operating state of a mechanism represented
        by a {{block(Composition)}} entity.
    :cvar CONTROLLER_MODE: current mode of the {{block(Controller)}}
        component.
    :cvar CONTROLLER_MODE_OVERRIDE: setting or operator selection that
        changes the behavior of a piece of equipment.
    :cvar COUPLED_AXES: set of associated axes.
    :cvar DATE_CODE: time and date code associated with a material or
        other physical item.
    :cvar DEVICE_UUID: identifier of another piece of equipment that is
        temporarily associated with a component of this piece of
        equipment to perform a particular function.
    :cvar DIRECTION: direction of motion.
    :cvar DOOR_STATE: operational state of a {{block(Door)}} component
        or composition element.
    :cvar EMERGENCY_STOP: state of the emergency stop signal for a piece
        of equipment, controller path, or any other component or
        subsystem of a piece of equipment.
    :cvar END_OF_BAR: indication of whether the end of a piece of bar
        stock being feed by a bar feeder has been reached.
    :cvar EQUIPMENT_MODE: indication that a piece of equipment, or a
        sub-part of a piece of equipment, is performing specific types
        of activities.
    :cvar EXECUTION: operating state of a {{block(Component)}}.
    :cvar FUNCTIONAL_MODE: current intended production status of the
        {{block(Component)}}.
    :cvar HARDNESS: hardness of a material.
    :cvar LINE: current line of code being executed. **DEPRECATED** in
        *Version 1.4.0*.
    :cvar LINE_LABEL: identifier for a {{block(Block)}} of code in a
        {{block(Program)}}.
    :cvar LINE_NUMBER: position of a block of program code within a
        control program.
    :cvar MATERIAL: identifier of a material used or consumed in the
        manufacturing process
    :cvar MATERIAL_LAYER: identifies the layers of material applied to a
        part or product as part of an additive manufacturing process.
    :cvar MESSAGE: information to be transferred from a piece of
        equipment to a client software application.
    :cvar OPERATOR_ID: identifier of the person currently responsible
        for operating the piece of equipment.
    :cvar PALLET_ID: identifier for a pallet.
    :cvar PART_COUNT: aggregate count of parts.
    :cvar PART_DETECT: indication designating whether a part or work
        piece has been detected or is present.
    :cvar PART_ID: identifier of a part in a manufacturing operation.
    :cvar PART_NUMBER: identifier of a part or product moving through
        the manufacturing process. **DEPRECATED** in *Version 1.7*.
        `PART_NUMBER` is now a `subType` of `PART_KIND_ID`.
    :cvar PATH_FEEDRATE_OVERRIDE: value of a signal or calculation
        issued to adjust the feedrate for the axes associated with a
        {{block(Path)}} component that may represent a single axis or
        the coordinated movement of multiple axes.
    :cvar PATH_MODE: describes the operational relationship between a
        {{block(Path)}} entity and another {{block(Path)}} entity for
        pieces of equipment comprised of multiple logical groupings of
        controlled axes or other logical operations.
    :cvar POWER_STATE: indication of the status of the source of energy
        for an entity to allow it to perform its intended function or
        the state of an enabling signal providing permission for the
        entity to perform its functions.
    :cvar POWER_STATUS: status of the {{block(Component)}}.
        **DEPRECATED** in *Version 1.1.0*.
    :cvar PROCESS_TIME: time and date associated with an activity or
        event.
    :cvar PROGRAM: name of the logic or motion program being executed by
        the {{block(Controller)}} component.
    :cvar PROGRAM_COMMENT: comment or non-executable statement in the
        control program.
    :cvar PROGRAM_EDIT: indication of the status of the
        {{block(Controller)}} components program editing mode. A program
        may be edited while another is executed.
    :cvar PROGRAM_EDIT_NAME: name of the program being edited. This is
        used in conjunction with {{block(ProgramEdit)}} when in `ACTIVE`
        state.
    :cvar PROGRAM_HEADER: non-executable header section of the control
        program.
    :cvar PROGRAM_LOCATION: {{term(URI)}} for the source file associated
        with {{block(Program)}}.
    :cvar PROGRAM_LOCATION_TYPE: defines whether the logic or motion
        program defined by {{block(Program)}} is being executed from the
        local memory of the controller or from an outside source.
    :cvar PROGRAM_NEST_LEVEL: indication of the nesting level within a
        control program that is associated with the code or instructions
        that is currently being executed.
    :cvar ROTARY_MODE: current operating mode for a {{block(Rotary)}}
        type axis.
    :cvar ROTARY_VELOCITY_OVERRIDE: percentage change to the velocity of
        the programmed velocity for a {{block(Rotary)}} axis.
    :cvar SERIAL_NUMBER: serial number associated with a
        {{block(Component)}}, {{block(Asset)}}, or {{block(Device)}}.
    :cvar SPINDLE_INTERLOCK: indication of the status of the spindle for
        a piece of equipment when power has been removed and it is free
        to rotate.
    :cvar TOOL_ASSET_ID: identifier of an individual tool asset.
    :cvar TOOL_GROUP: identifier for the tool group associated with a
        specific tool. Commonly used to designate spare tools.
    :cvar TOOL_ID: identifier of the tool currently in use for a given
        `Path`. **DEPRECATED** in *Version 1.2.0*. See `TOOL_NUMBER`.
    :cvar TOOL_NUMBER: identifier assigned by the {{block(Controller)}}
        component to a cutting tool when in use by a piece of equipment.
    :cvar TOOL_OFFSET: reference to the tool offset variables applied to
        the active cutting tool.
    :cvar USER: identifier of the person currently responsible for
        operating the piece of equipment.
    :cvar VARIABLE: data whose meaning may change over time due to
        changes in the operation of a piece of equipment or the process
        being executed on that piece of equipment.
    :cvar WAIT_STATE: indication of the reason that {{block(Execution)}}
        is reporting a value of `WAIT`.
    :cvar WIRE: identifier for the type of wire used as the cutting
        mechanism in Electrical Discharge Machining or similar
        processes.
    :cvar WORKHOLDING_ID: identifier for the current workholding or part
        clamp in use by a piece of equipment. **DEPRECATION WARNING**:
        Recommend using `FIXTURE_ID` instead.
    :cvar WORK_OFFSET: reference to offset variables for a work piece or
        part.
    :cvar OPERATING_SYSTEM: Operating System (OS) of a
        {{block(Component)}}.
    :cvar FIRMWARE: embedded software of a {{block(Component)}} .
    :cvar APPLICATION: application on a {{block(Component)}}.
    :cvar LIBRARY: software library on a {{block(Component)}}
    :cvar HARDWARE: hardware of a {{block(Component)}}.
    :cvar NETWORK: network details of a {{block(Component)}}.
    :cvar ROTATION: three space angular displacement of an object or
        coordinate system relative to a {{term(cartesian coordinate
        system)}}.
    :cvar TRANSLATION: three space linear displacement of an object or
        coordinate system relative to a {{term(cartesian coordinate
        system)}}.
    :cvar DEVICE_ADDED: {{term(UUID)}} of new device added to an
        {{term(MTConnect Agent)}}.
    :cvar DEVICE_REMOVED: {{term(UUID)}} of a device removed from an
        {{term(MTConnect Agent)}}.
    :cvar DEVICE_CHANGED: {{term(UUID)}} of the device whose
        {{term(metadata)}} has changed.
    :cvar CONNECTION_STATUS: status of the connection between an
        {{term(adapter)}} and an {{term(agent)}}.
    :cvar ADAPTER_SOFTWARE_VERSION: originator’s software version of the
        {{term(adapter)}}.
    :cvar ADAPTER_URI: {{term(URI)}} of the {{term(adapter)}}.
    :cvar MTCONNECT_VERSION: reference version of the MTConnect Standard
        supported by the {{term(adapter)}}.
    :cvar SENSOR_ATTACHMENT: {{term(attachment)}} between a sensor and
        an entity.
    :cvar PART_STATUS: state or condition of a part.
    :cvar PROCESS_OCCURRENCE_ID: identifier of a process being executed
        by the device.
    :cvar PROCESS_AGGREGATE_ID: identifier given to link the individual
        occurrence to a group of related occurrences, such as a process
        step in a process plan.
    :cvar PROCESS_KIND_ID: identifier given to link the individual
        occurrence to a class of processes or process definition.
    :cvar PART_GROUP_ID: identifier given to a collection of individual
        parts.
    :cvar PART_KIND_ID: identifier given to link the individual
        occurrence to a class of parts, typically distinguished by a
        particular part design.
    :cvar PART_UNIQUE_ID: identifier given to a distinguishable,
        individual part.
    :cvar CONTROL_LIMIT: set of limits used to indicate whether a
        process variable is stable and in control. **DEPRECATED** in
        *Version 2.5*. Replaced by `CONTROL_LIMITS`.
    :cvar SPECIFICATION_LIMIT: set of limits defining a range of values
        designating acceptable performance for a variable.
        **DEPRECATED** in *Version 2.5*. Replaced by
        `SPECIFICATION_LIMITS`.
    :cvar ALARM_LIMIT: set of limits used to trigger warning or alarm
        indicators. **DEPRECATED** in *Version 2.5*. Replaced by
        `ALARM_LIMITS`.
    :cvar LOAD_COUNT: accumulation of the number of times an operation
        has attempted to, or is planned to attempt to, load materials,
        parts, or other items.
    :cvar UNLOAD_COUNT: accumulation of the number of times an operation
        has attempted to, or is planned to attempt to, unload materials,
        parts, or other items.
    :cvar TRANSFER_COUNT: accumulation of the number of times an
        operation has attempted to, or is planned to attempt to,
        transfer materials, parts, or other items from one location to
        another.
    :cvar ACTIVATION_COUNT: accumulation of the number of times a
        function has attempted to, or is planned to attempt to, activate
        or be performed.
    :cvar DEACTIVATION_COUNT: accumulation of the number of times a
        function has attempted to, or is planned to attempt to,
        deactivate or cease.
    :cvar CYCLE_COUNT: accumulation of the number of times a cyclic
        function has attempted to, or is planned to attempt to execute.
    :cvar VALVE_STATE: state of a valve is one of open, closed, or
        transitioning between the states.
    :cvar LOCK_STATE: state or operating mode of a {{block(Lock)}}.
    :cvar PROCESS_STATE: particular condition of the process occurrence
        at a specific time.
    :cvar PART_PROCESSING_STATE: particular condition of the part
        occurrence at a specific time.
    :cvar OPERATING_MODE: state of {{block(Component)}} or
        {{block(Composition)}} that describes the automatic or manual
        operation of the entity.
    :cvar ASSET_COUNT: {{term(data set)}} of the number of
        {{termplural(Asset)}} of a given type for a {{term(Device)}}.
    :cvar MAINTENANCE_LIST: actions or activities to be performed in
        support of a piece of equipment.
    :cvar FIXTURE_ID: identifier for the current workholding or part
        clamp in use by a piece of equipment.
    :cvar PART_COUNT_TYPE: interpretation of `PART_COUNT`.
    :cvar CLOCK_TIME: time provided by a timing device at a specific
        point in time.
    :cvar HOST_NAME: name of the host computer supplying data.
    :cvar NETWORK_PORT: number of the TCP/IP or UDP/IP port for the
        connection endpoint.
    :cvar LEAK_DETECT: indication designating whether a leak has been
        detected.
    :cvar BATTERY_STATE: present status of the battery.
    :cvar FEATURE_PERSISTENT_ID: {{term(UUID)}} of a {{term(feature)}}.
        {{cite(ISO 10303 AP 242/239)}}.
    :cvar SENSOR_STATE: detection result of a sensor.
    :cvar COMPONENT_DATA: {{block(Event)}} that represents a
        {{block(Component)}} where the {{block(EntryDefinition)}}
        identifies the {{block(Component)}} and the
        {{block(CellDefinition)}}s define the {{block(Component)}}'s
        observed {{block(DataItem)}}s.
    :cvar WORK_OFFSETS: properties of each addressable work offset.
    :cvar TOOL_OFFSETS: properties of each addressable tool offset.
    :cvar FEATURE_MEASUREMENT: assessing elements of a
        {{term(feature)}}.
    :cvar CHARACTERISTIC_PERSISTENT_ID: {{term(UUID)}} of the
        {{term(characteristic)}}.
    :cvar MEASUREMENT_TYPE: class of measurement being performed.
        {{cite(QIF 3:2018 Section 6.3)}}
    :cvar MEASUREMENT_VALUE: measurement based on the measurement type.
    :cvar MEASUREMENT_UNITS: engineering units of the measurement.
    :cvar CHARACTERISTIC_STATUS: pass/fail result of the measurement.
    :cvar UNCERTAINTY_TYPE: method used to compute {{term(standard
        uncertainty)}}.
    :cvar UNCERTAINTY: {{term(uncertainty)}} specified by
        {{block(UncertaintyType)}}.
    :cvar SPECIFICATION_LIMITS: set of limits defining a range of values
        designating acceptable performance for a variable.
    :cvar CONTROL_LIMITS: set of limits used to indicate whether a
        process variable is stable and in control.
    :cvar ALARM_LIMITS: set of limits used to trigger warning or alarm
        indicators.
    :cvar TOOL_CUTTING_ITEM: references the
        {{block(CuttingToolLifeCycle)}} {{block(CuttingItem)}} index
        related to the {{property(CuttingItem::indices)}} of the
        currently active cutting tool edge.
    :cvar LOCATION_ADDRESS: structured information that allows the
        unambiguous determination of an object for purposes of
        identification and location. {{cite(ISO 19160-4:2017)}}
    :cvar ACTIVE_POWER_SOURCE: active energy source for the
        {{block(Component)}}.
    :cvar LOCATION_NARRATIVE: textual description of the location of an
        object or activity.
    :cvar THICKNESS: dimension between two surfaces of an object,
        usually the dimension of smallest measure, for example an
        additive layer, or a depth of cut.
    :cvar LOCATION_SPATIAL_GEOGRAPHIC: absolute geographic location
        defined by two coordinates, longitude and latitude and an
        elevation.
    :cvar PART_INDEX: sequence of a part in a group of parts.
    :cvar ASSOCIATED_ASSET_ID: {{property(Asset::assetId)}} of the
        {{block(Asset)}}s associated with a {{block(Component)}}.
    :cvar ASSET_ADDED: {{property(Asset::assetId)}} of the
        {{block(Asset)}} that has been added.
    :cvar TASK_ASSET_ID: {{property(Task::assetId)}} of the
        {{block(Task)}} that the {{block(Component)}} binds to
    :cvar BINDING_STATE: state of the binding process when
        {{block(Component)}} participates in a task as a collaborator
    :cvar SWING_ANGLE: angular range over which the object is designed
        to move about a fixed axis or pivot
    :cvar SWING_RADIUS: maximal linear distance from the pivot or axis
        to the furthest point reached by the object’s swing
    :cvar SWING_DIAMETER: maximal linear width (diameter) of the area
        described by the object’s movement about an axis
    :cvar DEPTH: dimension or distance as measured downwards from the
        top
    :cvar FIXTURE_ASSET_ID: {{property(Fixture::assetId)}} of the
        {{block(Fixture)}} that is associated with a
        {{block(Component)}}
    :cvar COMMUNICATIONS: indication that the piece of equipment has
        experienced a communications failure.
    :cvar DATA_RANGE: indication that the value of the data associated
        with a measured value or a calculation is outside of an expected
        range.
    :cvar LOGIC_PROGRAM: indication that an error occurred in the logic
        program or programmable logic controller (PLC) associated with a
        piece of equipment.
    :cvar MOTION_PROGRAM: indication that an error occurred in the
        motion program associated with a piece of equipment.
    :cvar SYSTEM: general purpose indication associated with an
        electronic component of a piece of equipment or a controller
        that represents a fault that is not associated with the
        operator, program, or hardware.
    :cvar ACTUATOR: indication of a fault associated with an actuator.
    :cvar INTERFACE_STATE: operational state of an {{block(Interface)}}.
    :cvar MATERIAL_FEED: operating state of the service to advance
        material or feed product to a piece of equipment from a
        continuous or bulk source.
    :cvar MATERIAL_CHANGE: operating state of the service to change the
        type of material or product being loaded or fed to a piece of
        equipment.
    :cvar MATERIAL_RETRACT: operating state of the service to remove or
        retract material or product.
    :cvar PART_CHANGE: operating state of the service to change the part
        or product associated with a piece of equipment to a different
        part or product.
    :cvar MATERIAL_LOAD: operating state of the service to load a piece
        of material or product.
    :cvar MATERIAL_UNLOAD: operating state of the service to unload a
        piece of material or product.
    :cvar OPEN_CHUCK: operating state of the service to open a chuck.
    :cvar OPEN_DOOR: operating state of the service to open a door.
    :cvar CLOSE_CHUCK: operating state of the service to close a chuck.
    :cvar CLOSE_DOOR: operating state of the service to close a door.
    """

    ACCELERATION = "ACCELERATION"
    ACCUMULATED_TIME = "ACCUMULATED_TIME"
    AMPERAGE = "AMPERAGE"
    ANGLE = "ANGLE"
    ANGULAR_ACCELERATION = "ANGULAR_ACCELERATION"
    ANGULAR_VELOCITY = "ANGULAR_VELOCITY"
    AXIS_FEEDRATE = "AXIS_FEEDRATE"
    CAPACITY_FLUID = "CAPACITY_FLUID"
    CAPACITY_SPATIAL = "CAPACITY_SPATIAL"
    CONCENTRATION = "CONCENTRATION"
    CONDUCTIVITY = "CONDUCTIVITY"
    CUTTING_SPEED = "CUTTING_SPEED"
    DENSITY = "DENSITY"
    DEPOSITION_ACCELERATION_VOLUMETRIC = "DEPOSITION_ACCELERATION_VOLUMETRIC"
    DEPOSITION_DENSITY = "DEPOSITION_DENSITY"
    DEPOSITION_MASS = "DEPOSITION_MASS"
    DEPOSITION_RATE_VOLUMETRIC = "DEPOSITION_RATE_VOLUMETRIC"
    DEPOSITION_VOLUME = "DEPOSITION_VOLUME"
    DISPLACEMENT = "DISPLACEMENT"
    ELECTRICAL_ENERGY = "ELECTRICAL_ENERGY"
    EQUIPMENT_TIMER = "EQUIPMENT_TIMER"
    FILL_LEVEL = "FILL_LEVEL"
    FLOW = "FLOW"
    FREQUENCY = "FREQUENCY"
    GLOBAL_POSITION = "GLOBAL_POSITION"
    LENGTH = "LENGTH"
    LEVEL = "LEVEL"
    LINEAR_FORCE = "LINEAR_FORCE"
    LOAD = "LOAD"
    MASS = "MASS"
    PATH_FEEDRATE = "PATH_FEEDRATE"
    PATH_FEEDRATE_PER_REVOLUTION = "PATH_FEEDRATE_PER_REVOLUTION"
    PATH_POSITION = "PATH_POSITION"
    PH = "PH"
    POSITION = "POSITION"
    POWER_FACTOR = "POWER_FACTOR"
    PRESSURE = "PRESSURE"
    PROCESS_TIMER = "PROCESS_TIMER"
    RESISTANCE = "RESISTANCE"
    ROTARY_VELOCITY = "ROTARY_VELOCITY"
    SOUND_LEVEL = "SOUND_LEVEL"
    SPINDLE_SPEED = "SPINDLE_SPEED"
    STRAIN = "STRAIN"
    TEMPERATURE = "TEMPERATURE"
    TENSION = "TENSION"
    TILT = "TILT"
    TORQUE = "TORQUE"
    VELOCITY = "VELOCITY"
    VISCOSITY = "VISCOSITY"
    VOLTAGE = "VOLTAGE"
    VOLT_AMPERE = "VOLT_AMPERE"
    VOLT_AMPERE_REACTIVE = "VOLT_AMPERE_REACTIVE"
    VOLUME_FLUID = "VOLUME_FLUID"
    VOLUME_SPATIAL = "VOLUME_SPATIAL"
    WATTAGE = "WATTAGE"
    AMPERAGE_AC = "AMPERAGE_AC"
    AMPERAGE_DC = "AMPERAGE_DC"
    VOLTAGE_AC = "VOLTAGE_AC"
    VOLTAGE_DC = "VOLTAGE_DC"
    X_DIMENSION = "X_DIMENSION"
    Y_DIMENSION = "Y_DIMENSION"
    Z_DIMENSION = "Z_DIMENSION"
    DIAMETER = "DIAMETER"
    ORIENTATION = "ORIENTATION"
    HUMIDITY_RELATIVE = "HUMIDITY_RELATIVE"
    HUMIDITY_ABSOLUTE = "HUMIDITY_ABSOLUTE"
    HUMIDITY_SPECIFIC = "HUMIDITY_SPECIFIC"
    OBSERVATION_UPDATE_RATE = "OBSERVATION_UPDATE_RATE"
    ASSET_UPDATE_RATE = "ASSET_UPDATE_RATE"
    PRESSURIZATION_RATE = "PRESSURIZATION_RATE"
    DECELERATION = "DECELERATION"
    ANGULAR_DECELERATION = "ANGULAR_DECELERATION"
    PRESSURE_ABSOLUTE = "PRESSURE_ABSOLUTE"
    OPENNESS = "OPENNESS"
    DEW_POINT = "DEW_POINT"
    GRAVITATIONAL_FORCE = "GRAVITATIONAL_FORCE"
    GRAVITATIONAL_ACCELERATION = "GRAVITATIONAL_ACCELERATION"
    BATTERY_CAPACITY = "BATTERY_CAPACITY"
    DISCHARGE_RATE = "DISCHARGE_RATE"
    CHARGE_RATE = "CHARGE_RATE"
    BATTERY_CHARGE = "BATTERY_CHARGE"
    SETTLING_ERROR = "SETTLING_ERROR"
    FOLLOWING_ERROR = "FOLLOWING_ERROR"
    SETTLING_ERROR_LINEAR = "SETTLING_ERROR_LINEAR"
    SETTLING_ERROR_ANGULAR = "SETTLING_ERROR_ANGULAR"
    FOLLOWING_ERROR_LINEAR = "FOLLOWING_ERROR_LINEAR"
    FOLLOWING_ERROR_ANGULAR = "FOLLOWING_ERROR_ANGULAR"
    DISPLACEMENT_LINEAR = "DISPLACEMENT_LINEAR"
    DISPLACEMENT_ANGULAR = "DISPLACEMENT_ANGULAR"
    POSITION_CARTESIAN = "POSITION_CARTESIAN"
    RESISTIVITY = "RESISTIVITY"
    FILL_HEIGHT = "FILL_HEIGHT"
    PARTICLE_COUNT = "PARTICLE_COUNT"
    PARTICLE_SIZE = "PARTICLE_SIZE"
    WATER_HARDNESS = "WATER_HARDNESS"
    ACTIVE_AXES = "ACTIVE_AXES"
    ACTUATOR_STATE = "ACTUATOR_STATE"
    ALARM = "ALARM"
    ASSET_CHANGED = "ASSET_CHANGED"
    ASSET_REMOVED = "ASSET_REMOVED"
    AVAILABILITY = "AVAILABILITY"
    AXIS_COUPLING = "AXIS_COUPLING"
    AXIS_FEEDRATE_OVERRIDE = "AXIS_FEEDRATE_OVERRIDE"
    AXIS_INTERLOCK = "AXIS_INTERLOCK"
    AXIS_STATE = "AXIS_STATE"
    BLOCK = "BLOCK"
    BLOCK_COUNT = "BLOCK_COUNT"
    CHUCK_INTERLOCK = "CHUCK_INTERLOCK"
    CHUCK_STATE = "CHUCK_STATE"
    CODE = "CODE"
    COMPOSITION_STATE = "COMPOSITION_STATE"
    CONTROLLER_MODE = "CONTROLLER_MODE"
    CONTROLLER_MODE_OVERRIDE = "CONTROLLER_MODE_OVERRIDE"
    COUPLED_AXES = "COUPLED_AXES"
    DATE_CODE = "DATE_CODE"
    DEVICE_UUID = "DEVICE_UUID"
    DIRECTION = "DIRECTION"
    DOOR_STATE = "DOOR_STATE"
    EMERGENCY_STOP = "EMERGENCY_STOP"
    END_OF_BAR = "END_OF_BAR"
    EQUIPMENT_MODE = "EQUIPMENT_MODE"
    EXECUTION = "EXECUTION"
    FUNCTIONAL_MODE = "FUNCTIONAL_MODE"
    HARDNESS = "HARDNESS"
    LINE = "LINE"
    LINE_LABEL = "LINE_LABEL"
    LINE_NUMBER = "LINE_NUMBER"
    MATERIAL = "MATERIAL"
    MATERIAL_LAYER = "MATERIAL_LAYER"
    MESSAGE = "MESSAGE"
    OPERATOR_ID = "OPERATOR_ID"
    PALLET_ID = "PALLET_ID"
    PART_COUNT = "PART_COUNT"
    PART_DETECT = "PART_DETECT"
    PART_ID = "PART_ID"
    PART_NUMBER = "PART_NUMBER"
    PATH_FEEDRATE_OVERRIDE = "PATH_FEEDRATE_OVERRIDE"
    PATH_MODE = "PATH_MODE"
    POWER_STATE = "POWER_STATE"
    POWER_STATUS = "POWER_STATUS"
    PROCESS_TIME = "PROCESS_TIME"
    PROGRAM = "PROGRAM"
    PROGRAM_COMMENT = "PROGRAM_COMMENT"
    PROGRAM_EDIT = "PROGRAM_EDIT"
    PROGRAM_EDIT_NAME = "PROGRAM_EDIT_NAME"
    PROGRAM_HEADER = "PROGRAM_HEADER"
    PROGRAM_LOCATION = "PROGRAM_LOCATION"
    PROGRAM_LOCATION_TYPE = "PROGRAM_LOCATION_TYPE"
    PROGRAM_NEST_LEVEL = "PROGRAM_NEST_LEVEL"
    ROTARY_MODE = "ROTARY_MODE"
    ROTARY_VELOCITY_OVERRIDE = "ROTARY_VELOCITY_OVERRIDE"
    SERIAL_NUMBER = "SERIAL_NUMBER"
    SPINDLE_INTERLOCK = "SPINDLE_INTERLOCK"
    TOOL_ASSET_ID = "TOOL_ASSET_ID"
    TOOL_GROUP = "TOOL_GROUP"
    TOOL_ID = "TOOL_ID"
    TOOL_NUMBER = "TOOL_NUMBER"
    TOOL_OFFSET = "TOOL_OFFSET"
    USER = "USER"
    VARIABLE = "VARIABLE"
    WAIT_STATE = "WAIT_STATE"
    WIRE = "WIRE"
    WORKHOLDING_ID = "WORKHOLDING_ID"
    WORK_OFFSET = "WORK_OFFSET"
    OPERATING_SYSTEM = "OPERATING_SYSTEM"
    FIRMWARE = "FIRMWARE"
    APPLICATION = "APPLICATION"
    LIBRARY = "LIBRARY"
    HARDWARE = "HARDWARE"
    NETWORK = "NETWORK"
    ROTATION = "ROTATION"
    TRANSLATION = "TRANSLATION"
    DEVICE_ADDED = "DEVICE_ADDED"
    DEVICE_REMOVED = "DEVICE_REMOVED"
    DEVICE_CHANGED = "DEVICE_CHANGED"
    CONNECTION_STATUS = "CONNECTION_STATUS"
    ADAPTER_SOFTWARE_VERSION = "ADAPTER_SOFTWARE_VERSION"
    ADAPTER_URI = "ADAPTER_URI"
    MTCONNECT_VERSION = "MTCONNECT_VERSION"
    SENSOR_ATTACHMENT = "SENSOR_ATTACHMENT"
    PART_STATUS = "PART_STATUS"
    PROCESS_OCCURRENCE_ID = "PROCESS_OCCURRENCE_ID"
    PROCESS_AGGREGATE_ID = "PROCESS_AGGREGATE_ID"
    PROCESS_KIND_ID = "PROCESS_KIND_ID"
    PART_GROUP_ID = "PART_GROUP_ID"
    PART_KIND_ID = "PART_KIND_ID"
    PART_UNIQUE_ID = "PART_UNIQUE_ID"
    CONTROL_LIMIT = "CONTROL_LIMIT"
    SPECIFICATION_LIMIT = "SPECIFICATION_LIMIT"
    ALARM_LIMIT = "ALARM_LIMIT"
    LOAD_COUNT = "LOAD_COUNT"
    UNLOAD_COUNT = "UNLOAD_COUNT"
    TRANSFER_COUNT = "TRANSFER_COUNT"
    ACTIVATION_COUNT = "ACTIVATION_COUNT"
    DEACTIVATION_COUNT = "DEACTIVATION_COUNT"
    CYCLE_COUNT = "CYCLE_COUNT"
    VALVE_STATE = "VALVE_STATE"
    LOCK_STATE = "LOCK_STATE"
    PROCESS_STATE = "PROCESS_STATE"
    PART_PROCESSING_STATE = "PART_PROCESSING_STATE"
    OPERATING_MODE = "OPERATING_MODE"
    ASSET_COUNT = "ASSET_COUNT"
    MAINTENANCE_LIST = "MAINTENANCE_LIST"
    FIXTURE_ID = "FIXTURE_ID"
    PART_COUNT_TYPE = "PART_COUNT_TYPE"
    CLOCK_TIME = "CLOCK_TIME"
    HOST_NAME = "HOST_NAME"
    NETWORK_PORT = "NETWORK_PORT"
    LEAK_DETECT = "LEAK_DETECT"
    BATTERY_STATE = "BATTERY_STATE"
    FEATURE_PERSISTENT_ID = "FEATURE_PERSISTENT_ID"
    SENSOR_STATE = "SENSOR_STATE"
    COMPONENT_DATA = "COMPONENT_DATA"
    WORK_OFFSETS = "WORK_OFFSETS"
    TOOL_OFFSETS = "TOOL_OFFSETS"
    FEATURE_MEASUREMENT = "FEATURE_MEASUREMENT"
    CHARACTERISTIC_PERSISTENT_ID = "CHARACTERISTIC_PERSISTENT_ID"
    MEASUREMENT_TYPE = "MEASUREMENT_TYPE"
    MEASUREMENT_VALUE = "MEASUREMENT_VALUE"
    MEASUREMENT_UNITS = "MEASUREMENT_UNITS"
    CHARACTERISTIC_STATUS = "CHARACTERISTIC_STATUS"
    UNCERTAINTY_TYPE = "UNCERTAINTY_TYPE"
    UNCERTAINTY = "UNCERTAINTY"
    SPECIFICATION_LIMITS = "SPECIFICATION_LIMITS"
    CONTROL_LIMITS = "CONTROL_LIMITS"
    ALARM_LIMITS = "ALARM_LIMITS"
    TOOL_CUTTING_ITEM = "TOOL_CUTTING_ITEM"
    LOCATION_ADDRESS = "LOCATION_ADDRESS"
    ACTIVE_POWER_SOURCE = "ACTIVE_POWER_SOURCE"
    LOCATION_NARRATIVE = "LOCATION_NARRATIVE"
    THICKNESS = "THICKNESS"
    LOCATION_SPATIAL_GEOGRAPHIC = "LOCATION_SPATIAL_GEOGRAPHIC"
    PART_INDEX = "PART_INDEX"
    ASSOCIATED_ASSET_ID = "ASSOCIATED_ASSET_ID"
    ASSET_ADDED = "ASSET_ADDED"
    TASK_ASSET_ID = "TASK_ASSET_ID"
    BINDING_STATE = "BINDING_STATE"
    SWING_ANGLE = "SWING_ANGLE"
    SWING_RADIUS = "SWING_RADIUS"
    SWING_DIAMETER = "SWING_DIAMETER"
    DEPTH = "DEPTH"
    FIXTURE_ASSET_ID = "FIXTURE_ASSET_ID"
    COMMUNICATIONS = "COMMUNICATIONS"
    DATA_RANGE = "DATA_RANGE"
    LOGIC_PROGRAM = "LOGIC_PROGRAM"
    MOTION_PROGRAM = "MOTION_PROGRAM"
    SYSTEM = "SYSTEM"
    ACTUATOR = "ACTUATOR"
    INTERFACE_STATE = "INTERFACE_STATE"
    MATERIAL_FEED = "MATERIAL_FEED"
    MATERIAL_CHANGE = "MATERIAL_CHANGE"
    MATERIAL_RETRACT = "MATERIAL_RETRACT"
    PART_CHANGE = "PART_CHANGE"
    MATERIAL_LOAD = "MATERIAL_LOAD"
    MATERIAL_UNLOAD = "MATERIAL_UNLOAD"
    OPEN_CHUCK = "OPEN_CHUCK"
    OPEN_DOOR = "OPEN_DOOR"
    CLOSE_CHUCK = "CLOSE_CHUCK"
    CLOSE_DOOR = "CLOSE_DOOR"


class DataItemFilterEnumType(Enum):
    """
    The type of filter.

    :cvar MINIMUM_DELTA: new value **MUST NOT** be reported for a data
        item unless the measured value has changed from the last
        reported value by at least the delta given as the value of this
        element. The value of {{block(Filter)}} **MUST** be an absolute
        value using the same units as the reported data.
    :cvar PERIOD: data reported for a data item is provided on a
        periodic basis. The `PERIOD` for reporting data is defined in
        the value of the {{block(Filter)}}. The value of
        {{block(Filter)}} **MUST** be an absolute value reported in
        seconds representing the time between reported samples of the
        value of the data item.
    """

    MINIMUM_DELTA = "MINIMUM_DELTA"
    PERIOD = "PERIOD"


class DataItemRelationshipTypeEnumType(Enum):
    """
    How the data items are related.

    :cvar ATTACHMENT: A reference to a DataItem that associates the
        values with an external entity
    :cvar COORDINATE_SYSTEM: The referenced DataItem provides the id of
        the effective Coordinate System
    :cvar LIMIT: The referenced DataItem provides process limits.
    :cvar OBSERVATION: The referenced DataItem provides the observed
        values.
    """

    ATTACHMENT = "ATTACHMENT"
    COORDINATE_SYSTEM = "COORDINATE_SYSTEM"
    LIMIT = "LIMIT"
    OBSERVATION = "OBSERVATION"


class DataItemResetValueEnum(Enum):
    """
    The reset intervals.

    :cvar ACTION_COMPLETE: {{term(observation)}} of the
        {{block(DataItem)}} that is measuring an action or operation is
        to be reset upon completion of that action or operation.
    :cvar ANNUAL: {{term(observation)}} of the {{block(DataItem)}} is to
        be reset at the end of a 12-month period.
    :cvar DAY: {{term(observation)}} of the {{block(DataItem)}} is to be
        reset at the end of a 24-hour period.
    :cvar LIFE: {{term(observation)}} of the {{block(DataItem)}} is not
        reset and accumulates for the entire life of the piece of
        equipment.
    :cvar MAINTENANCE: {{term(observation)}} of the {{block(DataItem)}}
        is to be reset upon completion of a maintenance event.
    :cvar MONTH: {{term(observation)}} of the {{block(DataItem)}} is to
        be reset at the end of a monthly period.
    :cvar POWER_ON: {{term(observation)}} of the {{block(DataItem)}} is
        to be reset when power was applied to the piece of equipment
        after a planned or unplanned interruption of power has occurred.
    :cvar SHIFT: {{term(observation)}} of the {{block(DataItem)}} is to
        be reset at the end of a work shift.
    :cvar WEEK: {{term(observation)}} of the {{block(DataItem)}} is to
        be reset at the end of a 7-day period.
    """

    ACTION_COMPLETE = "ACTION_COMPLETE"
    ANNUAL = "ANNUAL"
    DAY = "DAY"
    LIFE = "LIFE"
    MAINTENANCE = "MAINTENANCE"
    MONTH = "MONTH"
    POWER_ON = "POWER_ON"
    SHIFT = "SHIFT"
    WEEK = "WEEK"


class DataItemSourceType(BaseModel):
    """
    A native data source.

    :ivar value:
    :ivar data_item_id: The optional data item within the source
        component that provides the underlying data
    :ivar component_id: The component that is collecting the data
        associated with this data item
    :ivar composition_id: The optional composition identifier for the
        source of this data item
    """

    model_config = ConfigDict(defer_build=True)
    value: str = field(default="")
    data_item_id: None | str = field(
        default=None,
        metadata={
            "name": "dataItemId",
            "type": "Attribute",
        },
    )
    component_id: None | str = field(
        default=None,
        metadata={
            "name": "componentId",
            "type": "Attribute",
        },
    )
    composition_id: None | str = field(
        default=None,
        metadata={
            "name": "compositionId",
            "type": "Attribute",
        },
    )


class DataItemStatisticsEnum(Enum):
    """
    Statistical operations on data.

    :cvar AVERAGE: mathematical average value calculated for the data
        item during the calculation period.
    :cvar KURTOSIS: **DEPRECATED** in *Version 1.6*. ~~A measure of the
        "peakedness" of a probability distribution; i.e., the shape of
        the distribution curve.~~
    :cvar MAXIMUM: maximum or peak value recorded for the data item
        during the calculation period.
    :cvar MEDIAN: middle number of a series of numbers.
    :cvar MINIMUM: minimum value recorded for the data item during the
        calculation period.
    :cvar MODE: number in a series of numbers that occurs most often.
    :cvar RANGE: difference between the maximum and minimum value of a
        data item during the calculation period. Also represents Peak-
        to-Peak measurement in a waveform.
    :cvar ROOT_MEAN_SQUARE: mathematical Root Mean Square (RMS) value
        calculated for the data item during the calculation period.
    :cvar STANDARD_DEVIATION: statistical Standard Deviation value
        calculated for the data item during the calculation period.
    """

    AVERAGE = "AVERAGE"
    KURTOSIS = "KURTOSIS"
    MAXIMUM = "MAXIMUM"
    MEDIAN = "MEDIAN"
    MINIMUM = "MINIMUM"
    MODE = "MODE"
    RANGE = "RANGE"
    ROOT_MEAN_SQUARE = "ROOT_MEAN_SQUARE"
    STANDARD_DEVIATION = "STANDARD_DEVIATION"


class DataItemSubEnumEnum(Enum):
    """
    The sub-types for a measurement.

    :cvar ABSOLUTE: relating to or derived in the simplest manner from
        the fundamental units or measurements.
    :cvar ACTION: indication of the operating state of a mechanism.
    :cvar ACTUAL: reported value of an {{term(observation)}}.
    :cvar ALL: all actions, items, or activities being counted
        independent of the outcome.
    :cvar ALTERNATING: measurement of alternating voltage or current. If
        not specified further in statistic, defaults to RMS voltage.
        **DEPRECATED** in *Version 1.6*.
    :cvar A_SCALE: A-Scale weighting factor on the frequency scale.
    :cvar AUXILIARY: when multiple locations on a piece of bar stock
        being feed by a bar feeder are referenced as the indication of
        whether the end of that piece of bar stock has been reached.
    :cvar BAD: actions, items, or activities being counted that do not
        conform to specification or expectation.
    :cvar BRINELL: scale to measure the resistance to deformation of a
        surface.
    :cvar B_SCALE: B-Scale weighting factor on the frequency scale.
    :cvar COMMANDED: directive value including adjustments such as an
        offset or overrides.
    :cvar CONSUMED: amount of material consumed from an object or
        container during a manufacturing process.
    :cvar CONTROL: state of the enabling signal or control logic that
        enables or disables the function or operation of the entity.
    :cvar C_SCALE: C-Scale weighting factor on the frequency scale.
    :cvar DELAY: elapsed time of a temporary halt of action.
    :cvar DIRECT: DC current or voltage. **DEPRECATED** in *Version
        1.6*.
    :cvar DRY_RUN: setting or operator selection used to execute a test
        mode to confirm the execution of machine functions.
    :cvar D_SCALE: D-Scale weighting factor on the frequency scale.
    :cvar EXPIRATION: relating to the expiration or end of useful life
        for a material or other physical item.
    :cvar FIRST_USE: relating to the first use of a material or other
        physical item.
    :cvar GOOD: actions, items, or activities being counted that conform
        to specification or expectation.
    :cvar INCREMENTAL: relating to or derived from the last
        {{term(observation)}}.
    :cvar JOG: relating to momentary activation of a function or a
        movement. **DEPRECATION WARNING**: May be deprecated in the
        future.
    :cvar LATERAL: indication of the position of a mechanism that may
        move in a lateral direction.
    :cvar LEEB: scale to measure the elasticity of a surface.
    :cvar LENGTH: reference to a length type tool offset variable.
    :cvar LINE: state of the power source.
    :cvar LINEAR: direction of motion of a linear motion.
    :cvar LOADED: indication that the subparts of a piece of equipment
        are under load.
    :cvar MACHINE_AXIS_LOCK: setting or operator selection that changes
        the behavior of the controller on a piece of equipment.
    :cvar MAIN: relating to the primary logic or motion program
        currently being executed.
    :cvar MAINTENANCE: relating to maintenance on the piece of
        equipment.
    :cvar MANUAL_UNCLAMP: indication of the state of an operator
        controlled interlock that can inhibit the ability to initiate an
        unclamp action of an electronically controlled chuck.
    :cvar MANUFACTURE: related to the production of a material or other
        physical item.
    :cvar MAXIMUM: maximum value.
    :cvar MINIMUM: minimum value.
    :cvar MOHS: scale to measure the resistance to scratching of a
        surface.
    :cvar MOTION: indication of the open or closed state of a mechanism.
    :cvar NO_SCALE: no weighting factor on the frequency scale.
    :cvar OPERATING: piece of equipment that is powered or performing
        any activity.
    :cvar OPERATOR: relating to the person currently responsible for
        operating the piece of equipment.
    :cvar OPTIONAL_STOP: setting or operator selection that changes the
        behavior of the controller on a piece of equipment.
    :cvar OVERRIDE: overridden value.
    :cvar POWERED: piece of equipment is powered and functioning or
        {{block(Component)}} that are required to remain on are powered.
    :cvar PRIMARY: main or principle.
    :cvar PROBE: position provided by a measurement probe. **DEPRECATION
        WARNING**: May be deprecated in the future.
    :cvar PROCESS: relating to production of a part or product on a
        piece of equipment.
    :cvar PROGRAMMED: directive value without offsets and adjustments.
    :cvar RADIAL: reference to a radial type tool offset variable.
    :cvar RAPID: performing an operation faster or in less time than
        nominal rate.
    :cvar REMAINING: remaining measure or count of an action, object or
        activity.
    :cvar ROCKWELL: scale to measure the resistance to deformation of a
        surface.
    :cvar ROTARY: direction of a rotary motion using the right hand rule
        convention.
    :cvar SCHEDULE: identity of a control program that is used to
        specify the order of execution of other programs.
    :cvar SET_UP: relating to the preparation of a piece of equipment
        for production or restoring the piece of equipment to a neutral
        state after production.
    :cvar SHORE: scale to measure the resistance to deformation of a
        surface.
    :cvar SINGLE_BLOCK: setting or operator selection that changes the
        behavior of the controller on a piece of equipment.
    :cvar STANDARD: standard measure of an object or an action.
    :cvar START: boundary when an activity or an event commences.
    :cvar SWITCHED: indication of the activation state of a mechanism
        represented by a {{block(Composition)}}.
    :cvar TARGET: goal of the operation or process.
    :cvar TARGET_COMPLETION: relating to the end or completion of an
        activity or event.
    :cvar TOOL_CHANGE_STOP: setting or operator selection that changes
        the behavior of the controller on a piece of equipment.
    :cvar USEABLE: remaining usable measure of an object or action.
    :cvar VERTICAL: indication of the position of a mechanism that may
        move in a vertical direction.
    :cvar VICKERS: scale to measure the resistance to deformation of a
        surface.
    :cvar WORKING: piece of equipment performing any activity, the
        equipment is active and performing a function under load or not.
    :cvar IPV4_ADDRESS: IPV4 network address of the
        {{block(Component)}}.
    :cvar IPV6_ADDRESS: IPV6 network address of the
        {{block(Component)}}.
    :cvar GATEWAY: Gateway for the {{block(Component)}} network.
    :cvar SUBNET_MASK: SubNet mask for the {{block(Component)}} network.
    :cvar VLAN_ID: layer2 Virtual Local Network (VLAN) ID for the
        {{block(Component)}} network.
    :cvar MAC_ADDRESS: Media Access Control Address. The unique physical
        address of the network hardware.
    :cvar WIRELESS: identifies whether the connection type is wireless.
    :cvar LICENSE: license code to validate or activate the hardware or
        software.
    :cvar VERSION: version of the hardware or software.
    :cvar RELEASE_DATE: date the hardware or software was released for
        general use.
    :cvar INSTALL_DATE: date the hardware or software was installed.
    :cvar MANUFACTURER: corporate identity for the maker of the hardware
        or software.
    :cvar UUID: universally unique identifier as specified in ISO 11578
        or RFC 4122.
    :cvar SERIAL_NUMBER: serial number that uniquely identifies a
        specific part.
    :cvar RAW_MATERIAL: material that is used to produce parts.
    :cvar LOT: group of parts tracked as a lot.
    :cvar BATCH: group of parts produced in a batch.
    :cvar HEAT_TREAT: material heat number.
    :cvar PART_NUMBER: particular part design or model.
    :cvar PART_FAMILY: group of parts having similarities in geometry,
        manufacturing process, and/or functions.
    :cvar PART_NAME: word or set of words by which a part is known,
        addressed, or referred to.
    :cvar PROCESS_STEP: step in the process plan that this occurrence
        corresponds to.
    :cvar PROCESS_PLAN: process plan that a process occurrence belongs
        to.
    :cvar ORDER_NUMBER: authorization of a process occurrence.
    :cvar PROCESS_NAME: word or set of words by which a process being
        executed (process occurrence) by the device is known, addressed,
        or referred to.
    :cvar ISO_STEP_EXECUTABLE: reference to a ISO 10303 Executable.
    :cvar COMPLETE: associated with the completion of an activity or
        event.
    :cvar ACTIVE: relating to logic or motion program currently
        executing.
    :cvar FAILED: actions or activities that were attempted , but failed
        to complete or resulted in an unexpected or unacceptable
        outcome.
    :cvar ABORTED: actions or activities that were attempted, but
        terminated before they could be completed.
    :cvar ENDED: boundary when an activity or an event terminates.
    :cvar WASTE: amount discarded.
    :cvar PART: amount included in the {{term(part)}}.
    :cvar REQUEST: {{term(request)}} by an {{block(Interface)}} for a
        task.
    :cvar RESPONSE: {{term(response)}} by an {{block(Interface)}} to a
        {{term(request)}} for a task.
    :cvar ACTIVITY: phase or segment of a recipe or program.
    :cvar SEGMENT: phase of a recipe process.
    :cvar RECIPE: process as part of product production; can be a
        subprocess of a larger process.
    :cvar OPERATION: step of a discrete manufacturing process.
    :cvar BINARY: observed as a binary data type.
    :cvar BOOLEAN: observed as a boolean data type.
    :cvar ENUMERATED: observed as a set containing a restricted number
        of discrete values where each discrete value is named and
        unique. {{cite(ISO 21961:2003, 013)}}
    :cvar DETECT: indicated by the presence or existence of something.
    :cvar MODEL: model info of the hardware or software.
    :cvar MEASURED: {{def(DataItemSubType::ACTUAL)}} that has
        {{term(uncertainty)}}.
    :cvar GAS: fluid that has no definite shape or volume.
    :cvar LIQUID: fluid that has a definite volume but no definite
        shape.
    :cvar SOLID: matter that has a definite shape and a definite volume.
    :cvar ELECTRODE: component used for many electrical discharge
        manufacturing processes like welding
    :cvar FILLER: material used to fill a gap or space
    :cvar PLUNGE: move with a rush or sudden impulse into or out of
    :cvar PECK: move suddenly or in a jerking motion
    :cvar CUT: engagement of a tool edge in material
    :cvar LAYER: sheet, quantity, or thickness of material, typically
        one of several, covering a surface or body
    """

    ABSOLUTE = "ABSOLUTE"
    ACTION = "ACTION"
    ACTUAL = "ACTUAL"
    ALL = "ALL"
    ALTERNATING = "ALTERNATING"
    A_SCALE = "A_SCALE"
    AUXILIARY = "AUXILIARY"
    BAD = "BAD"
    BRINELL = "BRINELL"
    B_SCALE = "B_SCALE"
    COMMANDED = "COMMANDED"
    CONSUMED = "CONSUMED"
    CONTROL = "CONTROL"
    C_SCALE = "C_SCALE"
    DELAY = "DELAY"
    DIRECT = "DIRECT"
    DRY_RUN = "DRY_RUN"
    D_SCALE = "D_SCALE"
    EXPIRATION = "EXPIRATION"
    FIRST_USE = "FIRST_USE"
    GOOD = "GOOD"
    INCREMENTAL = "INCREMENTAL"
    JOG = "JOG"
    LATERAL = "LATERAL"
    LEEB = "LEEB"
    LENGTH = "LENGTH"
    LINE = "LINE"
    LINEAR = "LINEAR"
    LOADED = "LOADED"
    MACHINE_AXIS_LOCK = "MACHINE_AXIS_LOCK"
    MAIN = "MAIN"
    MAINTENANCE = "MAINTENANCE"
    MANUAL_UNCLAMP = "MANUAL_UNCLAMP"
    MANUFACTURE = "MANUFACTURE"
    MAXIMUM = "MAXIMUM"
    MINIMUM = "MINIMUM"
    MOHS = "MOHS"
    MOTION = "MOTION"
    NO_SCALE = "NO_SCALE"
    OPERATING = "OPERATING"
    OPERATOR = "OPERATOR"
    OPTIONAL_STOP = "OPTIONAL_STOP"
    OVERRIDE = "OVERRIDE"
    POWERED = "POWERED"
    PRIMARY = "PRIMARY"
    PROBE = "PROBE"
    PROCESS = "PROCESS"
    PROGRAMMED = "PROGRAMMED"
    RADIAL = "RADIAL"
    RAPID = "RAPID"
    REMAINING = "REMAINING"
    ROCKWELL = "ROCKWELL"
    ROTARY = "ROTARY"
    SCHEDULE = "SCHEDULE"
    SET_UP = "SET_UP"
    SHORE = "SHORE"
    SINGLE_BLOCK = "SINGLE_BLOCK"
    STANDARD = "STANDARD"
    START = "START"
    SWITCHED = "SWITCHED"
    TARGET = "TARGET"
    TARGET_COMPLETION = "TARGET_COMPLETION"
    TOOL_CHANGE_STOP = "TOOL_CHANGE_STOP"
    USEABLE = "USEABLE"
    VERTICAL = "VERTICAL"
    VICKERS = "VICKERS"
    WORKING = "WORKING"
    IPV4_ADDRESS = "IPV4_ADDRESS"
    IPV6_ADDRESS = "IPV6_ADDRESS"
    GATEWAY = "GATEWAY"
    SUBNET_MASK = "SUBNET_MASK"
    VLAN_ID = "VLAN_ID"
    MAC_ADDRESS = "MAC_ADDRESS"
    WIRELESS = "WIRELESS"
    LICENSE = "LICENSE"
    VERSION = "VERSION"
    RELEASE_DATE = "RELEASE_DATE"
    INSTALL_DATE = "INSTALL_DATE"
    MANUFACTURER = "MANUFACTURER"
    UUID = "UUID"
    SERIAL_NUMBER = "SERIAL_NUMBER"
    RAW_MATERIAL = "RAW_MATERIAL"
    LOT = "LOT"
    BATCH = "BATCH"
    HEAT_TREAT = "HEAT_TREAT"
    PART_NUMBER = "PART_NUMBER"
    PART_FAMILY = "PART_FAMILY"
    PART_NAME = "PART_NAME"
    PROCESS_STEP = "PROCESS_STEP"
    PROCESS_PLAN = "PROCESS_PLAN"
    ORDER_NUMBER = "ORDER_NUMBER"
    PROCESS_NAME = "PROCESS_NAME"
    ISO_STEP_EXECUTABLE = "ISO_STEP_EXECUTABLE"
    COMPLETE = "COMPLETE"
    ACTIVE = "ACTIVE"
    FAILED = "FAILED"
    ABORTED = "ABORTED"
    ENDED = "ENDED"
    WASTE = "WASTE"
    PART = "PART"
    REQUEST = "REQUEST"
    RESPONSE = "RESPONSE"
    ACTIVITY = "ACTIVITY"
    SEGMENT = "SEGMENT"
    RECIPE = "RECIPE"
    OPERATION = "OPERATION"
    BINARY = "BINARY"
    BOOLEAN = "BOOLEAN"
    ENUMERATED = "ENUMERATED"
    DETECT = "DETECT"
    MODEL = "MODEL"
    MEASURED = "MEASURED"
    GAS = "GAS"
    LIQUID = "LIQUID"
    SOLID = "SOLID"
    ELECTRODE = "ELECTRODE"
    FILLER = "FILLER"
    PLUNGE = "PLUNGE"
    PECK = "PECK"
    CUT = "CUT"
    LAYER = "LAYER"


class DataItemValueElementType(BaseModel):
    """
    The value element.
    """

    model_config = ConfigDict(defer_build=True)
    value: str = field(default="")


class DeviceRoleEnumType(Enum):
    """
    device relationships.

    :cvar SYSTEM: a system
    :cvar AUXILIARY: an auxiliary
    """

    SYSTEM = "SYSTEM"
    AUXILIARY = "AUXILIARY"


class EntryType(BaseModel):
    """
    {{term(key-value pair)}} published as part of a {{block(Table)}}.

    :ivar key: the key
    :ivar removed: an indicatore that the entry has been removed
    :ivar content:
    """

    model_config = ConfigDict(defer_build=True)
    key: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    removed: None | bool = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
        },
    )


class ImageFileType(BaseModel):
    """
    reference to a file containing an image of the {{block(Component)}}.

    :ivar value:
    :ivar id: unique identifier of the image file
    :ivar name: identifier of the maintenance activity.
    :ivar media_type: mime type of the file
    :ivar href: {{term(URL)}} giving the location of the image file.
    """

    model_config = ConfigDict(defer_build=True)
    value: str = field(default="")
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    media_type: str = field(
        metadata={
            "name": "mediaType",
            "type": "Attribute",
        }
    )
    href: str = field(
        metadata={
            "type": "Attribute",
        }
    )


class MotionAxisType(BaseModel):
    """
    The unit vector along which the motion occurs.
    """

    model_config = ConfigDict(defer_build=True)
    value: list[str] = field(
        default_factory=list,
        metadata={
            "min_length": 3,
            "max_length": 3,
            "tokens": True,
        },
    )


class MotionDescriptionType(BaseModel):
    """
    The description of the motion.
    """

    model_config = ConfigDict(defer_build=True)
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
        },
    )


class MotionTypeEnumType(Enum):
    """
    The types of motion.

    :cvar REVOLUTE: Rotates around an axis with a fixed range of motion
    :cvar CONTINUOUS: Revolves around an axis with a continuous range of
        motion
    :cvar PRISMATIC: Sliding linear motion along an axis with a fixed
        range of motion
    :cvar FIXED: The axis does not move.
    """

    REVOLUTE = "REVOLUTE"
    CONTINUOUS = "CONTINUOUS"
    PRISMATIC = "PRISMATIC"
    FIXED = "FIXED"


class NativeUnitsEnum(Enum):
    """
    The units supported for the source equipment that can be converted into
    MTC Units.

    :cvar AMPERE: electric current in ampere.
    :cvar CELSIUS: temperature in degree Celsius.
    :cvar COUNT: count of something.
    :cvar DECIBEL: sound level in decibel.
    :cvar DEGREE: angle in degree.
    :cvar DEGREE_3_D: space-delimited, floating-point representation of
        the angular rotation in degrees around the X, Y, and Z axes
        relative to a cartesian coordinate system respectively in order
        as A, B, and C. If any of the rotations is not known, it
        **MUST** be zero (0).
    :cvar DEGREE_SECOND: angular velocity in degree per second.
    :cvar DEGREE_SECOND_2: angular acceleration in degree per second
        squared.
    :cvar HERTZ: frequency in cycles per second.
    :cvar JOULE: energy in joule.
    :cvar KILOGRAM: mass in kilogram.
    :cvar LITER: volume in liter.
    :cvar LITER_SECOND: volumetric flow in liter per second.
    :cvar MICRO_RADIAN: tilt in micro radian.
    :cvar MILLIMETER: length in millimeter.
    :cvar MILLIMETER_3_D: point in space identified by X, Y, and Z
        positions and represented by a space-delimited set of numbers
        each expressed in millimeters.
    :cvar MILLIMETER_REVOLUTION: feedrate per revolution in millimeter
        per revolution.
    :cvar MILLIMETER_SECOND: speed in millimeter per second.
    :cvar MILLIMETER_SECOND_2: acceleration in millimeter per second
        squared.
    :cvar NEWTON: force in newton.
    :cvar NEWTON_METER: torque in newton-meter.
    :cvar OHM: electrical resistance in ohm.
    :cvar PASCAL: pressure or stress in pascal.
    :cvar PASCAL_SECOND: viscosity in pascal-second.
    :cvar PERCENT: amount in or for every hundred.
    :cvar PH: acidity or alkalinity of a solution in pH.
    :cvar REVOLUTION_MINUTE: rotational velocity in revolution per
        minute.
    :cvar SECOND: time in second.
    :cvar SIEMENS_METER: electrical conductivity in siemens per meter.
    :cvar VOLT: electric potential, electric potential difference or
        electromotive force in volt.
    :cvar VOLT_AMPERE: apparent power in an electrical circuit, equal to
        the product of root-mean-square (RMS) voltage and RMS current
        (commonly referred to as VA) in volt-ampere.
    :cvar VOLT_AMPERE_REACTIVE: reactive power in an AC electrical
        circuit (commonly referred to as VAR) in volt-ampere-reactive.
    :cvar WATT: power in watt.
    :cvar WATT_SECOND: electrical energy in watt-second
    :cvar GRAM_CUBIC_METER: density in gram per cubic meter.
    :cvar CUBIC_MILLIMETER: geometric volume in millimeter.
    :cvar CUBIC_MILLIMETER_SECOND: change of geometric volume per
        second.
    :cvar CUBIC_MILLIMETER_SECOND_2: change in geometric volume per
        second squared.
    :cvar MILLIGRAM: mass in milligram.
    :cvar MILLIGRAM_CUBIC_MILLIMETER: density in milligram per cubic
        millimeter.
    :cvar MILLILITER: volume in milliliter.
    :cvar COUNT_SECOND: frequency in count per second.
    :cvar PASCAL_SECOND_1: pressurization rate in pascal per second.
    :cvar UNIT_VECTOR_3_D: 3D Unit Vector. Space delimited list of three
        floating point numbers.
    :cvar REVOLUTION_SECOND_2: rotational acceleration in revolution per
        second squared.
    :cvar REVOLUTION_SECOND: rotational velocity in revolution per
        second.
    :cvar GRAM: mass in gram.
    :cvar METER_SECOND_2: acceleration in meter per second squared.
    :cvar COULOMB: electric charge in coulomb.
    :cvar CUBIC_METER: geometric volume in meter.
    :cvar SQUARE_MILLIMETER: geometric area in millimeter.
    :cvar OHM_METER: resistivity in ohm-meter.
    :cvar MILLIGRAM_LITER: concentration of a dissolved substance in
        milligram per liter
    :cvar CENTIPOISE: viscosity in centipoise.
    :cvar DEGREE_MINUTE: rotational velocity in degree per minute.
    :cvar FAHRENHEIT: temperature in Fahrenheit.
    :cvar FOOT: length in foot.
    :cvar FOOT_MINUTE: speed in foot per minute.
    :cvar FOOT_SECOND: speed in foot per second.
    :cvar FOOT_SECOND_2: acceleration in foot per second squared.
    :cvar FOOT_3_D: point in space identified by X, Y, and Z positions
        and represented by a space-delimited set of numbers each
        expressed in feet.
    :cvar GALLON_MINUTE: volumetric flow in gallon per minute.
    :cvar HOUR: time in hour.
    :cvar INCH: length in inch.
    :cvar INCH_MINUTE: speed in inch per minute.
    :cvar INCH_SECOND: speed in inch per second.
    :cvar INCH_SECOND_2: acceleration in inch per second squared.
    :cvar INCH_POUND: torque in inch pound.
    :cvar INCH_3_D: point in space identified by X, Y, and Z positions
        and represented by a space-delimited set of numbers each
        expressed in inches.
    :cvar KELVIN: temperature in Kelvin.
    :cvar KILOWATT: power in kilowatt.
    :cvar KILOWATT_HOUR: energy in kilowatt-hour.
    :cvar LITER_MINUTE: volumetric flow in liter per minute.
    :cvar MILLIMETER_MINUTE: speed in millimeter per minute.
    :cvar MINUTE: time in minute.
    :cvar OTHER: unsupported unit.
    :cvar POUND: mass in pound.
    :cvar POUND_INCH_2: pressure in pound per square inch (PSI).
    :cvar RADIAN: angle in radian.
    :cvar RADIAN_MINUTE: angular velocity in radian per minute.
    :cvar RADIAN_SECOND: angular velocity in radian per second.
    :cvar RADIAN_SECOND_2: angular acceleration in radian per second
        squared.
    :cvar BAR: pressure in bar.
    :cvar TORR: pressure in torr.
    :cvar MILLIMETER_MERCURY: pressure in millimeter of mercury (mmHg).
    :cvar PASCAL_MINUTE: pressurization rate in pascal per minute.
    :cvar GRAVITATIONAL_FORCE: `MASS` times `GRAVITATIONAL_ACCELERATION`
        (g).
    :cvar GRAVITATIONAL_ACCELERATION: acceleration relative to earth's
        gravity given in meter per second squared. &gt; Note 1 to entry:
        At different points on Earth's surface, the free-fall
        acceleration ranges from 9.764 to 9.834 m/s2 (Wikipedia:
        Gravitational Acceleration). The constant can be customized
        depending on the location in the universe. &gt; Note 2 to entry:
        In the standard, it is assumed that Earth's average value of
        gravitational acceleration is 9.90665 m/s2.
    :cvar AMPERE_HOUR: electric charge in ampere hour.
    :cvar CUBIC_FOOT_HOUR: change of geometric volume in cubic foot per
        hour.
    :cvar CUBIC_FOOT_MINUTE: change of geometric volume in cubic foot
        per minute.
    :cvar SQUARE_INCH: geometric area in inch squared.
    :cvar CUBIC_FOOT: geometric volume in cubic foot.
    :cvar INCH_REVOLUTION: feedrate per revolution in inch per
        revolution.
    :cvar MICROMETER: length in micrometer.
    :cvar RANKINE: temperature in Rankine.
    :cvar MICROTORR: pressure in microtorr.
    """

    AMPERE = "AMPERE"
    CELSIUS = "CELSIUS"
    COUNT = "COUNT"
    DECIBEL = "DECIBEL"
    DEGREE = "DEGREE"
    DEGREE_3_D = "DEGREE_3D"
    DEGREE_SECOND = "DEGREE/SECOND"
    DEGREE_SECOND_2 = "DEGREE/SECOND^2"
    HERTZ = "HERTZ"
    JOULE = "JOULE"
    KILOGRAM = "KILOGRAM"
    LITER = "LITER"
    LITER_SECOND = "LITER/SECOND"
    MICRO_RADIAN = "MICRO_RADIAN"
    MILLIMETER = "MILLIMETER"
    MILLIMETER_3_D = "MILLIMETER_3D"
    MILLIMETER_REVOLUTION = "MILLIMETER/REVOLUTION"
    MILLIMETER_SECOND = "MILLIMETER/SECOND"
    MILLIMETER_SECOND_2 = "MILLIMETER/SECOND^2"
    NEWTON = "NEWTON"
    NEWTON_METER = "NEWTON_METER"
    OHM = "OHM"
    PASCAL = "PASCAL"
    PASCAL_SECOND = "PASCAL_SECOND"
    PERCENT = "PERCENT"
    PH = "PH"
    REVOLUTION_MINUTE = "REVOLUTION/MINUTE"
    SECOND = "SECOND"
    SIEMENS_METER = "SIEMENS/METER"
    VOLT = "VOLT"
    VOLT_AMPERE = "VOLT_AMPERE"
    VOLT_AMPERE_REACTIVE = "VOLT_AMPERE_REACTIVE"
    WATT = "WATT"
    WATT_SECOND = "WATT_SECOND"
    GRAM_CUBIC_METER = "GRAM/CUBIC_METER"
    CUBIC_MILLIMETER = "CUBIC_MILLIMETER"
    CUBIC_MILLIMETER_SECOND = "CUBIC_MILLIMETER/SECOND"
    CUBIC_MILLIMETER_SECOND_2 = "CUBIC_MILLIMETER/SECOND^2"
    MILLIGRAM = "MILLIGRAM"
    MILLIGRAM_CUBIC_MILLIMETER = "MILLIGRAM/CUBIC_MILLIMETER"
    MILLILITER = "MILLILITER"
    COUNT_SECOND = "COUNT/SECOND"
    PASCAL_SECOND_1 = "PASCAL/SECOND"
    UNIT_VECTOR_3_D = "UNIT_VECTOR_3D"
    REVOLUTION_SECOND_2 = "REVOLUTION/SECOND^2"
    REVOLUTION_SECOND = "REVOLUTION/SECOND"
    GRAM = "GRAM"
    METER_SECOND_2 = "METER/SECOND^2"
    COULOMB = "COULOMB"
    CUBIC_METER = "CUBIC_METER"
    SQUARE_MILLIMETER = "SQUARE_MILLIMETER"
    OHM_METER = "OHM_METER"
    MILLIGRAM_LITER = "MILLIGRAM/LITER"
    CENTIPOISE = "CENTIPOISE"
    DEGREE_MINUTE = "DEGREE/MINUTE"
    FAHRENHEIT = "FAHRENHEIT"
    FOOT = "FOOT"
    FOOT_MINUTE = "FOOT/MINUTE"
    FOOT_SECOND = "FOOT/SECOND"
    FOOT_SECOND_2 = "FOOT/SECOND^2"
    FOOT_3_D = "FOOT_3D"
    GALLON_MINUTE = "GALLON/MINUTE"
    HOUR = "HOUR"
    INCH = "INCH"
    INCH_MINUTE = "INCH/MINUTE"
    INCH_SECOND = "INCH/SECOND"
    INCH_SECOND_2 = "INCH/SECOND^2"
    INCH_POUND = "INCH_POUND"
    INCH_3_D = "INCH_3D"
    KELVIN = "KELVIN"
    KILOWATT = "KILOWATT"
    KILOWATT_HOUR = "KILOWATT_HOUR"
    LITER_MINUTE = "LITER/MINUTE"
    MILLIMETER_MINUTE = "MILLIMETER/MINUTE"
    MINUTE = "MINUTE"
    OTHER = "OTHER"
    POUND = "POUND"
    POUND_INCH_2 = "POUND/INCH^2"
    RADIAN = "RADIAN"
    RADIAN_MINUTE = "RADIAN/MINUTE"
    RADIAN_SECOND = "RADIAN/SECOND"
    RADIAN_SECOND_2 = "RADIAN/SECOND^2"
    BAR = "BAR"
    TORR = "TORR"
    MILLIMETER_MERCURY = "MILLIMETER_MERCURY"
    PASCAL_MINUTE = "PASCAL/MINUTE"
    GRAVITATIONAL_FORCE = "GRAVITATIONAL_FORCE"
    GRAVITATIONAL_ACCELERATION = "GRAVITATIONAL_ACCELERATION"
    AMPERE_HOUR = "AMPERE_HOUR"
    CUBIC_FOOT_HOUR = "CUBIC_FOOT/HOUR"
    CUBIC_FOOT_MINUTE = "CUBIC_FOOT/MINUTE"
    SQUARE_INCH = "SQUARE_INCH"
    CUBIC_FOOT = "CUBIC_FOOT"
    INCH_REVOLUTION = "INCH/REVOLUTION"
    MICROMETER = "MICROMETER"
    RANKINE = "RANKINE"
    MICROTORR = "MICROTORR"


class OriginType(BaseModel):
    """
    See {{sect(Origin)}}.
    """

    model_config = ConfigDict(defer_build=True)
    value: list[str] = field(
        default_factory=list,
        metadata={
            "min_length": 3,
            "max_length": 3,
            "tokens": True,
        },
    )


class OriginatorEnumEnum(Enum):
    """
    A reference to the creator of the Specification.

    :cvar MANUFACTURER: The manufacturer of a piece of equipment or
        component.
    :cvar USER: The owner or implementer of a piece of equipment or
        component.
    """

    MANUFACTURER = "MANUFACTURER"
    USER = "USER"


class PowerSourceTypeEnum(Enum):
    """
    type of the power source.

    :cvar PRIMARY: main or principle
    :cvar SECONDARY: alternate or not primary
    :cvar STANDBY: held near at hand and ready for use and is
        uninterruptible
    """

    PRIMARY = "PRIMARY"
    SECONDARY = "SECONDARY"
    STANDBY = "STANDBY"


class ReferenceType(BaseModel):
    """
    Description.

    :ivar id_ref: A reference to an id in the MTConnectDevices model
    :ivar name: identifier of the maintenance activity.
    """

    model_config = ConfigDict(defer_build=True)
    id_ref: str = field(
        metadata={
            "name": "idRef",
            "type": "Attribute",
        }
    )
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )


class RelationshipTypeEnumType(Enum):
    """
    The list of possible association types.

    :cvar PARENT: The related entity is a parent
    :cvar CHILD: The related entity is a child
    :cvar PEER: The related entity is a peer
    """

    PARENT = "PARENT"
    CHILD = "CHILD"
    PEER = "PEER"


class RepresentationType(Enum):
    """
    Description.

    :cvar TIME_SERIES: series of sampled data. The data is reported for
        a specified number of samples and each sample is reported with a
        fixed period.
    :cvar VALUE: measured value of the sample data. If no
        {{property(DataItem::representation)}} is specified for a data
        item, the {{property(DataItem::representation)}} **MUST** be
        determined to be `VALUE`.
    :cvar DATA_SET: reported value(s) are represented as a set of
        {{termplural(key-value pair)}}. Each reported value in the
        {{term(data set)}} **MUST** have a unique key.
    :cvar DISCRETE: **DEPRECATED** as
        {{property(DataItem::representation)}} type in *MTConnect
        Version 1.5*. Replaced by the {{property(DataItem::discrete)}}.
    :cvar TABLE: two dimensional set of {{termplural(key-value pair)}}
        where the {{block(Entry)}} represents a row, and the value is a
        set of {{term(key-value pair)}} {{block(Cell)}} elements. A
        {{term(table)}} follows the same behavior as the {{term(data
        set)}} for change tracking, clearing, and history. When an
        {{block(Entry)}} changes, all {{block(Cell)}} elements update as
        a single unit following the behavior of a {{term(data set)}}.
        &gt; Note: It is best to use {{block(Variable)}} if the
        {{block(Cell)}} entities represent multiple semantic types. Each
        {{block(Entry)}} in the {{term(table)}} **MUST** have a unique
        key. Each {{block(Cell)}} of each {{block(Entry)}} in the
        {{term(table)}} **MUST** have a unique key. See
        {{block(Representation)}} in {{package(Observation Information
        Model)}}, for a description of {{block(Entry)}} and
        {{block(Cell)}} elements.
    """

    TIME_SERIES = "TIME_SERIES"
    VALUE = "VALUE"
    DATA_SET = "DATA_SET"
    DISCRETE = "DISCRETE"
    TABLE = "TABLE"


class SolidModelMediaTypeEnum(Enum):
    """
    Solid model media types.

    :cvar STEP: ISO 10303 STEP AP203 or AP242 format
    :cvar STL: Stereolithography file format
    :cvar GDML: Geometry Description Markup Language
    :cvar OBJ: Wavefront OBJ file format
    :cvar COLLADA: ISO 17506
    :cvar IGES: Initial Graphics Exchange Specification
    :cvar VALUE_3_DS: Autodesk file format
    :cvar ACIS: Dassault file format
    :cvar X_T: Parasolid XT Siemens data interchange format
    :cvar QIF_MBD: provides the 3D geometric boundary representation
        used to associate with product information.
    """

    STEP = "STEP"
    STL = "STL"
    GDML = "GDML"
    OBJ = "OBJ"
    COLLADA = "COLLADA"
    IGES = "IGES"
    VALUE_3_DS = "3DS"
    ACIS = "ACIS"
    X_T = "X_T"
    QIF_MBD = "QIF_MBD"


class SolidModelScaleType(BaseModel):
    """
    The unit vector to scale the model.
    """

    model_config = ConfigDict(defer_build=True)
    value: list[str] = field(
        default_factory=list,
        metadata={
            "min_length": 1,
            "max_length": 3,
            "tokens": True,
        },
    )


class SpecificationRelationshipTypeEnumType(Enum):
    """
    How the data items are related.

    :cvar LIMIT: The referenced DataItem provides process limits.
    """

    LIMIT = "LIMIT"


class TableCellType(BaseModel):
    """
    A cell of a table.

    :ivar key: the key
    :ivar content:
    """

    model_config = ConfigDict(defer_build=True)
    key: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
        },
    )


class ThreeDimensionalEntryType(BaseModel):
    """
    A three dimensional dataset 'X Y Z' or 'A B C'.

    :ivar value:
    :ivar key: the key
    """

    model_config = ConfigDict(defer_build=True)
    value: float = field()
    key: str = field(
        metadata={
            "type": "Attribute",
        }
    )


class UnitsEnum(Enum):
    """
    same as {{property(DataItem::units)}}.

    See {{package(Device Information Model)}}.

    :cvar AMPERE: electric current in ampere.
    :cvar CELSIUS: temperature in degree Celsius.
    :cvar COUNT: count of something.
    :cvar DECIBEL: sound level in decibel.
    :cvar DEGREE: angle in degree.
    :cvar DEGREE_3_D: space-delimited, floating-point representation of
        the angular rotation in degrees around the X, Y, and Z axes
        relative to a cartesian coordinate system respectively in order
        as A, B, and C. If any of the rotations is not known, it
        **MUST** be zero (0).
    :cvar DEGREE_SECOND: angular velocity in degree per second.
    :cvar DEGREE_SECOND_2: angular acceleration in degree per second
        squared.
    :cvar HERTZ: frequency in cycles per second.
    :cvar JOULE: energy in joule.
    :cvar KILOGRAM: mass in kilogram.
    :cvar LITER: volume in liter.
    :cvar LITER_SECOND: volumetric flow in liter per second.
    :cvar MICRO_RADIAN: tilt in micro radian.
    :cvar MILLIMETER: length in millimeter.
    :cvar MILLIMETER_3_D: point in space identified by X, Y, and Z
        positions and represented by a space-delimited set of numbers
        each expressed in millimeters.
    :cvar MILLIMETER_REVOLUTION: feedrate per revolution in millimeter
        per revolution.
    :cvar MILLIMETER_SECOND: speed in millimeter per second.
    :cvar MILLIMETER_SECOND_2: acceleration in millimeter per second
        squared.
    :cvar NEWTON: force in newton.
    :cvar NEWTON_METER: torque in newton-meter.
    :cvar OHM: electrical resistance in ohm.
    :cvar PASCAL: pressure or stress in pascal.
    :cvar PASCAL_SECOND: viscosity in pascal-second.
    :cvar PERCENT: amount in or for every hundred.
    :cvar PH: acidity or alkalinity of a solution in pH.
    :cvar REVOLUTION_MINUTE: rotational velocity in revolution per
        minute.
    :cvar SECOND: time in second.
    :cvar SIEMENS_METER: electrical conductivity in siemens per meter.
    :cvar VOLT: electric potential, electric potential difference or
        electromotive force in volt.
    :cvar VOLT_AMPERE: apparent power in an electrical circuit, equal to
        the product of root-mean-square (RMS) voltage and RMS current
        (commonly referred to as VA) in volt-ampere.
    :cvar VOLT_AMPERE_REACTIVE: reactive power in an AC electrical
        circuit (commonly referred to as VAR) in volt-ampere-reactive.
    :cvar WATT: power in watt.
    :cvar WATT_SECOND: electrical energy in watt-second
    :cvar GRAM_CUBIC_METER: density in gram per cubic meter.
    :cvar CUBIC_MILLIMETER: geometric volume in millimeter.
    :cvar CUBIC_MILLIMETER_SECOND: change of geometric volume per
        second.
    :cvar CUBIC_MILLIMETER_SECOND_2: change in geometric volume per
        second squared.
    :cvar MILLIGRAM: mass in milligram.
    :cvar MILLIGRAM_CUBIC_MILLIMETER: density in milligram per cubic
        millimeter.
    :cvar MILLILITER: volume in milliliter.
    :cvar COUNT_SECOND: frequency in count per second.
    :cvar PASCAL_SECOND_1: pressurization rate in pascal per second.
    :cvar UNIT_VECTOR_3_D: 3D Unit Vector. Space delimited list of three
        floating point numbers.
    :cvar REVOLUTION_SECOND_2: rotational acceleration in revolution per
        second squared.
    :cvar REVOLUTION_SECOND: rotational velocity in revolution per
        second.
    :cvar GRAM: mass in gram.
    :cvar METER_SECOND_2: acceleration in meter per second squared.
    :cvar COULOMB: electric charge in coulomb.
    :cvar CUBIC_METER: geometric volume in meter.
    :cvar SQUARE_MILLIMETER: geometric area in millimeter.
    :cvar OHM_METER: resistivity in ohm-meter.
    :cvar MILLIGRAM_LITER: concentration of a dissolved substance in
        milligram per liter
    """

    AMPERE = "AMPERE"
    CELSIUS = "CELSIUS"
    COUNT = "COUNT"
    DECIBEL = "DECIBEL"
    DEGREE = "DEGREE"
    DEGREE_3_D = "DEGREE_3D"
    DEGREE_SECOND = "DEGREE/SECOND"
    DEGREE_SECOND_2 = "DEGREE/SECOND^2"
    HERTZ = "HERTZ"
    JOULE = "JOULE"
    KILOGRAM = "KILOGRAM"
    LITER = "LITER"
    LITER_SECOND = "LITER/SECOND"
    MICRO_RADIAN = "MICRO_RADIAN"
    MILLIMETER = "MILLIMETER"
    MILLIMETER_3_D = "MILLIMETER_3D"
    MILLIMETER_REVOLUTION = "MILLIMETER/REVOLUTION"
    MILLIMETER_SECOND = "MILLIMETER/SECOND"
    MILLIMETER_SECOND_2 = "MILLIMETER/SECOND^2"
    NEWTON = "NEWTON"
    NEWTON_METER = "NEWTON_METER"
    OHM = "OHM"
    PASCAL = "PASCAL"
    PASCAL_SECOND = "PASCAL_SECOND"
    PERCENT = "PERCENT"
    PH = "PH"
    REVOLUTION_MINUTE = "REVOLUTION/MINUTE"
    SECOND = "SECOND"
    SIEMENS_METER = "SIEMENS/METER"
    VOLT = "VOLT"
    VOLT_AMPERE = "VOLT_AMPERE"
    VOLT_AMPERE_REACTIVE = "VOLT_AMPERE_REACTIVE"
    WATT = "WATT"
    WATT_SECOND = "WATT_SECOND"
    GRAM_CUBIC_METER = "GRAM/CUBIC_METER"
    CUBIC_MILLIMETER = "CUBIC_MILLIMETER"
    CUBIC_MILLIMETER_SECOND = "CUBIC_MILLIMETER/SECOND"
    CUBIC_MILLIMETER_SECOND_2 = "CUBIC_MILLIMETER/SECOND^2"
    MILLIGRAM = "MILLIGRAM"
    MILLIGRAM_CUBIC_MILLIMETER = "MILLIGRAM/CUBIC_MILLIMETER"
    MILLILITER = "MILLILITER"
    COUNT_SECOND = "COUNT/SECOND"
    PASCAL_SECOND_1 = "PASCAL/SECOND"
    UNIT_VECTOR_3_D = "UNIT_VECTOR_3D"
    REVOLUTION_SECOND_2 = "REVOLUTION/SECOND^2"
    REVOLUTION_SECOND = "REVOLUTION/SECOND"
    GRAM = "GRAM"
    METER_SECOND_2 = "METER/SECOND^2"
    COULOMB = "COULOMB"
    CUBIC_METER = "CUBIC_METER"
    SQUARE_MILLIMETER = "SQUARE_MILLIMETER"
    OHM_METER = "OHM_METER"
    MILLIGRAM_LITER = "MILLIGRAM/LITER"


class AbcdataSetType(BaseModel):
    """
    A Configuration element with three dimensional value A,B,C.

    :ivar entry: {{term(key-value pair)}} published as part of a
        {{block(Table)}}.
    """

    class Meta:
        name = "ABCDataSetType"

    model_config = ConfigDict(defer_build=True)
    entry: list[ThreeDimensionalEntryType] = field(
        default_factory=list,
        metadata={
            "name": "Entry",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "max_occurs": 3,
        },
    )


class AbstractConfiguration(AbstractConfigurationType):
    """
    Abstract configuration.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class AbstractDataItemRelationship(AbstractDataItemRelationshipType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class AbstractSpecificationType(BaseModel):
    """
    A specification.

    :ivar id: The identity of the Specificaiton
    :ivar type_value: expected datatype of the parameter.
    :ivar originator: A reference to the creator of the Specification
    :ivar sub_type: The type of measurement
    :ivar name: identifier of the maintenance activity.
    :ivar data_item_id_ref: The optional data item identifier
    :ivar composition_id_ref: The optional composition identifier
    :ivar coordinate_system_id_ref: The optional coordinate system
        identifier
    :ivar units: same as {{property(DataItem::units)}}. See
        {{package(Device Information Model)}}.
    """

    model_config = ConfigDict(defer_build=True)
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    type_value: DataItemEnumEnum | str = field(
        metadata={
            "name": "type",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        }
    )
    originator: OriginatorEnumEnum | str = field(
        default=OriginatorEnumEnum.MANUFACTURER,
        metadata={
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    sub_type: None | DataItemSubEnumEnum | str = field(
        default=None,
        metadata={
            "name": "subType",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    data_item_id_ref: None | str = field(
        default=None,
        metadata={
            "name": "dataItemIdRef",
            "type": "Attribute",
        },
    )
    composition_id_ref: None | str = field(
        default=None,
        metadata={
            "name": "compositionIdRef",
            "type": "Attribute",
        },
    )
    coordinate_system_id_ref: None | str = field(
        default=None,
        metadata={
            "name": "coordinateSystemIdRef",
            "type": "Attribute",
        },
    )
    units: None | UnitsEnum | str = field(
        default=None,
        metadata={
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )


class AssetCountsType(BaseModel):
    """
    {{block(AssetCounts)}} groups {{block(AssetCount)}} entities.

    :ivar asset_count: {{def(EventEnum::ASSET_COUNT)}}
    """

    model_config = ConfigDict(defer_build=True)
    asset_count: list[AssetCountType] = field(
        default_factory=list,
        metadata={
            "name": "AssetCount",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_occurs": 1,
        },
    )


class CellDefinitionType(BaseModel):
    """
    semantic definition of a {{block(Cell)}}.

    :ivar description: textual description for {{block(Channel)}}.
    :ivar key: unique key
    :ivar type_value: expected datatype of the parameter.
    :ivar key_type: The type of measurement
    :ivar sub_type: The sub type for the measurement
    :ivar units: same as {{property(DataItem::units)}}. See
        {{package(Device Information Model)}}.
    """

    model_config = ConfigDict(defer_build=True)
    description: None | DataItemDescriptionType = field(
        default=None,
        metadata={
            "name": "Description",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    key: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    type_value: None | DataItemEnumEnum | str = field(
        default=None,
        metadata={
            "name": "type",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    key_type: None | DataItemEnumEnum | str = field(
        default=None,
        metadata={
            "name": "keyType",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    sub_type: None | DataItemSubEnumEnum | str = field(
        default=None,
        metadata={
            "name": "subType",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    units: None | UnitsEnum | str = field(
        default=None,
        metadata={
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )


class ChannelsType(BaseModel):
    """
    {{block(Channels)}} groups one or more {{block(Channel)}} entities.

    See {{block(Channel)}}.

    :ivar channel: Description
    """

    model_config = ConfigDict(defer_build=True)
    channel: list[ChannelType] = field(
        default_factory=list,
        metadata={
            "name": "Channel",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_occurs": 1,
        },
    )


class ComponentRefType(ReferenceType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Constraint(ConstraintType):
    """
    The limit of a constraint.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class DataItemFilterType(BaseModel):
    """
    The filter for the data item.

    :ivar value:
    :ivar type_value: expected datatype of the parameter.
    """

    model_config = ConfigDict(defer_build=True)
    value: float = field()
    type_value: DataItemFilterEnumType = field(
        metadata={
            "name": "type",
            "type": "Attribute",
        }
    )


class DataItemRefType(ReferenceType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class DataItemRelationshipType(AbstractDataItemRelationshipType):
    """
    {{block(AbstractDataItemRelationship)}} that provides a semantic
    reference to another {{block(DataItem)}} described by
    {{property(DataItemRelationship::type)}}.

    :ivar type_value: type of the power source.
    """

    model_config = ConfigDict(defer_build=True)
    type_value: DataItemRelationshipTypeEnumType = field(
        metadata={
            "name": "type",
            "type": "Attribute",
        }
    )


class Entry(EntryType):
    """
    {{term(key-value pair)}} published as part of a {{block(Table)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ImageFilesType(AbstractConfigurationType):
    """
    This section provides semantic information for the {{block(ImageFile)}}
    entity.
    """

    model_config = ConfigDict(defer_build=True)
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
            "choices": (
                {
                    "name": "ImageFile",
                    "type": ImageFileType,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
            ),
        },
    )


class LowerLimitType(ConstraintType):
    """
    lower conformance boundary for a variable. &gt; Note: immediate concern
    or action may be required.
    """

    model_config = ConfigDict(defer_build=True)


class LowerWarningType(ConstraintType):
    """
    lower boundary indicating increased concern and supervision may be
    required.
    """

    model_config = ConfigDict(defer_build=True)


class MaximumType(ConstraintType):
    """
    numeric upper constraint.
    """

    model_config = ConfigDict(defer_build=True)


class MinimumType(ConstraintType):
    """
    numeric lower constraint.
    """

    model_config = ConfigDict(defer_build=True)


class NominalType(ConstraintType):
    """
    numeric target or expected value.
    """

    model_config = ConfigDict(defer_build=True)


class PowerSourceType(BaseModel):
    """
    potential energy sources for the {{block(Component)}}.

    :ivar value:
    :ivar type_value: expected datatype of the parameter.
    :ivar id: unique identifier for the power source
    :ivar component_id_ref: reference to the Component providing
        observations about the power source
    :ivar order: optional precedence for a given power source
    """

    model_config = ConfigDict(defer_build=True)
    value: str = field(default="")
    type_value: PowerSourceTypeEnum | str = field(
        metadata={
            "name": "type",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        }
    )
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    component_id_ref: None | str = field(
        default=None,
        metadata={
            "name": "componentIdRef",
            "type": "Attribute",
        },
    )
    order: None | int = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )


class Reference(ReferenceType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class RelationshipType(BaseModel):
    """
    A relationship between this component and something else.

    :ivar id: The relationship identifier
    :ivar name: identifier of the maintenance activity.
    :ivar type_value: expected datatype of the parameter.
    :ivar criticality: Criticality
    """

    model_config = ConfigDict(defer_build=True)
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    type_value: RelationshipTypeEnumType = field(
        metadata={
            "name": "type",
            "type": "Attribute",
        }
    )
    criticality: None | CriticalityEnumType = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )


class SpecificationRelationshipType(AbstractDataItemRelationshipType):
    """
    {{block(AbstractDataItemRelationship)}} that provides a semantic
    reference to another {{block(Specification)}} described by
    {{property(SpecificationRelationship::type)}} and
    {{property(SpecificationRelationship::idRef)}}.

    :ivar type_value: type of the power source.
    """

    model_config = ConfigDict(defer_build=True)
    type_value: SpecificationRelationshipTypeEnumType = field(
        metadata={
            "name": "type",
            "type": "Attribute",
        }
    )


class TableEntryType(EntryType):
    """
    An entry for a table.
    """

    model_config = ConfigDict(defer_build=True)


class UpperLimitType(ConstraintType):
    """
    upper conformance boundary for a variable. &gt; Note: immediate concern
    or action may be required.
    """

    model_config = ConfigDict(defer_build=True)


class UpperWarningType(ConstraintType):
    """
    upper boundary indicating increased concern and supervision may be
    required.
    """

    model_config = ConfigDict(defer_build=True)


class XyzdataSetType(BaseModel):
    """
    A Configuration element with three dimensional value X,Y,Z.

    :ivar entry: {{term(key-value pair)}} published as part of a
        {{block(Table)}}.
    """

    class Meta:
        name = "XYZDataSetType"

    model_config = ConfigDict(defer_build=True)
    entry: list[ThreeDimensionalEntryType] = field(
        default_factory=list,
        metadata={
            "name": "Entry",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "max_occurs": 3,
        },
    )


class AbstractSpecification(AbstractSpecificationType):
    """
    A specification.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class AlarmLimitsType(BaseModel):
    """
    See {{sect(AlarmLimits)}}.

    :ivar upper_limit: upper conformance boundary for a variable. &gt;
        Note: immediate concern or action may be required.
    :ivar upper_warning: upper boundary indicating increased concern and
        supervision may be required.
    :ivar lower_warning: lower boundary indicating increased concern and
        supervision may be required.
    :ivar lower_limit: lower conformance boundary for a variable. &gt;
        Note: immediate concern or action may be required.
    """

    model_config = ConfigDict(defer_build=True)
    upper_limit: None | UpperLimitType = field(
        default=None,
        metadata={
            "name": "UpperLimit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    upper_warning: None | UpperWarningType = field(
        default=None,
        metadata={
            "name": "UpperWarning",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    lower_warning: None | LowerWarningType = field(
        default=None,
        metadata={
            "name": "LowerWarning",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    lower_limit: None | LowerLimitType = field(
        default=None,
        metadata={
            "name": "LowerLimit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class AssetRelationshipType(RelationshipType):
    """
    {{block(ConfigurationRelationship)}} that describes the association
    between a {{block(Component)}} or an {{block(Asset)}} and another
    {{block(Asset)}}.

    :ivar asset_id_ref: A reference to the assetId of an asset
    :ivar asset_type: The type of asset being refered to
    :ivar href: {{term(URL)}} giving the location of the image file.
    """

    model_config = ConfigDict(defer_build=True)
    asset_id_ref: str = field(
        metadata={
            "name": "assetIdRef",
            "type": "Attribute",
        }
    )
    asset_type: str = field(
        metadata={
            "name": "assetType",
            "type": "Attribute",
        }
    )
    href: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )


class CellDefinitionsType(BaseModel):
    """
    {{block(CellDefinitions)}} groups one or more {{block(CellDefinition)}}
    entities.

    See {{sect(CellDefinition)}}.

    :ivar cell_definition: semantic definition of a {{block(Cell)}}.
    """

    model_config = ConfigDict(defer_build=True)
    cell_definition: list[CellDefinitionType] = field(
        default_factory=list,
        metadata={
            "name": "CellDefinition",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_occurs": 1,
        },
    )


class ComponentRef(ComponentRefType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ComponentRelationshipType(RelationshipType):
    """
    {{block(ConfigurationRelationship)}} that describes the association
    between a {{block(Component)}} or an {{block(Asset)}} and another
    {{block(Component)}}.

    :ivar id_ref: A reference to the device uuid
    """

    model_config = ConfigDict(defer_build=True)
    id_ref: str = field(
        metadata={
            "name": "idRef",
            "type": "Attribute",
        }
    )


class ControlLimitsType(BaseModel):
    """
    See {{sect(ControlLimits)}}.

    :ivar upper_limit: upper conformance boundary for a variable. &gt;
        Note: immediate concern or action may be required.
    :ivar upper_warning: upper boundary indicating increased concern and
        supervision may be required.
    :ivar nominal: numeric target or expected value.
    :ivar lower_warning: lower boundary indicating increased concern and
        supervision may be required.
    :ivar lower_limit: lower conformance boundary for a variable. &gt;
        Note: immediate concern or action may be required.
    """

    model_config = ConfigDict(defer_build=True)
    upper_limit: None | UpperLimitType = field(
        default=None,
        metadata={
            "name": "UpperLimit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    upper_warning: None | UpperWarningType = field(
        default=None,
        metadata={
            "name": "UpperWarning",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    nominal: None | NominalType = field(
        default=None,
        metadata={
            "name": "Nominal",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    lower_warning: None | LowerWarningType = field(
        default=None,
        metadata={
            "name": "LowerWarning",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    lower_limit: None | LowerLimitType = field(
        default=None,
        metadata={
            "name": "LowerLimit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class DataItemConstraintsType(BaseModel):
    """
    A set of limits for a data item.

    :ivar value: single data value that is expected to be reported for a
        {{block(DataItem)}}. {{property(Constraints::Value)}} **MUST
        NOT** be used in conjunction with any other
        {{block(Constraint)}} elements.
    :ivar minimum: numeric lower constraint.
    :ivar maximum: numeric upper constraint.
    :ivar nominal: numeric target or expected value.
    :ivar filter: **DEPRECATED** in *MTConnect Version 1.4*. Moved to
        the {{block(Filters)}}. See {{package(Properties of DataItem)}}.
    """

    model_config = ConfigDict(defer_build=True)
    value: list[DataItemValueElementType] = field(
        default_factory=list,
        metadata={
            "name": "Value",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    minimum: None | float = field(
        default=None,
        metadata={
            "name": "Minimum",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    maximum: None | float = field(
        default=None,
        metadata={
            "name": "Maximum",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    nominal: None | float = field(
        default=None,
        metadata={
            "name": "Nominal",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    filter: None | DataItemFilterType = field(
        default=None,
        metadata={
            "name": "Filter",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class DataItemRef(DataItemRefType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class DataItemRelationship(DataItemRelationshipType):
    """
    {{block(AbstractDataItemRelationship)}} that provides a semantic
    reference to another {{block(DataItem)}} described by
    {{property(DataItemRelationship::type)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class DeviceRelationshipType(RelationshipType):
    """
    {{block(ConfigurationRelationship)}} that describes the association
    between a {{block(Component)}} or an {{block(Asset)}} and a
    {{block(Device)}}.

    :ivar device_uuid_ref: A reference to the device uuid
    :ivar role: The type of relationship
    :ivar href: {{term(URL)}} giving the location of the image file.
    :ivar w3_org_1999_xlink_type: Description
    """

    model_config = ConfigDict(defer_build=True)
    device_uuid_ref: str = field(
        metadata={
            "name": "deviceUuidRef",
            "type": "Attribute",
        }
    )
    role: None | DeviceRoleEnumType = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    href: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    w3_org_1999_xlink_type: TypeType = field(
        const=True,
        default=TypeType.LOCATOR,
        metadata={
            "name": "type",
            "type": "Attribute",
            "namespace": "http://www.w3.org/1999/xlink",
        },
    )


class FiltersType(BaseModel):
    """
    {{block(Filters)}} groups one or more {{block(Filter)}} entities
    associated with the {{block(DataItem)}}.

    :ivar filter: **DEPRECATED** in *MTConnect Version 1.4*. Moved to
        the {{block(Filters)}}. See {{package(Properties of DataItem)}}.
    """

    model_config = ConfigDict(defer_build=True)
    filter: list[DataItemFilterType] = field(
        default_factory=list,
        metadata={
            "name": "Filter",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_occurs": 1,
        },
    )


class HeaderType(BaseModel):
    """
    provides information from an {{term(agent)}} defining version
    information, storage capacity, and parameters associated with the data
    management within the {{term(agent)}}.

    :ivar asset_counts: {{block(AssetCounts)}} groups
        {{block(AssetCount)}} entities.
    :ivar version: The document version
    :ivar creation_time: time the file was created.
    :ivar test_indicator: Indicates that this was a test document
    :ivar instance_id: The unique instance identifier of this agent
        process
    :ivar sender: The sender of the message
    :ivar device_model_change_time: A timestamp in 8601 format of the
        last update of the Device information for any device
    :ivar buffer_size: The size of the agent's buffer.
    :ivar asset_buffer_size: The maximum number of assets
    :ivar asset_count: {{def(EventEnum::ASSET_COUNT)}}
    :ivar validation: indicates if the Agent is validating against the
        normative model
    """

    model_config = ConfigDict(defer_build=True)
    asset_counts: None | AssetCountsType = field(
        default=None,
        metadata={
            "name": "AssetCounts",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    version: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    creation_time: XmlDateTime = field(
        metadata={
            "name": "creationTime",
            "type": "Attribute",
        }
    )
    test_indicator: None | bool = field(
        default=None,
        metadata={
            "name": "testIndicator",
            "type": "Attribute",
        },
    )
    instance_id: int = field(
        metadata={
            "name": "instanceId",
            "type": "Attribute",
            "min_inclusive": 1,
            "max_exclusive": 18446744073709551615,
        }
    )
    sender: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    device_model_change_time: XmlDateTime = field(
        metadata={
            "name": "deviceModelChangeTime",
            "type": "Attribute",
        }
    )
    buffer_size: int = field(
        metadata={
            "name": "bufferSize",
            "type": "Attribute",
            "min_inclusive": 1,
            "max_exclusive": 4294967295,
        }
    )
    asset_buffer_size: int = field(
        metadata={
            "name": "assetBufferSize",
            "type": "Attribute",
            "min_inclusive": 1,
            "max_exclusive": 4294967295,
        }
    )
    asset_count: int = field(
        metadata={
            "name": "assetCount",
            "type": "Attribute",
            "min_inclusive": 0,
            "max_exclusive": 4294967295,
        }
    )
    validation: None | bool = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )


class ImageFiles(ImageFilesType):
    """
    This section provides semantic information for the {{block(ImageFile)}}
    entity.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class LowerLimit(LowerLimitType):
    """
    lower conformance boundary for a variable. &gt; Note: immediate concern
    or action may be required.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class LowerWarning(LowerWarningType):
    """
    lower boundary indicating increased concern and supervision may be
    required.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Maximum(MaximumType):
    """
    numeric upper constraint.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Minimum(MinimumType):
    """
    numeric lower constraint.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Nominal(NominalType):
    """
    numeric target or expected value.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class PowerSourcesType(AbstractConfigurationType):
    """
    This section provides semantic information for the
    {{block(PowerSource)}} entity. ![PowerSources](figures/PowerSources.png
    "PowerSources"){: width="0.8"}.
    """

    model_config = ConfigDict(defer_build=True)
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
            "choices": (
                {
                    "name": "PowerSource",
                    "type": PowerSourceType,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
            ),
        },
    )


class Relationship(RelationshipType):
    """
    A relationship between this component and something else.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class SensorConfigurationType(AbstractConfigurationType):
    """
    See {{block(SensorConfiguration)}}.

    :ivar firmware_version: Version number for the sensor unit as
        specified by the manufacturer.
    :ivar calibration_date: Date upon which the {{term(sensor unit)}}
        was last calibrated to the {{term(sensor element)}}.
    :ivar next_calibration_date: Date upon which the {{term(sensor
        element)}} is next scheduled to be calibrated with the
        {{term(sensor unit)}}.
    :ivar calibration_initials: The initials of the person verifying the
        validity of the calibration data.
    :ivar any_element: Any additional properties
    :ivar channels: {{block(Channels)}} groups one or more
        {{block(Channel)}} entities. See {{block(Channel)}}.
    """

    model_config = ConfigDict(defer_build=True)
    firmware_version: str = field(
        metadata={
            "name": "FirmwareVersion",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        }
    )
    calibration_date: None | XmlDateTime = field(
        default=None,
        metadata={
            "name": "CalibrationDate",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    next_calibration_date: None | XmlDateTime = field(
        default=None,
        metadata={
            "name": "NextCalibrationDate",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    calibration_initials: None | str = field(
        default=None,
        metadata={
            "name": "CalibrationInitials",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    any_element: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
        },
    )
    channels: None | ChannelsType = field(
        default=None,
        metadata={
            "name": "Channels",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class SpecificationLimitsType(BaseModel):
    """
    See {{sect(SpecificationLimits)}}.

    :ivar upper_limit: upper conformance boundary for a variable. &gt;
        Note: immediate concern or action may be required.
    :ivar nominal: numeric target or expected value.
    :ivar lower_limit: lower conformance boundary for a variable. &gt;
        Note: immediate concern or action may be required.
    """

    model_config = ConfigDict(defer_build=True)
    upper_limit: None | UpperLimitType = field(
        default=None,
        metadata={
            "name": "UpperLimit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    nominal: None | NominalType = field(
        default=None,
        metadata={
            "name": "Nominal",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    lower_limit: None | LowerLimitType = field(
        default=None,
        metadata={
            "name": "LowerLimit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class SpecificationRelationship(SpecificationRelationshipType):
    """
    {{block(AbstractDataItemRelationship)}} that provides a semantic
    reference to another {{block(Specification)}} described by
    {{property(SpecificationRelationship::type)}} and
    {{property(SpecificationRelationship::idRef)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class SpecificationType(AbstractSpecificationType):
    """
    design characteristics for a piece of equipment.

    :ivar maximum: numeric upper constraint.
    :ivar minimum: numeric lower constraint.
    :ivar nominal: numeric target or expected value.
    :ivar upper_limit: upper conformance boundary for a variable. &gt;
        Note: immediate concern or action may be required.
    :ivar upper_warning: upper boundary indicating increased concern and
        supervision may be required.
    :ivar lower_warning: lower boundary indicating increased concern and
        supervision may be required.
    :ivar lower_limit: lower conformance boundary for a variable. &gt;
        Note: immediate concern or action may be required.
    """

    model_config = ConfigDict(defer_build=True)
    maximum: None | MaximumType = field(
        default=None,
        metadata={
            "name": "Maximum",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    minimum: None | MinimumType = field(
        default=None,
        metadata={
            "name": "Minimum",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    nominal: None | NominalType = field(
        default=None,
        metadata={
            "name": "Nominal",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    upper_limit: None | UpperLimitType = field(
        default=None,
        metadata={
            "name": "UpperLimit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    upper_warning: None | UpperWarningType = field(
        default=None,
        metadata={
            "name": "UpperWarning",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    lower_warning: None | LowerWarningType = field(
        default=None,
        metadata={
            "name": "LowerWarning",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    lower_limit: None | LowerLimitType = field(
        default=None,
        metadata={
            "name": "LowerLimit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class TableEntry(TableEntryType):
    """
    An entry for a table.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class TransformationType(BaseModel):
    """
    See {{sect(Transformation)}}.

    :ivar translation: translations along X, Y, and Z axes are expressed
        as x,y, and z respectively within a 3-dimensional vector.
    :ivar translation_data_set: translations along X, Y, and Z axes are
        expressed as x,y, and z respectively within a 3-dimensional
        vector represented as a dataset.
    :ivar rotation: rotations about X, Y, and Z axes are expressed in A,
        B, and C respectively within a 3-dimensional vector.
    :ivar rotation_data_set: rotations about X, Y, and Z axes are
        expressed in A, B, and C respectively within a 3-dimensional
        vector represented as a dataset.
    """

    model_config = ConfigDict(defer_build=True)
    translation: list[str] = field(
        default_factory=list,
        metadata={
            "name": "Translation",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_length": 3,
            "max_length": 3,
            "tokens": True,
        },
    )
    translation_data_set: None | XyzdataSetType = field(
        default=None,
        metadata={
            "name": "TranslationDataSet",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    rotation: list[str] = field(
        default_factory=list,
        metadata={
            "name": "Rotation",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_length": 3,
            "max_length": 3,
            "tokens": True,
        },
    )
    rotation_data_set: None | AbcdataSetType = field(
        default=None,
        metadata={
            "name": "RotationDataSet",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class UpperLimit(UpperLimitType):
    """
    upper conformance boundary for a variable. &gt; Note: immediate concern
    or action may be required.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class UpperWarning(UpperWarningType):
    """
    upper boundary indicating increased concern and supervision may be
    required.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class AssetRelationship(AssetRelationshipType):
    """
    {{block(ConfigurationRelationship)}} that describes the association
    between a {{block(Component)}} or an {{block(Asset)}} and another
    {{block(Asset)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ComponentRelationship(ComponentRelationshipType):
    """
    {{block(ConfigurationRelationship)}} that describes the association
    between a {{block(Component)}} or an {{block(Asset)}} and another
    {{block(Component)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class CoordinateSystemType(BaseModel):
    """
    Description.

    :ivar origin: See {{sect(Origin)}}.
    :ivar transformation: See {{sect(Transformation)}}.
    :ivar origin_data_set: coordinates of the origin position of a
        coordinate system represented as a dataset.
    :ivar id: The coordinate system identifier
    :ivar name: identifier of the maintenance activity.
    :ivar native_name: The optional name of the coordinate system
    :ivar parent_id_ref: The parent of the coordinate system
    :ivar type_value: expected datatype of the parameter.
    :ivar uuid: uuid of the coordinate system
    """

    model_config = ConfigDict(defer_build=True)
    origin: None | OriginType = field(
        default=None,
        metadata={
            "name": "Origin",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    transformation: None | TransformationType = field(
        default=None,
        metadata={
            "name": "Transformation",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    origin_data_set: None | XyzdataSetType = field(
        default=None,
        metadata={
            "name": "OriginDataSet",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    native_name: None | str = field(
        default=None,
        metadata={
            "name": "nativeName",
            "type": "Attribute",
        },
    )
    parent_id_ref: None | str = field(
        default=None,
        metadata={
            "name": "parentIdRef",
            "type": "Attribute",
        },
    )
    type_value: CoordinateSystemTypeEnumType = field(
        metadata={
            "name": "type",
            "type": "Attribute",
        }
    )
    uuid: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )


class DataItemRelationshipsType(BaseModel):
    """
    Organizes DataItemRelationship and SpecificationRelationship.
    """

    model_config = ConfigDict(defer_build=True)
    specification_relationship: list[SpecificationRelationship] = field(
        default_factory=list,
        metadata={
            "name": "SpecificationRelationship",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    data_item_relationship: list[DataItemRelationship] = field(
        default_factory=list,
        metadata={
            "name": "DataItemRelationship",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class DeviceRelationship(DeviceRelationshipType):
    """
    {{block(ConfigurationRelationship)}} that describes the association
    between a {{block(Component)}} or an {{block(Asset)}} and a
    {{block(Device)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class EntryDefinitionType(BaseModel):
    """
    semantic definition of an {{block(Entry)}}.

    :ivar description: textual description for {{block(Channel)}}.
    :ivar cell_definitions: {{block(CellDefinitions)}} groups one or
        more {{block(CellDefinition)}} entities. See
        {{sect(CellDefinition)}}.
    :ivar key: unique key
    :ivar type_value: expected datatype of the parameter.
    :ivar key_type: The type of measurement
    :ivar sub_type: The sub type for the measurement
    :ivar units: same as {{property(DataItem::units)}}. See
        {{package(Device Information Model)}}.
    """

    model_config = ConfigDict(defer_build=True)
    description: None | DataItemDescriptionType = field(
        default=None,
        metadata={
            "name": "Description",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    cell_definitions: None | CellDefinitionsType = field(
        default=None,
        metadata={
            "name": "CellDefinitions",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    key: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    type_value: None | DataItemEnumEnum | str = field(
        default=None,
        metadata={
            "name": "type",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    key_type: None | DataItemEnumEnum | str = field(
        default=None,
        metadata={
            "name": "keyType",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    sub_type: None | DataItemSubEnumEnum | str = field(
        default=None,
        metadata={
            "name": "subType",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    units: None | UnitsEnum | str = field(
        default=None,
        metadata={
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )


class MotionType(AbstractConfigurationType):
    """
    See {{sect(Motion)}}.

    :ivar id: The coordinate system identifier
    :ivar parent_id_ref: The parent of the coordinate system
    :ivar coordinate_system_id_ref: The identifier of the coordinate
        system that this motion is relative to
    :ivar type_value: expected datatype of the parameter.
    :ivar actuation: The actuation method
    :ivar content:
    """

    model_config = ConfigDict(defer_build=True)
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    parent_id_ref: None | str = field(
        default=None,
        metadata={
            "name": "parentIdRef",
            "type": "Attribute",
        },
    )
    coordinate_system_id_ref: str = field(
        metadata={
            "name": "coordinateSystemIdRef",
            "type": "Attribute",
        }
    )
    type_value: MotionTypeEnumType = field(
        metadata={
            "name": "type",
            "type": "Attribute",
        }
    )
    actuation: ActuationTypeEnumType = field(
        metadata={
            "type": "Attribute",
        }
    )
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
            "choices": (
                {
                    "name": "Description",
                    "type": MotionDescriptionType,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "Origin",
                    "type": OriginType,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "Transformation",
                    "type": TransformationType,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "OriginDataSet",
                    "type": ForwardRef("MotionType.OriginDataSet"),
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "Axis",
                    "type": MotionAxisType,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "AxisDataSet",
                    "type": ForwardRef("MotionType.AxisDataSet"),
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
            ),
        },
    )

    class OriginDataSet(XyzdataSetType):
        pass
        model_config = ConfigDict(defer_build=True)

    class AxisDataSet(XyzdataSetType):
        pass
        model_config = ConfigDict(defer_build=True)


class PowerSources(PowerSourcesType):
    """
    This section provides semantic information for the
    {{block(PowerSource)}} entity. ![PowerSources](figures/PowerSources.png
    "PowerSources"){: width="0.8"}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ProcessSpecificationType(AbstractSpecificationType):
    """
    {{block(Specification)}} that provides information used to assess the
    conformance of a variable to process requirements.

    :ivar control_limits: See {{sect(ControlLimits)}}.
    :ivar alarm_limits: See {{sect(AlarmLimits)}}.
    :ivar specification_limits: See {{sect(SpecificationLimits)}}.
    """

    model_config = ConfigDict(defer_build=True)
    control_limits: None | ControlLimitsType = field(
        default=None,
        metadata={
            "name": "ControlLimits",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    alarm_limits: None | AlarmLimitsType = field(
        default=None,
        metadata={
            "name": "AlarmLimits",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    specification_limits: None | SpecificationLimitsType = field(
        default=None,
        metadata={
            "name": "SpecificationLimits",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class ReferencesType(BaseModel):
    """
    References Model.
    """

    model_config = ConfigDict(defer_build=True)
    component_ref: list[ComponentRef] = field(
        default_factory=list,
        metadata={
            "name": "ComponentRef",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    data_item_ref: list[DataItemRef] = field(
        default_factory=list,
        metadata={
            "name": "DataItemRef",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class SensorConfiguration(SensorConfigurationType):
    """
    See {{block(SensorConfiguration)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class SolidModelType(AbstractConfigurationType):
    """
    See {{sect(SolidModel)}}.

    :ivar transformation: See {{sect(Transformation)}}.
    :ivar scale: either a single multiplier applied to all three
        dimensions or a three space multiplier given in the X, Y, and Z
        dimensions in the coordinate system used for the
        {{block(SolidModel)}}.
    :ivar scale_data_set: either a single multiplier applied to all
        three dimensions or a three space multiplier given in the X, Y,
        and Z dimensions in the coordinate system used for the
        {{block(SolidModel)}} represented as a dataset.
    :ivar id: the unique identifier for this entity within the
        MTConnectDevices document
    :ivar solid_model_id_ref: The associated model file if an item
        reference is used
    :ivar href: {{term(URL)}} giving the location of the image file.
    :ivar type_value: Description
    :ivar item_ref: The reference to the item within the model within
        the related geometry. A modelIdRef MUST be given.
    :ivar media_type: The format of the referenced document
    :ivar coordinate_system_id_ref: The identifier of the coordinate
        system that this motion is relative to
    :ivar units: same as {{property(DataItem::units)}}. See
        {{package(Device Information Model)}}.
    :ivar native_units: The units as expressed by the machine
    """

    model_config = ConfigDict(defer_build=True)
    transformation: None | TransformationType = field(
        default=None,
        metadata={
            "name": "Transformation",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    scale: None | SolidModelScaleType = field(
        default=None,
        metadata={
            "name": "Scale",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    scale_data_set: None | XyzdataSetType = field(
        default=None,
        metadata={
            "name": "ScaleDataSet",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    solid_model_id_ref: None | str = field(
        default=None,
        metadata={
            "name": "solidModelIdRef",
            "type": "Attribute",
        },
    )
    href: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    type_value: TypeType = field(
        const=True,
        default=TypeType.LOCATOR,
        metadata={
            "name": "type",
            "type": "Attribute",
            "namespace": "http://www.w3.org/1999/xlink",
        },
    )
    item_ref: None | str = field(
        default=None,
        metadata={
            "name": "itemRef",
            "type": "Attribute",
        },
    )
    media_type: SolidModelMediaTypeEnum | str = field(
        metadata={
            "name": "mediaType",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        }
    )
    coordinate_system_id_ref: None | str = field(
        default=None,
        metadata={
            "name": "coordinateSystemIdRef",
            "type": "Attribute",
        },
    )
    units: None | UnitsEnum | str = field(
        default=None,
        metadata={
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    native_units: None | NativeUnitsEnum | str = field(
        default=None,
        metadata={
            "name": "nativeUnits",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )


class Specification(SpecificationType):
    """
    design characteristics for a piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class CoordinateSystemsType(AbstractConfigurationType):
    """
    {{block(CoordinateSystems)}} groups one or more
    {{block(CoordinateSystem)}} entities.

    See {{package(CoordinateSystems)}}.
    """

    model_config = ConfigDict(defer_build=True)
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
            "choices": (
                {
                    "name": "CoordinateSystem",
                    "type": CoordinateSystemType,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
            ),
        },
    )


class EntryDefinitionsType(BaseModel):
    """
    {{block(EntryDefinitions)}} groups one or more
    {{block(EntryDefinition)}} entities.

    See {{sect(EntryDefinition)}}.

    :ivar entry_definition: semantic definition of an {{block(Entry)}}.
    """

    model_config = ConfigDict(defer_build=True)
    entry_definition: list[EntryDefinitionType] = field(
        default_factory=list,
        metadata={
            "name": "EntryDefinition",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_occurs": 1,
        },
    )


class Motion(MotionType):
    """
    See {{sect(Motion)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ProcessSpecification(ProcessSpecificationType):
    """
    {{block(Specification)}} that provides information used to assess the
    conformance of a variable to process requirements.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class RelationshipsType(AbstractConfigurationType):
    """
    {{block(Relationships)}} groups one or more
    {{block(ConfigurationRelationship)}} types.

    See {{package(Relationships)}}.
    """

    model_config = ConfigDict(defer_build=True)
    asset_relationship: list[AssetRelationship] = field(
        default_factory=list,
        metadata={
            "name": "AssetRelationship",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    device_relationship: list[DeviceRelationship] = field(
        default_factory=list,
        metadata={
            "name": "DeviceRelationship",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    component_relationship: list[ComponentRelationship] = field(
        default_factory=list,
        metadata={
            "name": "ComponentRelationship",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class SolidModel(SolidModelType):
    """
    See {{sect(SolidModel)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class CoordinateSystems(CoordinateSystemsType):
    """
    {{block(CoordinateSystems)}} groups one or more
    {{block(CoordinateSystem)}} entities.

    See {{package(CoordinateSystems)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class DataItemDefinitionType(BaseModel):
    """
    The DataItem Definition.

    :ivar description: textual description for {{block(Channel)}}.
    :ivar entry_definitions: {{block(EntryDefinitions)}} groups one or
        more {{block(EntryDefinition)}} entities. See
        {{sect(EntryDefinition)}}.
    :ivar cell_definitions: {{block(CellDefinitions)}} groups one or
        more {{block(CellDefinition)}} entities. See
        {{sect(CellDefinition)}}.
    """

    model_config = ConfigDict(defer_build=True)
    description: None | DataItemDescriptionType = field(
        default=None,
        metadata={
            "name": "Description",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    entry_definitions: None | EntryDefinitionsType = field(
        default=None,
        metadata={
            "name": "EntryDefinitions",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    cell_definitions: None | CellDefinitionsType = field(
        default=None,
        metadata={
            "name": "CellDefinitions",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class Relationships(RelationshipsType):
    """
    {{block(Relationships)}} groups one or more
    {{block(ConfigurationRelationship)}} types.

    See {{package(Relationships)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class SpecificationsType(AbstractConfigurationType):
    """
    {{block(Specifications)}} groups one or more {{block(Specification)}}
    entities.

    See {{package(Specifications)}}.
    """

    model_config = ConfigDict(defer_build=True)
    process_specification: list[ProcessSpecification] = field(
        default_factory=list,
        metadata={
            "name": "ProcessSpecification",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    specification: list[Specification] = field(
        default_factory=list,
        metadata={
            "name": "Specification",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )


class DataItemType(BaseModel):
    """
    information reported about a piece of equipment.

    :ivar source: identifies the {{block(Component)}},
        {{block(DataItem)}}, or {{block(Composition)}} from which a
        measured value originates.
    :ivar constraints: {{termplural(organize)}} a set of expected values
        that can be reported for a {{block(DataItem)}}.
    :ivar filters: {{block(Filters)}} groups one or more
        {{block(Filter)}} entities associated with the
        {{block(DataItem)}}.
    :ivar initial_value: starting value for a {{block(DataItem)}} as
        well as the value to be set for the {{block(DataItem)}} after a
        reset event.
    :ivar reset_trigger: type of event that may cause a reset to occur.
    :ivar definition: defines the meaning of {{block(Entry)}} and
        {{block(Cell)}} entities when the associated
        {{property(DataItem::representation)}} is either `DATA_SET` or
        `TABLE`.
    :ivar relationships: {{block(Relationships)}} groups one or more
        {{block(ConfigurationRelationship)}} types. See
        {{package(Relationships)}}.
    :ivar name: identifier of the maintenance activity.
    :ivar id: unique identifier for the power source.
    :ivar type_value: expected datatype of the parameter.
    :ivar sub_type: The sub type for the measurement
    :ivar statistic: The statistical operation on this data
    :ivar units: same as {{property(DataItem::units)}}. See
        {{package(Device Information Model)}}.
    :ivar native_units: The units as expressed by the machine
    :ivar native_scale: The units as expressed by the machine
    :ivar category: The category of the data item
    :ivar coordinate_system: Description
    :ivar coordinate_system_id_ref: The coordinate system reference to a
        particular coordinate system
    :ivar composition_id: The optional composition identifier
    :ivar sample_rate: Used as the default sample rate for waveforms
    :ivar representation: Description
    :ivar significant_digits: The number of significant digits for this
        data item
    :ivar discrete: Description
    """

    model_config = ConfigDict(defer_build=True)
    source: None | DataItemSourceType = field(
        default=None,
        metadata={
            "name": "Source",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    constraints: None | DataItemConstraintsType = field(
        default=None,
        metadata={
            "name": "Constraints",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    filters: None | FiltersType = field(
        default=None,
        metadata={
            "name": "Filters",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    initial_value: None | float = field(
        default=None,
        metadata={
            "name": "InitialValue",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    reset_trigger: None | DataItemResetValueEnum | str = field(
        default=None,
        metadata={
            "name": "ResetTrigger",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    definition: None | DataItemDefinitionType = field(
        default=None,
        metadata={
            "name": "Definition",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    relationships: None | DataItemRelationshipsType = field(
        default=None,
        metadata={
            "name": "Relationships",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    type_value: DataItemEnumEnum | str = field(
        metadata={
            "name": "type",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        }
    )
    sub_type: None | DataItemSubEnumEnum | str = field(
        default=None,
        metadata={
            "name": "subType",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    statistic: None | DataItemStatisticsEnum | str = field(
        default=None,
        metadata={
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    units: None | UnitsEnum | str = field(
        default=None,
        metadata={
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    native_units: None | NativeUnitsEnum | str = field(
        default=None,
        metadata={
            "name": "nativeUnits",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        },
    )
    native_scale: None | float = field(
        default=None,
        metadata={
            "name": "nativeScale",
            "type": "Attribute",
        },
    )
    category: CategoryType = field(
        metadata={
            "type": "Attribute",
        }
    )
    coordinate_system: None | CoordinateSystemEnumType = field(
        default=None,
        metadata={
            "name": "coordinateSystem",
            "type": "Attribute",
        },
    )
    coordinate_system_id_ref: None | str = field(
        default=None,
        metadata={
            "name": "coordinateSystemIdRef",
            "type": "Attribute",
        },
    )
    composition_id: None | str = field(
        default=None,
        metadata={
            "name": "compositionId",
            "type": "Attribute",
        },
    )
    sample_rate: None | float = field(
        default=None,
        metadata={
            "name": "sampleRate",
            "type": "Attribute",
        },
    )
    representation: RepresentationType = field(
        default=RepresentationType.VALUE,
        metadata={
            "type": "Attribute",
        },
    )
    significant_digits: None | int = field(
        default=None,
        metadata={
            "name": "significantDigits",
            "type": "Attribute",
        },
    )
    discrete: bool = field(
        default=False,
        metadata={
            "type": "Attribute",
        },
    )


class Specifications(SpecificationsType):
    """
    {{block(Specifications)}} groups one or more {{block(Specification)}}
    entities.

    See {{package(Specifications)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ComponentConfigurationType(BaseModel):
    """
    The configuration data associated with this component.
    """

    model_config = ConfigDict(defer_build=True)
    content: list[object] = field(
        default_factory=list,
        metadata={
            "type": "Wildcard",
            "namespace": "##any",
            "mixed": True,
            "choices": (
                {
                    "name": "PowerSources",
                    "type": PowerSources,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "ImageFiles",
                    "type": ImageFiles,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "SolidModel",
                    "type": SolidModel,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "Motion",
                    "type": Motion,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "CoordinateSystems",
                    "type": CoordinateSystems,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "Relationships",
                    "type": Relationships,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "Specifications",
                    "type": Specifications,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
                {
                    "name": "SensorConfiguration",
                    "type": SensorConfiguration,
                    "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
                },
            ),
        },
    )


class DataItemsType(BaseModel):
    """
    :ivar data_item: information reported about a piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)
    data_item: list[DataItemType] = field(
        default_factory=list,
        metadata={
            "name": "DataItem",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_occurs": 1,
        },
    )


class CompositionType(BaseModel):
    """
    Description.

    :ivar description: textual description for {{block(Channel)}}.
    :ivar configuration: technical information about an entity
        describing its physical layout, functional characteristics, and
        relationships with other entities.
    :ivar id: unique identifier for the power source.
    :ivar uuid: The composition's universally unique id.
    :ivar name: identifier of the maintenance activity.
    :ivar type_value: expected datatype of the parameter.
    """

    model_config = ConfigDict(defer_build=True)
    description: None | ComponentDescriptionType = field(
        default=None,
        metadata={
            "name": "Description",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    configuration: None | ComponentConfigurationType = field(
        default=None,
        metadata={
            "name": "Configuration",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    uuid: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    type_value: CompositionEnumTypeEnum | str = field(
        metadata={
            "name": "type",
            "type": "Attribute",
            "pattern": r"[a-ln-z][a-z]*:[A-Z_0-9]+",
        }
    )


class CompositionsType(BaseModel):
    """
    Compositions Model.

    :ivar composition: Description
    """

    model_config = ConfigDict(defer_build=True)
    composition: list[CompositionType] = field(
        default_factory=list,
        metadata={
            "name": "Composition",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_occurs": 1,
        },
    )


class ComponentType(BaseModel):
    """
    Description.

    :ivar description: textual description for {{block(Channel)}}.
    :ivar configuration: technical information about an entity
        describing its physical layout, functional characteristics, and
        relationships with other entities.
    :ivar data_items:
    :ivar components: {{block(Components)}} groups one or more
        {{block(Component)}} entities.
    :ivar compositions: Compositions Model
    :ivar references: References Model
    :ivar id: unique identifier for the power source.
    :ivar native_name: The device manufacturer component name
    :ivar sample_interval: The rate at which the data is sampled from
        the component
    :ivar sample_rate: DEPRECATED: The rate at which the data is sampled
        from the component
    """

    model_config = ConfigDict(defer_build=True)
    description: None | ComponentDescriptionType = field(
        default=None,
        metadata={
            "name": "Description",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    configuration: None | ComponentConfigurationType = field(
        default=None,
        metadata={
            "name": "Configuration",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    data_items: None | DataItemsType = field(
        default=None,
        metadata={
            "name": "DataItems",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    components: None | ComponentsType = field(
        default=None,
        metadata={
            "name": "Components",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    compositions: None | CompositionsType = field(
        default=None,
        metadata={
            "name": "Compositions",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    references: None | ReferencesType = field(
        default=None,
        metadata={
            "name": "References",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    id: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    native_name: None | str = field(
        default=None,
        metadata={
            "name": "nativeName",
            "type": "Attribute",
        },
    )
    sample_interval: None | float = field(
        default=None,
        metadata={
            "name": "sampleInterval",
            "type": "Attribute",
        },
    )
    sample_rate: None | float = field(
        default=None,
        metadata={
            "name": "sampleRate",
            "type": "Attribute",
        },
    )


class CommonComponentType(ComponentType):
    """
    An abstract component that has an optional uuid.

    :ivar uuid: The component's universally unique id.
    :ivar name: identifier of the maintenance activity.
    """

    model_config = ConfigDict(defer_build=True)
    uuid: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )
    name: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )


class Component(ComponentType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class DeviceType(ComponentType):
    """
    Description.

    :ivar iso841_class: DEPRECATED: The device's ISO-841 classification
    :ivar uuid: The components universally unique id. This can be
        composed of the manufactures id or name and the serial number.
    :ivar name: identifier of the maintenance activity.
    :ivar mtconnect_version: MTConnect version of the {{term(Device
        Information Model)}} used to configure the information to be
        published for a piece of equipment in an {{term(MTConnect
        Response Document)}}.
    :ivar hash: secure one-way hash function
    """

    model_config = ConfigDict(defer_build=True)
    iso841_class: None | int = field(
        default=None,
        metadata={
            "name": "iso841Class",
            "type": "Attribute",
        },
    )
    uuid: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    name: str = field(
        metadata={
            "type": "Attribute",
        }
    )
    mtconnect_version: None | str = field(
        default=None,
        metadata={
            "name": "mtconnectVersion",
            "type": "Attribute",
        },
    )
    hash: None | str = field(
        default=None,
        metadata={
            "type": "Attribute",
        },
    )


class AdapterType(CommonComponentType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class AdaptersType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Adapter)}}
    types.
    """

    model_config = ConfigDict(defer_build=True)


class AgentType(DeviceType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class AmplifierType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of an electronic component or
    circuit that amplifies power, electric current, or voltage.
    """

    model_config = ConfigDict(defer_build=True)


class AuxiliariesType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Auxiliary)}}
    types.
    """

    model_config = ConfigDict(defer_build=True)


class AuxiliaryType(CommonComponentType):
    """
    abstract {{block(Component)}} composed of removable part(s) of a piece
    of equipment that provides supplementary or extended functionality.
    """

    model_config = ConfigDict(defer_build=True)


class AxesType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Component
    Types::Axis)}} types.
    """

    model_config = ConfigDict(defer_build=True)


class AxisType(CommonComponentType):
    """
    axis along or around which the {{block(Component)}} moves relative to a
    coordinate system.
    """

    model_config = ConfigDict(defer_build=True)


class BallscrewType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a mechanical structure that
    transforms rotary motion into linear motion.
    """

    model_config = ConfigDict(defer_build=True)


class BeltType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of an endless flexible band that
    transmits motion for a piece of equipment or conveys materials and
    objects.
    """

    model_config = ConfigDict(defer_build=True)


class BrakeType(CommonComponentType):
    """
    leaf {{block(Component)}} that slows or stops a moving object by the
    absorption or transfer of the energy of momentum, usually by means of
    friction, electrical force, or magnetic force.
    """

    model_config = ConfigDict(defer_build=True)


class ChainType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of interconnected series of objects
    that band together and are used to transmit motion for a piece of
    equipment or to convey materials and objects.
    """

    model_config = ConfigDict(defer_build=True)


class ChopperType(CommonComponentType):
    """
    leaf {{block(Component)}} that breaks material into smaller pieces.
    """

    model_config = ConfigDict(defer_build=True)


class ChuckType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a mechanism that holds a part or
    stock material in place.
    """

    model_config = ConfigDict(defer_build=True)


class ChuteType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of an inclined channel that conveys
    material.
    """

    model_config = ConfigDict(defer_build=True)


class CircuitBreakerType(CommonComponentType):
    """
    leaf {{block(Component)}} that interrupts an electric circuit.
    """

    model_config = ConfigDict(defer_build=True)


class ClampType(CommonComponentType):
    """
    leaf {{block(Component)}} that strengthens, support, or fastens objects
    in place.
    """

    model_config = ConfigDict(defer_build=True)


class CommonComponent(CommonComponentType):
    """
    An abstract component that has an optional uuid.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class CompressorType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a pump or other mechanism that
    reduces volume and increases pressure of gases in order to condense the
    gases to drive pneumatically powered pieces of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class ControllersType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}}
    {{block(Controller)}} entities.
    """

    model_config = ConfigDict(defer_build=True)


class CoolingTowerType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a heat exchange system that uses
    a fluid to transfer heat to the atmosphere.
    """

    model_config = ConfigDict(defer_build=True)


class Device(DeviceType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class DoorType(CommonComponentType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class DrainType(CommonComponentType):
    """
    leaf {{block(Component)}} that allows material to flow for the purpose
    of drainage from, for example, a vessel or tank.
    """

    model_config = ConfigDict(defer_build=True)


class EncoderType(CommonComponentType):
    """
    leaf {{block(Component)}} that measures position.
    """

    model_config = ConfigDict(defer_build=True)


class EnvironmentalType(CommonComponentType):
    """
    {{block(Component)}} that observes the surroundings of another
    {{block(Component)}}. &gt; Note: {{block(Environmental)}} **SHOULD** be
    organized by {{block(Auxillaries)}}, {{block(Systems)}} or
    {{block(Parts)}} depending on the relationship to the
    {{block(Component)}}.
    """

    model_config = ConfigDict(defer_build=True)


class ExpiredPotType(CommonComponentType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that is
    no longer usable for removal from a {{block(ToolMagazine)}} or
    {{block(Turret)}}.
    """

    model_config = ConfigDict(defer_build=True)


class ExposureUnitType(CommonComponentType):
    """
    leaf {{block(Component)}} that emits a type of radiation.
    """

    model_config = ConfigDict(defer_build=True)


class ExtrusionUnitType(CommonComponentType):
    """
    leaf {{block(Component)}} that dispenses liquid or powered materials.
    """

    model_config = ConfigDict(defer_build=True)


class FanType(CommonComponentType):
    """
    leaf {{block(Component)}} that produces a current of air.
    """

    model_config = ConfigDict(defer_build=True)


class FilterType(CommonComponentType):
    """
    **DEPRECATED** in *MTConnect Version 1.4*.

    Moved to the {{block(Filters)}}. See {{package(Properties of
    DataItem)}}.
    """

    model_config = ConfigDict(defer_build=True)


class GalvanomotorType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of an electromechanical actuator
    that produces deflection of a beam of light or energy in response to
    electric current through its coil in a magnetic field.
    """

    model_config = ConfigDict(defer_build=True)


class GripperType(CommonComponentType):
    """
    leaf {{block(Component)}} that holds a part, stock material, or any
    other item in place.
    """

    model_config = ConfigDict(defer_build=True)


class HopperType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a chamber or bin in which
    materials are stored temporarily, typically being filled through the
    top and dispensed through the bottom.
    """

    model_config = ConfigDict(defer_build=True)


class InterfacesType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Interface)}}
    types.
    """

    model_config = ConfigDict(defer_build=True)


class LinearPositionFeedbackType(CommonComponentType):
    """
    leaf {{block(Component)}} that measures linear motion or position.
    **DEPRECATION WARNING** : May be deprecated in the future.

    Recommend using {{block(Encoder)}}.
    """

    model_config = ConfigDict(defer_build=True)


class LockType(CommonComponentType):
    """
    {{block(Component)}} that physically prohibits a {{block(Device)}} or
    {{block(Component)}} from opening or operating.
    """

    model_config = ConfigDict(defer_build=True)


class MaterialsType(CommonComponentType):
    """
    {{block(Resources)}} that {{termplural(organize)}} {{block(Material)}}
    types.
    """

    model_config = ConfigDict(defer_build=True)


class MotorType(CommonComponentType):
    """
    leaf {{block(Component)}} that converts electrical, pneumatic, or
    hydraulic energy into mechanical energy.
    """

    model_config = ConfigDict(defer_build=True)


class OilType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a viscous liquid.
    """

    model_config = ConfigDict(defer_build=True)


class PartType(CommonComponentType):
    """
    abstract {{block(Component)}} composed of a {{term(part)}} being
    processed by a piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class PartsType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Part)}}
    types.
    """

    model_config = ConfigDict(defer_build=True)


class PathType(CommonComponentType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class PotType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a tool storage location
    associated with a {{block(ToolMagazine)}} or
    {{block(AutomaticToolChanger)}}.
    """

    model_config = ConfigDict(defer_build=True)


class PowerSupplyType(CommonComponentType):
    """
    leaf {{block(Component)}} that provides power to electric mechanisms.
    """

    model_config = ConfigDict(defer_build=True)


class PowerType(CommonComponentType):
    """
    {{block(Power)}} was **DEPRECATED** in *MTConnect Version 1.1* and was
    replaced by {{block(Availability)}} data item type.
    """

    model_config = ConfigDict(defer_build=True)


class ProcessType(CommonComponentType):
    """
    abstract {{block(Component)}} composed of a manufacturing process being
    executed on a piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class ProcessesType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Process)}}
    types.
    """

    model_config = ConfigDict(defer_build=True)


class PulleyType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a mechanism or wheel that turns
    in a frame or block and serves to change the direction of or to
    transmit force.
    """

    model_config = ConfigDict(defer_build=True)


class PumpType(CommonComponentType):
    """
    leaf {{block(Component)}} that raises, drives, exhausts, or compresses
    fluids or gases by means of a piston, plunger, or set of rotating
    vanes.
    """

    model_config = ConfigDict(defer_build=True)


class ReelType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a rotary storage unit for
    material.
    """

    model_config = ConfigDict(defer_build=True)


class RemovalPotType(CommonComponentType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that has
    to be removed from a {{block(ToolMagazine)}} or {{block(Turret)}} to a
    location outside of the piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class ResourceType(CommonComponentType):
    """
    abstract {{block(Component)}} composed of material or personnel
    involved in a manufacturing process.
    """

    model_config = ConfigDict(defer_build=True)


class ResourcesType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Resource)}}
    types.
    """

    model_config = ConfigDict(defer_build=True)


class ReturnPotType(CommonComponentType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that has
    been removed from {{term(spindle)}} or {{block(Turret)}} and awaiting
    for return to a {{block(ToolMagazine)}}.
    """

    model_config = ConfigDict(defer_build=True)


class SensingElementType(CommonComponentType):
    """
    leaf {{block(Component)}} that provides a signal or measured value.
    """

    model_config = ConfigDict(defer_build=True)


class SensorType(CommonComponentType):
    """
    This section provides semantic information for the
    {{block(SensorConfiguration)}} entity. {{term(sensor)}} is a unique
    type of a piece of equipment.

    A {{term(sensor)}} is typically comprised of two major components: a
    {{term(sensor unit)}} that provides signal processing, conversion, and
    communications and the {{termplural(sensing element)}} that provides a
    signal or measured value. The {{term(sensor unit)}} is modeled as a
    {{term(lower level)}} {{block(Component)}} called {{block(Sensor)}}.
    The {{term(sensing element)}} may be modeled as a
    {{block(Composition)}} element of a {{block(Sensor)}} element and the
    measured value would be modeled as a {{block(DataItem)}} (See
    {{sect(DataItems)}} for more information on {{block(DataItem)}}
    elements). Each {{term(sensor unit)}} may have multiple
    {{termplural(sensing element)}}; each representing the data for a
    variety of measured values. ![Sensing Element provided as a DataItem
    Example](figures/Sensing%20Element%20provided%20as%20a%20DataItem%20Example.png
    "Sensing Element provided as a DataItem Example"){: width="0.8"} &gt;
    Note: See
    {{lst(example-of-sensing-element-provided-as-data-item-associated-with-a-component)}}
    for an {{term(XML)}} example. When a {{term(sensor unit)}} is modeled
    as a {{block(Component)}} or as a separate piece of equipment, it may
    provide additional configuration information for the
    {{termplural(sensor element)}} and the {{term(sensor unit)}} itself.
    ![Sensor for Rotary Axis
    Example](figures/Sensor%20for%20Rotary%20Axis%20Example.png "Sensor for
    Rotary Axis Example"){: width="0.8"} &gt; Note: If a {{block(Sensor)}}
    provides vibration measurement data for the spindle on a piece of
    equipment, it could be modeled as a {{block(Sensor)}} for rotary axis
    named `C`. See {{lst(example-of-sensor-for-rotary-axis)}} for an
    {{term(XML)}} example. ![Sensor unit with Sensing Elements
    Example](figures/Sensor%20unit%20with%20Sensing%20Elements%20Example.png
    "Sensor unit with Sensing Elements Example"){: width="0.8"} &gt; Note:
    If a {{block(Sensor)}} provides measurement data for multiple
    {{block(Component)}} elements within a piece of equipment and is not
    associated with any particular {{block(Component)}}, it **MAY** be
    modeled as an independent {{block(Component)}} and the data associated
    with measurements are associated with their associated
    {{block(Component)}} entities. See
    {{lst(example-of-sensor-unit-with-sensing-element)}} for an
    {{term(XML)}} example. {{block(Configuration)}} data provides
    information required for maintenance and support of the sensor. When
    {{block(Sensor)}} represents the {{term(sensor unit)}} for multiple
    {{term(sensing element)}}(s), each sensing element is represented by a
    {{block(Channel)}}. The {{term(sensor unit)}} itself and each
    {{block(Channel)}} representing one {{term(sensing element)}} **MAY**
    have its own configuration data. ![Sensor Configuration
    Example](figures/Sensor%20Configuration%20Example.png "Sensor
    Configuration Example"){: width="0.8"} &gt; Note: See
    {{lst(example-of-configuration-data-for-sensor)}} for an {{term(XML)}}
    example.
    """

    model_config = ConfigDict(defer_build=True)


class SpreaderType(CommonComponentType):
    """
    leaf {{block(Component)}} that flattens or spreading materials.
    """

    model_config = ConfigDict(defer_build=True)


class StagingPotType(CommonComponentType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that is
    awaiting transfer to a {{block(ToolMagazine)}} or {{block(Turret)}}
    from outside of the piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class StationType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a storage or mounting location
    for a tool associated with a {{block(Turret)}}, {{block(GangToolBar)}},
    or {{block(ToolRack)}}.
    """

    model_config = ConfigDict(defer_build=True)


class StorageBatteryType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of one or more cells in which
    chemical energy is converted into electricity and used as a source of
    power.
    """

    model_config = ConfigDict(defer_build=True)


class StructureType(CommonComponentType):
    """
    {{block(Component)}} composed of part(s) comprising the rigid bodies of
    the piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class StructuresType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Structure)}}
    types.
    """

    model_config = ConfigDict(defer_build=True)


class SwitchType(CommonComponentType):
    """
    leaf {{block(Component)}} that turns on or off an electric current or
    makes or breaks a circuit.
    """

    model_config = ConfigDict(defer_build=True)


class SystemType(CommonComponentType):
    """
    abstract {{block(Component)}} that is permanently integrated into the
    piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class SystemsType(CommonComponentType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(System)}}
    types.
    """

    model_config = ConfigDict(defer_build=True)


class TableType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a surface for holding an object
    or material.
    """

    model_config = ConfigDict(defer_build=True)


class TankType(CommonComponentType):
    """
    leaf {{block(Component)}} generally composed of an enclosed container.
    """

    model_config = ConfigDict(defer_build=True)


class TensionerType(CommonComponentType):
    """
    leaf {{block(Component)}} that provides or applies a stretch or strain
    to another mechanism.
    """

    model_config = ConfigDict(defer_build=True)


class TransferArmType(CommonComponentType):
    """
    leaf {{block(Component)}} that physically moves a tool from one
    location to another.
    """

    model_config = ConfigDict(defer_build=True)


class TransferPotType(CommonComponentType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that is
    awaiting transfer from a {{block(ToolMagazine)}} to {{term(spindle)}}
    or {{block(Turret)}}.
    """

    model_config = ConfigDict(defer_build=True)


class TransformerType(CommonComponentType):
    """
    leaf {{block(Component)}} that transforms electric energy from a source
    to a secondary circuit.
    """

    model_config = ConfigDict(defer_build=True)


class ValveType(CommonComponentType):
    """
    leaf {{block(Component)}} that halts or controls the flow of a liquid,
    gas, or other material through a passage, pipe, inlet, or outlet.
    """

    model_config = ConfigDict(defer_build=True)


class VatType(CommonComponentType):
    """
    leaf {{block(Component)}} generally composed of an open container.
    """

    model_config = ConfigDict(defer_build=True)


class WaterType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of $$H_2 O$$.
    """

    model_config = ConfigDict(defer_build=True)


class WireType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of a string like piece or filament
    of relatively rigid or flexible material provided in a variety of
    diameters.
    """

    model_config = ConfigDict(defer_build=True)


class WorkpieceType(CommonComponentType):
    """
    leaf {{block(Component)}} composed of an object or material on which a
    form of work is performed.
    """

    model_config = ConfigDict(defer_build=True)


class ActuatorType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Adapter(AdapterType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Adapters(AdaptersType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Adapter)}}
    types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Agent(AgentType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class AirHandlerType(SystemType):
    """
    system that circulates air or regulates airflow without altering
    temperature or humidity.
    """

    model_config = ConfigDict(defer_build=True)


class Amplifier(AmplifierType):
    """
    leaf {{block(Component)}} composed of an electronic component or
    circuit that amplifies power, electric current, or voltage.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Auxiliaries(AuxiliariesType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Auxiliary)}}
    types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Auxiliary(AuxiliaryType):
    """
    abstract {{block(Component)}} composed of removable part(s) of a piece
    of equipment that provides supplementary or extended functionality.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Axes(AxesType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Component
    Types::Axis)}} types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Axis(AxisType):
    """
    axis along or around which the {{block(Component)}} moves relative to a
    coordinate system.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Ballscrew(BallscrewType):
    """
    leaf {{block(Component)}} composed of a mechanical structure that
    transforms rotary motion into linear motion.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Belt(BeltType):
    """
    leaf {{block(Component)}} composed of an endless flexible band that
    transmits motion for a piece of equipment or conveys materials and
    objects.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Brake(BrakeType):
    """
    leaf {{block(Component)}} that slows or stops a moving object by the
    absorption or transfer of the energy of momentum, usually by means of
    friction, electrical force, or magnetic force.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Chain(ChainType):
    """
    leaf {{block(Component)}} composed of interconnected series of objects
    that band together and are used to transmit motion for a piece of
    equipment or to convey materials and objects.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Chopper(ChopperType):
    """
    leaf {{block(Component)}} that breaks material into smaller pieces.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Chuck(ChuckType):
    """
    leaf {{block(Component)}} composed of a mechanism that holds a part or
    stock material in place.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Chute(ChuteType):
    """
    leaf {{block(Component)}} composed of an inclined channel that conveys
    material.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class CircuitBreaker(CircuitBreakerType):
    """
    leaf {{block(Component)}} that interrupts an electric circuit.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Clamp(ClampType):
    """
    leaf {{block(Component)}} that strengthens, support, or fastens objects
    in place.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Compressor(CompressorType):
    """
    leaf {{block(Component)}} composed of a pump or other mechanism that
    reduces volume and increases pressure of gases in order to condense the
    gases to drive pneumatically powered pieces of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ControllerType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Controllers(ControllersType):
    """
    {{block(Component)}} that {{termplural(organize)}}
    {{block(Controller)}} entities.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class CoolantType(SystemType):
    """
    {{block(System)}} that provides distribution and management of fluids
    that remove heat from a piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class CoolingTower(CoolingTowerType):
    """
    leaf {{block(Component)}} composed of a heat exchange system that uses
    a fluid to transfer heat to the atmosphere.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class CoolingType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class CuttingTorchType(AuxiliaryType):
    """
    {{block(Auxiliary)}} that employs a concentrated flame to both sever
    materials through cutting and fuse them together in joining processes.
    """

    model_config = ConfigDict(defer_build=True)


class DepositionType(AuxiliaryType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class DevicesType(BaseModel):
    """
    This section provides semantic information for the {{block(Device)}}
    types.

    :ivar agent: Description
    :ivar device: Description
    """

    model_config = ConfigDict(defer_build=True)
    agent: None | AgentType = field(
        default=None,
        metadata={
            "name": "Agent",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    device: list[DeviceType] = field(
        default_factory=list,
        metadata={
            "name": "Device",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
            "min_occurs": 1,
        },
    )


class DielectricType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Door(DoorType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Drain(DrainType):
    """
    leaf {{block(Component)}} that allows material to flow for the purpose
    of drainage from, for example, a vessel or tank.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ElectricType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class ElectrodeType(AuxiliaryType):
    """
    {{block(Auxiliary)}} that is used for many electrical discharge
    manufacturing processes like welding.
    """

    model_config = ConfigDict(defer_build=True)


class EnclosureType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Encoder(EncoderType):
    """
    leaf {{block(Component)}} that measures position.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class EndEffectorType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Environmental(EnvironmentalType):
    """
    {{block(Component)}} that observes the surroundings of another
    {{block(Component)}}. &gt; Note: {{block(Environmental)}} **SHOULD** be
    organized by {{block(Auxillaries)}}, {{block(Systems)}} or
    {{block(Parts)}} depending on the relationship to the
    {{block(Component)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ExpiredPot(ExpiredPotType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that is
    no longer usable for removal from a {{block(ToolMagazine)}} or
    {{block(Turret)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ExposureUnit(ExposureUnitType):
    """
    leaf {{block(Component)}} that emits a type of radiation.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ExtrusionUnit(ExtrusionUnitType):
    """
    leaf {{block(Component)}} that dispenses liquid or powered materials.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Fan(FanType):
    """
    leaf {{block(Component)}} that produces a current of air.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class FeederType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Filter(FilterType):
    """
    **DEPRECATED** in *MTConnect Version 1.4*.

    Moved to the {{block(Filters)}}. See {{package(Properties of
    DataItem)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Galvanomotor(GalvanomotorType):
    """
    leaf {{block(Component)}} composed of an electromechanical actuator
    that produces deflection of a beam of light or energy in response to
    electric current through its coil in a magnetic field.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Gripper(GripperType):
    """
    leaf {{block(Component)}} that holds a part, stock material, or any
    other item in place.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class HeatingType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Hopper(HopperType):
    """
    leaf {{block(Component)}} composed of a chamber or bin in which
    materials are stored temporarily, typically being filled through the
    top and dispensed through the bottom.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Interfaces(InterfacesType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Interface)}}
    types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class LinearPositionFeedback(LinearPositionFeedbackType):
    """
    leaf {{block(Component)}} that measures linear motion or position.
    **DEPRECATION WARNING** : May be deprecated in the future.

    Recommend using {{block(Encoder)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class LinearType(AxisType):
    """
    {{block(Component Types::Axis)}} that provides prismatic motion along a
    fixed axis.
    """

    model_config = ConfigDict(defer_build=True)


class LinkType(StructureType):
    """
    {{block(Structure)}} that provides a connection between
    {{block(Component)}} entities.
    """

    model_config = ConfigDict(defer_build=True)


class LoaderType(AuxiliaryType):
    """
    {{block(Auxiliary)}} that provides movement and distribution of
    materials, parts, tooling, and other items to or from a piece of
    equipment.
    """

    model_config = ConfigDict(defer_build=True)


class Lock(LockType):
    """
    {{block(Component)}} that physically prohibits a {{block(Device)}} or
    {{block(Component)}} from opening or operating.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class LubricationType(SystemType):
    """
    {{block(System)}} that provides distribution and management of fluids
    used to lubricate portions of the piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class MaterialType(ResourceType):
    """
    {{block(Resource)}} composed of material that is consumed or used by
    the piece of equipment for production of parts, materials, or other
    types of goods.
    """

    model_config = ConfigDict(defer_build=True)


class Materials(MaterialsType):
    """
    {{block(Resources)}} that {{termplural(organize)}} {{block(Material)}}
    types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Motor(MotorType):
    """
    leaf {{block(Component)}} that converts electrical, pneumatic, or
    hydraulic energy into mechanical energy.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Oil(OilType):
    """
    leaf {{block(Component)}} composed of a viscous liquid.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Part(PartType):
    """
    abstract {{block(Component)}} composed of a {{term(part)}} being
    processed by a piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class PartOccurrenceType(PartType):
    """
    Example.
    """

    model_config = ConfigDict(defer_build=True)


class Parts(PartsType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Part)}}
    types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Path(PathType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class PersonnelType(ResourceType):
    """
    {{block(Resource)}} composed of an individual or individuals who either
    control, support, or otherwise interface with a piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class PinToolType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Pot(PotType):
    """
    leaf {{block(Component)}} composed of a tool storage location
    associated with a {{block(ToolMagazine)}} or
    {{block(AutomaticToolChanger)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Power(PowerType):
    """
    {{block(Power)}} was **DEPRECATED** in *MTConnect Version 1.1* and was
    replaced by {{block(Availability)}} data item type.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class PowerSupply(PowerSupplyType):
    """
    leaf {{block(Component)}} that provides power to electric mechanisms.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class PressureType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Process(ProcessType):
    """
    abstract {{block(Component)}} composed of a manufacturing process being
    executed on a piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ProcessOccurrenceType(ProcessType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class ProcessPowerType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Processes(ProcessesType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Process)}}
    types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ProtectiveType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Pulley(PulleyType):
    """
    leaf {{block(Component)}} composed of a mechanism or wheel that turns
    in a frame or block and serves to change the direction of or to
    transmit force.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Pump(PumpType):
    """
    leaf {{block(Component)}} that raises, drives, exhausts, or compresses
    fluids or gases by means of a piston, plunger, or set of rotating
    vanes.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Reel(ReelType):
    """
    leaf {{block(Component)}} composed of a rotary storage unit for
    material.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class RemovalPot(RemovalPotType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that has
    to be removed from a {{block(ToolMagazine)}} or {{block(Turret)}} to a
    location outside of the piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Resource(ResourceType):
    """
    abstract {{block(Component)}} composed of material or personnel
    involved in a manufacturing process.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Resources(ResourcesType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Resource)}}
    types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ReturnPot(ReturnPotType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that has
    been removed from {{term(spindle)}} or {{block(Turret)}} and awaiting
    for return to a {{block(ToolMagazine)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class RotaryType(AxisType):
    """
    {{block(Component Types::Axis)}} that provides rotation about a fixed
    axis.
    """

    model_config = ConfigDict(defer_build=True)


class SensingElement(SensingElementType):
    """
    leaf {{block(Component)}} that provides a signal or measured value.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Sensor(SensorType):
    """
    This section provides semantic information for the
    {{block(SensorConfiguration)}} entity. {{term(sensor)}} is a unique
    type of a piece of equipment.

    A {{term(sensor)}} is typically comprised of two major components: a
    {{term(sensor unit)}} that provides signal processing, conversion, and
    communications and the {{termplural(sensing element)}} that provides a
    signal or measured value. The {{term(sensor unit)}} is modeled as a
    {{term(lower level)}} {{block(Component)}} called {{block(Sensor)}}.
    The {{term(sensing element)}} may be modeled as a
    {{block(Composition)}} element of a {{block(Sensor)}} element and the
    measured value would be modeled as a {{block(DataItem)}} (See
    {{sect(DataItems)}} for more information on {{block(DataItem)}}
    elements). Each {{term(sensor unit)}} may have multiple
    {{termplural(sensing element)}}; each representing the data for a
    variety of measured values. ![Sensing Element provided as a DataItem
    Example](figures/Sensing%20Element%20provided%20as%20a%20DataItem%20Example.png
    "Sensing Element provided as a DataItem Example"){: width="0.8"} &gt;
    Note: See
    {{lst(example-of-sensing-element-provided-as-data-item-associated-with-a-component)}}
    for an {{term(XML)}} example. When a {{term(sensor unit)}} is modeled
    as a {{block(Component)}} or as a separate piece of equipment, it may
    provide additional configuration information for the
    {{termplural(sensor element)}} and the {{term(sensor unit)}} itself.
    ![Sensor for Rotary Axis
    Example](figures/Sensor%20for%20Rotary%20Axis%20Example.png "Sensor for
    Rotary Axis Example"){: width="0.8"} &gt; Note: If a {{block(Sensor)}}
    provides vibration measurement data for the spindle on a piece of
    equipment, it could be modeled as a {{block(Sensor)}} for rotary axis
    named `C`. See {{lst(example-of-sensor-for-rotary-axis)}} for an
    {{term(XML)}} example. ![Sensor unit with Sensing Elements
    Example](figures/Sensor%20unit%20with%20Sensing%20Elements%20Example.png
    "Sensor unit with Sensing Elements Example"){: width="0.8"} &gt; Note:
    If a {{block(Sensor)}} provides measurement data for multiple
    {{block(Component)}} elements within a piece of equipment and is not
    associated with any particular {{block(Component)}}, it **MAY** be
    modeled as an independent {{block(Component)}} and the data associated
    with measurements are associated with their associated
    {{block(Component)}} entities. See
    {{lst(example-of-sensor-unit-with-sensing-element)}} for an
    {{term(XML)}} example. {{block(Configuration)}} data provides
    information required for maintenance and support of the sensor. When
    {{block(Sensor)}} represents the {{term(sensor unit)}} for multiple
    {{term(sensing element)}}(s), each sensing element is represented by a
    {{block(Channel)}}. The {{term(sensor unit)}} itself and each
    {{block(Channel)}} representing one {{term(sensing element)}} **MAY**
    have its own configuration data. ![Sensor Configuration
    Example](figures/Sensor%20Configuration%20Example.png "Sensor
    Configuration Example"){: width="0.8"} &gt; Note: See
    {{lst(example-of-configuration-data-for-sensor)}} for an {{term(XML)}}
    example.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class SpindleType(AxisType):
    """
    {{block(Component)}} that provides an axis of rotation for the purpose
    of rapidly rotating a part or a tool to provide sufficient surface
    speed for cutting operations. {{block(Spindle)}} was **DEPRECATED** in
    *MTConnect Version 1.1* and was replaced by {{block(RotaryMode)}}.
    """

    model_config = ConfigDict(defer_build=True)


class Spreader(SpreaderType):
    """
    leaf {{block(Component)}} that flattens or spreading materials.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class StagingPot(StagingPotType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that is
    awaiting transfer to a {{block(ToolMagazine)}} or {{block(Turret)}}
    from outside of the piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Station(StationType):
    """
    leaf {{block(Component)}} composed of a storage or mounting location
    for a tool associated with a {{block(Turret)}}, {{block(GangToolBar)}},
    or {{block(ToolRack)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class StorageBattery(StorageBatteryType):
    """
    leaf {{block(Component)}} composed of one or more cells in which
    chemical energy is converted into electricity and used as a source of
    power.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Structure(StructureType):
    """
    {{block(Component)}} composed of part(s) comprising the rigid bodies of
    the piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Structures(StructuresType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(Structure)}}
    types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Switch(SwitchType):
    """
    leaf {{block(Component)}} that turns on or off an electric current or
    makes or breaks a circuit.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class System(SystemType):
    """
    abstract {{block(Component)}} that is permanently integrated into the
    piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Systems(SystemsType):
    """
    {{block(Component)}} that {{termplural(organize)}} {{block(System)}}
    types.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Table(TableType):
    """
    leaf {{block(Component)}} composed of a surface for holding an object
    or material.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Tank(TankType):
    """
    leaf {{block(Component)}} generally composed of an enclosed container.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Tensioner(TensionerType):
    """
    leaf {{block(Component)}} that provides or applies a stretch or strain
    to another mechanism.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ThermostatType(SensorType):
    """
    {{block(Component)}} composed of a sensor or an instrument that
    measures temperature. {{block(Thermostat)}} was **DEPRECATED** in
    *MTConnect Version 1.2* and was replaced by {{block(Temperature)}}.
    """

    model_config = ConfigDict(defer_build=True)


class ToolHolderType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class ToolingDeliveryType(AuxiliaryType):
    """
    {{block(Auxiliary)}} that manages, positions, stores, and delivers
    tooling within a piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class TransferArm(TransferArmType):
    """
    leaf {{block(Component)}} that physically moves a tool from one
    location to another.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class TransferPot(TransferPotType):
    """
    leaf {{block(Component)}} that is a {{block(Pot)}} for a tool that is
    awaiting transfer from a {{block(ToolMagazine)}} to {{term(spindle)}}
    or {{block(Turret)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Transformer(TransformerType):
    """
    leaf {{block(Component)}} that transforms electric energy from a source
    to a secondary circuit.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class VacuumType(SystemType):
    """
    {{block(System)}} that evacuates gases and liquids from an enclosed and
    sealed space to a controlled negative pressure or a molecular density
    below the prevailing atmospheric level.
    """

    model_config = ConfigDict(defer_build=True)


class Valve(ValveType):
    """
    leaf {{block(Component)}} that halts or controls the flow of a liquid,
    gas, or other material through a passage, pipe, inlet, or outlet.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Vat(VatType):
    """
    leaf {{block(Component)}} generally composed of an open container.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class VibrationType(SensorType):
    """
    {{block(Component)}} composed of a sensor or an instrument that
    measures the amount and/or frequency of vibration within a system.
    {{block(Vibration)}} was **DEPRECATED** in *MTConnect Version 1.2* and
    was replaced by {{block(Displacement)}}, {{block(Frequency)}} etc.
    """

    model_config = ConfigDict(defer_build=True)


class WasteDisposalType(AuxiliaryType):
    """
    {{block(Auxiliary)}} that removes manufacturing byproducts from a piece
    of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class Water(WaterType):
    """
    leaf {{block(Component)}} composed of $$H_2 O$$.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Wire(WireType):
    """
    leaf {{block(Component)}} composed of a string like piece or filament
    of relatively rigid or flexible material provided in a variety of
    diameters.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class WorkEnvelopeType(SystemType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Workpiece(WorkpieceType):
    """
    leaf {{block(Component)}} composed of an object or material on which a
    form of work is performed.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Actuator(ActuatorType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class AirHandler(AirHandlerType):
    """
    system that circulates air or regulates airflow without altering
    temperature or humidity.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class AutomaticToolChangerType(ToolingDeliveryType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class BarFeederType(LoaderType):
    """
    {{block(Loader)}} that delivers bar stock to a piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class Controller(ControllerType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Coolant(CoolantType):
    """
    {{block(System)}} that provides distribution and management of fluids
    that remove heat from a piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Cooling(CoolingType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class CuttingTorch(CuttingTorchType):
    """
    {{block(Auxiliary)}} that employs a concentrated flame to both sever
    materials through cutting and fuse them together in joining processes.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Deposition(DepositionType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Dielectric(DielectricType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Electric(ElectricType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Electrode(ElectrodeType):
    """
    {{block(Auxiliary)}} that is used for many electrical discharge
    manufacturing processes like welding.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Enclosure(EnclosureType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class EndEffector(EndEffectorType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class FeatureOccurrenceType(PartOccurrenceType):
    """
    {{block(Component)}} that provides information related to an individual
    {{term(feature)}}.
    """

    model_config = ConfigDict(defer_build=True)


class Feeder(FeederType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class GangToolBarType(ToolingDeliveryType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Heating(HeatingType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class HydraulicType(ActuatorType):
    """
    {{block(System)}} that provides movement and distribution of
    pressurized liquid throughout the piece of equipment.
    """

    model_config = ConfigDict(defer_build=True)


class Linear(LinearType):
    """
    {{block(Component Types::Axis)}} that provides prismatic motion along a
    fixed axis.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Link(LinkType):
    """
    {{block(Structure)}} that provides a connection between
    {{block(Component)}} entities.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Loader(LoaderType):
    """
    {{block(Auxiliary)}} that provides movement and distribution of
    materials, parts, tooling, and other items to or from a piece of
    equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Lubrication(LubricationType):
    """
    {{block(System)}} that provides distribution and management of fluids
    used to lubricate portions of the piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class MtconnectDevicesType(BaseModel):
    """
    root entity of an {{term(MTConnectDevices Response Document)}} that
    contains the {{term(Device Information Model)}} of one or more
    {{block(Device)}} entities.
    ![MTConnectDevices](figures/MTConnectDevices.png "MTConnectDevices"){:
    width="0.8"} &gt; Note: Additional properties of
    {{block(MTConnectDevices)}} **MAY** be defined for schema and namespace
    declaration.

    See {{sect(Schema and Namespace Declaration Information)}} for an
    {{term(XML)}} example.

    :ivar header: provides information from an {{term(agent)}} defining
        version information, storage capacity, and parameters associated
        with the data management within the {{term(agent)}}.
    :ivar devices: This section provides semantic information for the
        {{block(Device)}} types.
    """

    class Meta:
        name = "MTConnectDevicesType"

    model_config = ConfigDict(defer_build=True)
    header: HeaderType = field(
        metadata={
            "name": "Header",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        }
    )
    devices: DevicesType = field(
        metadata={
            "name": "Devices",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        }
    )


class Material(MaterialType):
    """
    {{block(Resource)}} composed of material that is consumed or used by
    the piece of equipment for production of parts, materials, or other
    types of goods.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class PartOccurrence(PartOccurrenceType):
    """
    Example.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Personnel(PersonnelType):
    """
    {{block(Resource)}} composed of an individual or individuals who either
    control, support, or otherwise interface with a piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class PinTool(PinToolType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class PneumaticType(ActuatorType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Pressure(PressureType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ProcessOccurrence(ProcessOccurrenceType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ProcessPower(ProcessPowerType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Protective(ProtectiveType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Rotary(RotaryType):
    """
    {{block(Component Types::Axis)}} that provides rotation about a fixed
    axis.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Spindle(SpindleType):
    """
    {{block(Component)}} that provides an axis of rotation for the purpose
    of rapidly rotating a part or a tool to provide sufficient surface
    speed for cutting operations. {{block(Spindle)}} was **DEPRECATED** in
    *MTConnect Version 1.1* and was replaced by {{block(RotaryMode)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class StockType(MaterialType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Thermostat(ThermostatType):
    """
    {{block(Component)}} composed of a sensor or an instrument that
    measures temperature. {{block(Thermostat)}} was **DEPRECATED** in
    *MTConnect Version 1.2* and was replaced by {{block(Temperature)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ToolHolder(ToolHolderType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ToolMagazineType(ToolingDeliveryType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class ToolRackType(ToolingDeliveryType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class ToolingDelivery(ToolingDeliveryType):
    """
    {{block(Auxiliary)}} that manages, positions, stores, and delivers
    tooling within a piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class TurretType(ToolingDeliveryType):
    """
    Description.
    """

    model_config = ConfigDict(defer_build=True)


class Vacuum(VacuumType):
    """
    {{block(System)}} that evacuates gases and liquids from an enclosed and
    sealed space to a controlled negative pressure or a molecular density
    below the prevailing atmospheric level.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Vibration(VibrationType):
    """
    {{block(Component)}} composed of a sensor or an instrument that
    measures the amount and/or frequency of vibration within a system.
    {{block(Vibration)}} was **DEPRECATED** in *MTConnect Version 1.2* and
    was replaced by {{block(Displacement)}}, {{block(Frequency)}} etc.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class WasteDisposal(WasteDisposalType):
    """
    {{block(Auxiliary)}} that removes manufacturing byproducts from a piece
    of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class WorkEnvelope(WorkEnvelopeType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class AutomaticToolChanger(AutomaticToolChangerType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class BarFeeder(BarFeederType):
    """
    {{block(Loader)}} that delivers bar stock to a piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class FeatureOccurrence(FeatureOccurrenceType):
    """
    {{block(Component)}} that provides information related to an individual
    {{term(feature)}}.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class GangToolBar(GangToolBarType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Hydraulic(HydraulicType):
    """
    {{block(System)}} that provides movement and distribution of
    pressurized liquid throughout the piece of equipment.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class MtconnectDevices(MtconnectDevicesType):
    """
    root entity of an {{term(MTConnectDevices Response Document)}} that
    contains the {{term(Device Information Model)}} of one or more
    {{block(Device)}} entities.
    ![MTConnectDevices](figures/MTConnectDevices.png "MTConnectDevices"){:
    width="0.8"} &gt; Note: Additional properties of
    {{block(MTConnectDevices)}} **MAY** be defined for schema and namespace
    declaration.

    See {{sect(Schema and Namespace Declaration Information)}} for an
    {{term(XML)}} example.
    """

    class Meta:
        name = "MTConnectDevices"
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Pneumatic(PneumaticType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Stock(StockType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ToolMagazine(ToolMagazineType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ToolRack(ToolRackType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class Turret(TurretType):
    """
    Description.
    """

    class Meta:
        namespace = "urn:mtconnect.org:MTConnectDevices:2.7"

    model_config = ConfigDict(defer_build=True)


class ComponentsType(BaseModel):
    """
    {{block(Components)}} groups one or more {{block(Component)}} entities.
    """

    model_config = ConfigDict(defer_build=True)
    agent: list[Agent] = field(
        default_factory=list,
        metadata={
            "name": "Agent",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    device: list[Device] = field(
        default_factory=list,
        metadata={
            "name": "Device",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    controllers: list[Controllers] = field(
        default_factory=list,
        metadata={
            "name": "Controllers",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    materials: list[Materials] = field(
        default_factory=list,
        metadata={
            "name": "Materials",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    parts: list[Parts] = field(
        default_factory=list,
        metadata={
            "name": "Parts",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    processes: list[Processes] = field(
        default_factory=list,
        metadata={
            "name": "Processes",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    axes: list[Axes] = field(
        default_factory=list,
        metadata={
            "name": "Axes",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    resources: list[Resources] = field(
        default_factory=list,
        metadata={
            "name": "Resources",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    adapters: list[Adapters] = field(
        default_factory=list,
        metadata={
            "name": "Adapters",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    systems: list[Systems] = field(
        default_factory=list,
        metadata={
            "name": "Systems",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    auxiliaries: list[Auxiliaries] = field(
        default_factory=list,
        metadata={
            "name": "Auxiliaries",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    interfaces: list[Interfaces] = field(
        default_factory=list,
        metadata={
            "name": "Interfaces",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    structures: list[Structures] = field(
        default_factory=list,
        metadata={
            "name": "Structures",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    workpiece: list[Workpiece] = field(
        default_factory=list,
        metadata={
            "name": "Workpiece",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    linear_position_feedback: list[LinearPositionFeedback] = field(
        default_factory=list,
        metadata={
            "name": "LinearPositionFeedback",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    clamp: list[Clamp] = field(
        default_factory=list,
        metadata={
            "name": "Clamp",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    pump: list[Pump] = field(
        default_factory=list,
        metadata={
            "name": "Pump",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    galvanomotor: list[Galvanomotor] = field(
        default_factory=list,
        metadata={
            "name": "Galvanomotor",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    extrusion_unit: list[ExtrusionUnit] = field(
        default_factory=list,
        metadata={
            "name": "ExtrusionUnit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    motor: list[Motor] = field(
        default_factory=list,
        metadata={
            "name": "Motor",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    circuit_breaker: list[CircuitBreaker] = field(
        default_factory=list,
        metadata={
            "name": "CircuitBreaker",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    storage_battery: list[StorageBattery] = field(
        default_factory=list,
        metadata={
            "name": "StorageBattery",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    encoder: list[Encoder] = field(
        default_factory=list,
        metadata={
            "name": "Encoder",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    tank: list[Tank] = field(
        default_factory=list,
        metadata={
            "name": "Tank",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    exposure_unit: list[ExposureUnit] = field(
        default_factory=list,
        metadata={
            "name": "ExposureUnit",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    transformer: list[Transformer] = field(
        default_factory=list,
        metadata={
            "name": "Transformer",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    pot: list[Pot] = field(
        default_factory=list,
        metadata={
            "name": "Pot",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    valve: list[Valve] = field(
        default_factory=list,
        metadata={
            "name": "Valve",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    chopper: list[Chopper] = field(
        default_factory=list,
        metadata={
            "name": "Chopper",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    table: list[Table] = field(
        default_factory=list,
        metadata={
            "name": "Table",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    oil: list[Oil] = field(
        default_factory=list,
        metadata={
            "name": "Oil",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    expired_pot: list[ExpiredPot] = field(
        default_factory=list,
        metadata={
            "name": "ExpiredPot",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    vat: list[Vat] = field(
        default_factory=list,
        metadata={
            "name": "Vat",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    amplifier: list[Amplifier] = field(
        default_factory=list,
        metadata={
            "name": "Amplifier",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    chain: list[Chain] = field(
        default_factory=list,
        metadata={
            "name": "Chain",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    return_pot: list[ReturnPot] = field(
        default_factory=list,
        metadata={
            "name": "ReturnPot",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    filter: list[Filter] = field(
        default_factory=list,
        metadata={
            "name": "Filter",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    reel: list[Reel] = field(
        default_factory=list,
        metadata={
            "name": "Reel",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    transfer_arm: list[TransferArm] = field(
        default_factory=list,
        metadata={
            "name": "TransferArm",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    belt: list[Belt] = field(
        default_factory=list,
        metadata={
            "name": "Belt",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    hopper: list[Hopper] = field(
        default_factory=list,
        metadata={
            "name": "Hopper",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    station: list[Station] = field(
        default_factory=list,
        metadata={
            "name": "Station",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    brake: list[Brake] = field(
        default_factory=list,
        metadata={
            "name": "Brake",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    staging_pot: list[StagingPot] = field(
        default_factory=list,
        metadata={
            "name": "StagingPot",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    gripper: list[Gripper] = field(
        default_factory=list,
        metadata={
            "name": "Gripper",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    removal_pot: list[RemovalPot] = field(
        default_factory=list,
        metadata={
            "name": "RemovalPot",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    cooling_tower: list[CoolingTower] = field(
        default_factory=list,
        metadata={
            "name": "CoolingTower",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    sensing_element: list[SensingElement] = field(
        default_factory=list,
        metadata={
            "name": "SensingElement",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    wire: list[Wire] = field(
        default_factory=list,
        metadata={
            "name": "Wire",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    water: list[Water] = field(
        default_factory=list,
        metadata={
            "name": "Water",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    tensioner: list[Tensioner] = field(
        default_factory=list,
        metadata={
            "name": "Tensioner",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    switch: list[Switch] = field(
        default_factory=list,
        metadata={
            "name": "Switch",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    chute: list[Chute] = field(
        default_factory=list,
        metadata={
            "name": "Chute",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    compressor: list[Compressor] = field(
        default_factory=list,
        metadata={
            "name": "Compressor",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    ballscrew: list[Ballscrew] = field(
        default_factory=list,
        metadata={
            "name": "Ballscrew",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    drain: list[Drain] = field(
        default_factory=list,
        metadata={
            "name": "Drain",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    power_supply: list[PowerSupply] = field(
        default_factory=list,
        metadata={
            "name": "PowerSupply",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    transfer_pot: list[TransferPot] = field(
        default_factory=list,
        metadata={
            "name": "TransferPot",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    pulley: list[Pulley] = field(
        default_factory=list,
        metadata={
            "name": "Pulley",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    spreader: list[Spreader] = field(
        default_factory=list,
        metadata={
            "name": "Spreader",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    fan: list[Fan] = field(
        default_factory=list,
        metadata={
            "name": "Fan",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    chuck: list[Chuck] = field(
        default_factory=list,
        metadata={
            "name": "Chuck",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    lock: list[Lock] = field(
        default_factory=list,
        metadata={
            "name": "Lock",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    feature_occurrence: list[FeatureOccurrence] = field(
        default_factory=list,
        metadata={
            "name": "FeatureOccurrence",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    part_occurrence: list[PartOccurrence] = field(
        default_factory=list,
        metadata={
            "name": "PartOccurrence",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    part: list[Part] = field(
        default_factory=list,
        metadata={
            "name": "Part",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    adapter: list[Adapter] = field(
        default_factory=list,
        metadata={
            "name": "Adapter",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    process_occurrence: list[ProcessOccurrence] = field(
        default_factory=list,
        metadata={
            "name": "ProcessOccurrence",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    process: list[Process] = field(
        default_factory=list,
        metadata={
            "name": "Process",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    link: list[Link] = field(
        default_factory=list,
        metadata={
            "name": "Link",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    structure: list[Structure] = field(
        default_factory=list,
        metadata={
            "name": "Structure",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    pin_tool: list[PinTool] = field(
        default_factory=list,
        metadata={
            "name": "PinTool",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    tool_holder: list[ToolHolder] = field(
        default_factory=list,
        metadata={
            "name": "ToolHolder",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    air_handler: list[AirHandler] = field(
        default_factory=list,
        metadata={
            "name": "AirHandler",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    work_envelope: list[WorkEnvelope] = field(
        default_factory=list,
        metadata={
            "name": "WorkEnvelope",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    pressure: list[Pressure] = field(
        default_factory=list,
        metadata={
            "name": "Pressure",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    cooling: list[Cooling] = field(
        default_factory=list,
        metadata={
            "name": "Cooling",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    vacuum: list[Vacuum] = field(
        default_factory=list,
        metadata={
            "name": "Vacuum",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    heating: list[Heating] = field(
        default_factory=list,
        metadata={
            "name": "Heating",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    protective: list[Protective] = field(
        default_factory=list,
        metadata={
            "name": "Protective",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    process_power: list[ProcessPower] = field(
        default_factory=list,
        metadata={
            "name": "ProcessPower",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    lubrication: list[Lubrication] = field(
        default_factory=list,
        metadata={
            "name": "Lubrication",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    feeder: list[Feeder] = field(
        default_factory=list,
        metadata={
            "name": "Feeder",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    end_effector: list[EndEffector] = field(
        default_factory=list,
        metadata={
            "name": "EndEffector",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    enclosure: list[Enclosure] = field(
        default_factory=list,
        metadata={
            "name": "Enclosure",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    electric: list[Electric] = field(
        default_factory=list,
        metadata={
            "name": "Electric",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    dielectric: list[Dielectric] = field(
        default_factory=list,
        metadata={
            "name": "Dielectric",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    coolant: list[Coolant] = field(
        default_factory=list,
        metadata={
            "name": "Coolant",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    controller: list[Controller] = field(
        default_factory=list,
        metadata={
            "name": "Controller",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    pneumatic: list[Pneumatic] = field(
        default_factory=list,
        metadata={
            "name": "Pneumatic",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    hydraulic: list[Hydraulic] = field(
        default_factory=list,
        metadata={
            "name": "Hydraulic",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    actuator: list[Actuator] = field(
        default_factory=list,
        metadata={
            "name": "Actuator",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    system: list[System] = field(
        default_factory=list,
        metadata={
            "name": "System",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    vibration: list[Vibration] = field(
        default_factory=list,
        metadata={
            "name": "Vibration",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    thermostat: list[Thermostat] = field(
        default_factory=list,
        metadata={
            "name": "Thermostat",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    sensor: list[Sensor] = field(
        default_factory=list,
        metadata={
            "name": "Sensor",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    personnel: list[Personnel] = field(
        default_factory=list,
        metadata={
            "name": "Personnel",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    stock: list[Stock] = field(
        default_factory=list,
        metadata={
            "name": "Stock",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    material: list[Material] = field(
        default_factory=list,
        metadata={
            "name": "Material",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    resource: list[Resource] = field(
        default_factory=list,
        metadata={
            "name": "Resource",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    power: list[Power] = field(
        default_factory=list,
        metadata={
            "name": "Power",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    path: list[Path] = field(
        default_factory=list,
        metadata={
            "name": "Path",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    environmental: list[Environmental] = field(
        default_factory=list,
        metadata={
            "name": "Environmental",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    door: list[Door] = field(
        default_factory=list,
        metadata={
            "name": "Door",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    spindle: list[Spindle] = field(
        default_factory=list,
        metadata={
            "name": "Spindle",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    rotary: list[Rotary] = field(
        default_factory=list,
        metadata={
            "name": "Rotary",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    linear: list[Linear] = field(
        default_factory=list,
        metadata={
            "name": "Linear",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    axis: list[Axis] = field(
        default_factory=list,
        metadata={
            "name": "Axis",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    cutting_torch: list[CuttingTorch] = field(
        default_factory=list,
        metadata={
            "name": "CuttingTorch",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    electrode: list[Electrode] = field(
        default_factory=list,
        metadata={
            "name": "Electrode",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    waste_disposal: list[WasteDisposal] = field(
        default_factory=list,
        metadata={
            "name": "WasteDisposal",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    turret: list[Turret] = field(
        default_factory=list,
        metadata={
            "name": "Turret",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    tool_rack: list[ToolRack] = field(
        default_factory=list,
        metadata={
            "name": "ToolRack",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    tool_magazine: list[ToolMagazine] = field(
        default_factory=list,
        metadata={
            "name": "ToolMagazine",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    automatic_tool_changer: list[AutomaticToolChanger] = field(
        default_factory=list,
        metadata={
            "name": "AutomaticToolChanger",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    gang_tool_bar: list[GangToolBar] = field(
        default_factory=list,
        metadata={
            "name": "GangToolBar",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    tooling_delivery: list[ToolingDelivery] = field(
        default_factory=list,
        metadata={
            "name": "ToolingDelivery",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    bar_feeder: list[BarFeeder] = field(
        default_factory=list,
        metadata={
            "name": "BarFeeder",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    loader: list[Loader] = field(
        default_factory=list,
        metadata={
            "name": "Loader",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    deposition: list[Deposition] = field(
        default_factory=list,
        metadata={
            "name": "Deposition",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    auxiliary: list[Auxiliary] = field(
        default_factory=list,
        metadata={
            "name": "Auxiliary",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
    common_component: list[CommonComponent] = field(
        default_factory=list,
        metadata={
            "name": "CommonComponent",
            "type": "Element",
            "namespace": "urn:mtconnect.org:MTConnectDevices:2.7",
        },
    )
