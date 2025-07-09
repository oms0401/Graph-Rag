MERGE (m:Mission {name: 'KALPANA-1', type: 'Metsat'})
MERGE (obj1:Objectives {description: 'Establish a small satellite I-1000 bus system for meteorological payload'})
MERGE (obj2:Objectives {description: 'Collection of weather data from low cost unattended data collection platforms'})
MERGE (platform:Platform {name: 'unattended data collection platforms', type: 'DataCollection'})
MERGE (sat:Spacecraft {name: 'Metsat spacecraft', type: 'Meteorological'})
MERGE (lv:LaunchVehicle {name: 'upgraded existing polar satellite launch vehicle', type: 'Launch'})
MERGE (orbit:Orbit {name: 'geo-synchronous transfer orbit', type: 'GTO'})

MERGE (m)-[:HAS_OBJECTIVE]->(obj1)
MERGE (m)-[:HAS_OBJECTIVE]->(obj2)
MERGE (m)-[:COLLECTS_DATA_FROM]->(platform)
MERGE (m)-[:CONFIGURES]->(sat)
MERGE (sat)-[:WITHIN_LIFT_OFF_MASS_CONSTRAINTS]->(lv)
MERGE (lv)-[:DEPLOYS_IN]->(orbit);