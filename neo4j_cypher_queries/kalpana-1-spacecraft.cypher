MERGE (s:Spacecraft {name: 'MetSat-1'})
SET s.development_organization = 'ISAC (ISRO Satellite Center)',
    s.location = 'Bangalore',
    s.launch_mass_kg = 1055,
    s.propellant_mass_kg = 560,
    s.dry_mass_kg = 495,
    s.design_life_years = 7,
    s.operational_goal_years = 10,
    s.stabilization = 'three-axis stabilized',
    s.control_subsystem = 'momentum biased control subsystem';

MERGE (bus:Component {name: 'I-1000 bus', type: 'Spacecraft Bus'})
MERGE (cfrp:Material {name: 'CFRP', type: 'Structural Element'})
MERGE (thrust_cylinder:Component {name: 'central structural thrust cylinder', type: 'Structural'})
MERGE (brackets:Component {name: 'structural brackets', type: 'Mounting'})
MERGE (momentum_wheels:Component {name: 'momentum wheels', type: 'Actuator'})
MERGE (reaction_wheel:Component {name: 'reaction wheel', type: 'Actuator'})
MERGE (rcs:Component {name: 'RCS', type: 'Control System'})
MERGE (earth_sensors:Component {name: 'earth sensors', type: 'Sensor'})
MERGE (sun_sensors:Component {name: 'sun sensors', type: 'Sensor'})
MERGE (lam:Component {name: 'LAM', type: 'Motor'})
MERGE (propulsion:Component {name: 'propulsion components', type: 'Propulsion'})
MERGE (active_thrusters:Component {name: 'active thrusters', type: 'Thruster'})
MERGE (bi_prop_system:Component {name: 'unified bi-propellant propulsion system', type: 'Propulsion'})
MERGE (mmh:Fuel {name: 'mono-methyl hydrazine', type: 'Fuel'})
MERGE (mon3:Oxidizer {name: 'mixed oxides of nitrogen (MON3)', type: 'Oxidizer'})
MERGE (thermal_control:Component {name: 'passive thermal control system', type: 'Thermal'})
MERGE (heaters:Component {name: 'bank of 112 heaters', type: 'Heating'})
MERGE (eps:Subsystem {name: 'Electrical Power Subsystem'})
MERGE (solar_array:Component {name: 'single panel solar array', type: 'Power Generation'})
MERGE (gaas:Material {name: 'GaAS solar cells', type: 'Material'})
MERGE (battery:Component {name: 'NiCd battery', capacity_Ah: 18})
MERGE (sada:Component {name: 'Solar Array Driver Assembly', type: 'Driver'})

MERGE (s)-[:HAS_COMPONENT]->(bus)
MERGE (bus)-[:MADE_OF]->(cfrp)
MERGE (s)-[:HAS_COMPONENT]->(thrust_cylinder)
MERGE (s)-[:HAS_COMPONENT]->(brackets)
MERGE (s)-[:HAS_COMPONENT]->(momentum_wheels)
MERGE (s)-[:HAS_COMPONENT]->(reaction_wheel)
MERGE (s)-[:HAS_COMPONENT]->(rcs)
MERGE (s)-[:HAS_COMPONENT]->(earth_sensors)
MERGE (s)-[:HAS_COMPONENT]->(sun_sensors)
MERGE (s)-[:HAS_COMPONENT]->(lam)
MERGE (s)-[:HAS_COMPONENT]->(propulsion)
MERGE (s)-[:HAS_COMPONENT]->(active_thrusters)
MERGE (s)-[:HAS_COMPONENT]->(bi_prop_system)
MERGE (bi_prop_system)-[:USES_FUEL]->(mmh)
MERGE (bi_prop_system)-[:USES_OXIDIZER]->(mon3)
MERGE (s)-[:HAS_COMPONENT]->(thermal_control)
MERGE (thermal_control)-[:HAS_COMPONENT]->(heaters)
MERGE (s)-[:HAS_SUBSYSTEM]->(eps)
MERGE (eps)-[:GENERATES_POWER_FROM]->(solar_array)
MERGE (solar_array)-[:MADE_OF]->(gaas)
MERGE (s)-[:HAS_COMPONENT]->(battery)
MERGE (s)-[:HAS_COMPONENT]->(sada);