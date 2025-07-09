MERGE (s:Spacecraft {name: 'OCEANSAT-3'})
SET s.launch_date = '2022-11-26',
    s.launch_site = 'SHAR, Sriharikota',
    s.launch_vehicle = 'PSLV – C54',
    s.orbit = 'Polar Sun Synchronous',
    s.altitude_km = 740,
    s.repetitivity_days = 2,
    s.local_time_eq_crossing = '12 noon';

MERGE (ocm:Payload {name: 'OCM'})
MERGE (scat:Payload {name: 'SCAT'})
MERGE (sstm:Payload {name: 'SSTM'})
MERGE (argos:Payload {name: 'ARGOS'})

MERGE (s)-[:CARRIES_PAYLOAD]->(ocm)
MERGE (s)-[:CARRIES_PAYLOAD]->(scat)
MERGE (s)-[:CARRIES_PAYLOAD]->(sstm)
MERGE (s)-[:CARRIES_PAYLOAD]->(argos);