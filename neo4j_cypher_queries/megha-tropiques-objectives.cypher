MERGE (m:Mission {name: 'Megha-Tropiques'})
SET m.objective = 'study convective systems influencing tropical weather and climate',
    m.duration_years = 3,
    m.orbit_type = 'non-sun synchronous';

MERGE (wc:WaterCycleElement {name: 'atmospheric water cycle', type: 'Atmospheric'})
MERGE (wv:Parameter {name: 'water vapour', type: 'Atmospheric'})
MERGE (clouds:Parameter {name: 'clouds', type: 'Atmospheric'})
MERGE (condensed_water:Parameter {name: 'condensed water in clouds', type: 'Atmospheric'})
MERGE (precipitation:Parameter {name: 'precipitation', type: 'Atmospheric'})
MERGE (evaporation:Parameter {name: 'evaporation', type: 'Atmospheric'})
MERGE (radiative_budget:Parameter {name: 'radiative budget', type: 'Atmospheric'})
MERGE (orb:Orbit {name: 'non-sun synchronous', type: 'Orbit'})
MERGE (altitude:Property {name: 'altitude', value_km: 867})
MERGE (inclination:Property {name: 'inclination', value_deg: 20})
MERGE (period:Property {name: 'period', value_minutes: 102.16})
MERGE (repetitivity:Property {name: 'repetitivity', value: '97 orbits in 7 days'})
MERGE (orbits_per_day:Property {name: 'orbits per day', value: 14})

MERGE (m)-[:HAS_OBJECTIVE]->(wc)
MERGE (wc)-[:INCLUDES]->(wv)
MERGE (wc)-[:INCLUDES]->(clouds)
MERGE (wc)-[:INCLUDES]->(condensed_water)
MERGE (wc)-[:INCLUDES]->(precipitation)
MERGE (wc)-[:INCLUDES]->(evaporation)
MERGE (m)-[:MEASURES]->(radiative_budget)
MERGE (m)-[:LAUNCHED_IN]->(orb)
MERGE (m)-[:HAS_PROPERTY]->(altitude)
MERGE (m)-[:HAS_PROPERTY]->(inclination)
MERGE (m)-[:HAS_PROPERTY]->(period)
MERGE (m)-[:HAS_PROPERTY]->(repetitivity)
MERGE (m)-[:HAS_PROPERTY]->(orbits_per_day);

MERGE (madras:Payload {name: 'MADRAS', type: 'microwave imager'})
MERGE (saphir:Payload {name: 'SAPHIR', type: 'scanning radiometer instrument'})
MERGE (scarab:Payload {name: 'SCARAB', type: 'scanner for radiative budget'})
MERGE (gps:Payload {name: 'GPS occultation receiver', type: 'atmospheric studies'})

MERGE (m)-[:CARRIES_PAYLOAD]->(madras)
MERGE (m)-[:CARRIES_PAYLOAD]->(saphir)
MERGE (m)-[:CARRIES_PAYLOAD]->(scarab)
MERGE (m)-[:CARRIES_PAYLOAD]->(gps);