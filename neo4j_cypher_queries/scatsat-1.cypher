MERGE (s:Satellite {name: 'SCATSAT-1'})
MERGE (l:Launch {name: 'PSLV-C35', date: '2016-09-26'})
MERGE (loc:Location {name: 'Satish Dhawan Space Centre', type: 'Launch Site'})
MERGE (org:Organization {name: 'SAC-ISRO'})
MERGE (payload:Payload {name: 'Ku-band Pencil Beam scatterometer (SCAT)', type: 'Scatterometer'})

MERGE (s)-[:LAUNCHED_BY]->(l)
MERGE (l)-[:LAUNCHED_FROM]->(loc)
MERGE (s)-[:CARRIES_PAYLOAD]->(payload)
MERGE (payload)-[:DEVELOPED_BY]->(org);