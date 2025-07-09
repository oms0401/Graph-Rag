MERGE (s:Satellite {name: 'Megha-Tropiques'})
SET s.mission_type = 'Indo-French Joint Satellite Mission',
    s.objective = 'studying the water cycle and energy exchanges in the tropics',
    s.orbit_type = 'circular',
    s.inclination_deg = 20,
    s.viewing_capabilities = 'day, night and all-weather',
    s.passes_over_location = 'India';

MERGE (phen:Phenomenon {name: 'water cycle', type: 'Hydrological'})
MERGE (phen2:Phenomenon {name: 'energy exchanges', type: 'Atmospheric'})
MERGE (param1:Parameter {name: 'condensed water in clouds', type: 'Hydrometeor'})
MERGE (param2:Parameter {name: 'water vapour in the atmosphere', type: 'Gas'})
MERGE (param3:Parameter {name: 'precipitation', type: 'Hydrometeor'})
MERGE (param4:Parameter {name: 'evaporation', type: 'Hydrological Process'})
MERGE (app:Application {name: 'climate research'})
MERGE (app2:Application {name: 'prediction models'})

MERGE (s)-[:HAS_OBJECTIVE]->(phen)
MERGE (s)-[:HAS_OBJECTIVE]->(phen2)
MERGE (s)-[:PROVIDES_DATA_ON]->(param1)
MERGE (s)-[:PROVIDES_DATA_ON]->(param2)
MERGE (s)-[:PROVIDES_DATA_ON]->(param3)
MERGE (s)-[:PROVIDES_DATA_ON]->(param4)
MERGE (s)-[:AIDS_IN]->(app)
MERGE (s)-[:AIDS_IN]->(app2);