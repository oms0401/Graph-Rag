MERGE (s:Satellite {name: 'Kalpana-1', type: 'meteorological'})
SET s.launch_date = '2002-09-12',
    s.original_name = 'MetSat-1',
    s.renaming_date = '2003-02-05',
    s.renamed_by = 'Atal Bihari Vajpayee',
    s.memory_of = 'Kalpana Chawla';

MERGE (org:Organization {name: 'Indian Space Research Organisation'})
MERGE (launch_vehicle:LaunchVehicle {name: 'Polar Satellite Launch Vehicle', type: 'Launch Vehicle'})
MERGE (orbit:Orbit {name: 'Geo-stationary'})
MERGE (vhr:Instrument {name: 'Very High Resolution Radiometer', type: 'Scanning Radiometer'})
MERGE (drt:Payload {name: 'Data Relay Transponder'})

MERGE (s)-[:LAUNCHED_BY]->(org)
MERGE (s)-[:LAUNCHED_ON]->(launch_vehicle)
MERGE (s)-[:ORBITS_IN]->(orbit)
MERGE (s)-[:HAS_INSTRUMENT]->(vhr)
MERGE (s)-[:CARRIES_PAYLOAD]->(drt);

MERGE (met:Satellite {name: 'MetSat-1', type: 'precursor'})
MERGE (insat:System {name: 'INSAT', type: 'future system'})

MERGE (met)-[:IS_PRECURSOR_TO]->(insat)
MERGE (s)-[:IS_PART_OF]->(insat);