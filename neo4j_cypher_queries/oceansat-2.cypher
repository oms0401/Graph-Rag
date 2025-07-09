MERGE (s:Satellite {name: 'Oceansat-2'})
SET s.launch_date = '2009-09-23',
    s.launch_vehicle = 'PSLV-C14',
    s.heritage = 'previous IRS missions',
    s.continuity_of_service = 'Oceansat-1 (IRS-P4)',
    s.application_potential = 'enhanced';

MERGE (lc:Location {name: 'Satish Dhawan Space Centre', type: 'Launch Site'})
MERGE (s)-[:LAUNCHED_FROM]->(lc);

MERGE (ocm:Payload {name: 'Ocean Colour Monitor'})
MERGE (scat:Payload {name: 'Ku-band Pencil Beam scatterometer', abbreviation: 'SCAT'})
MERGE (rosa:Payload {name: 'Radio Occultation Sounder for Atmosphere', abbreviation: 'ROSA'})
MERGE (isa:Organization {name: 'Italian Space Agency'})
MERGE (isro:Organization {name: 'ISRO'})

MERGE (s)-[:CARRIES_PAYLOAD]->(ocm)
MERGE (s)-[:CARRIES_PAYLOAD]->(scat)
MERGE (s)-[:CARRIES_PAYLOAD]->(rosa)
MERGE (scat)-[:DEVELOPED_BY]->(isro)
MERGE (rosa)-[:DEVELOPED_BY]->(isa);