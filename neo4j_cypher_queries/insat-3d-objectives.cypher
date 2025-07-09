MERGE (insat:SatelliteSystem {name: 'INSAT', type: 'Indian National Satellite System', purpose: 'multipurpose'})
MERGE (org:Organization {name: 'ISRO'})
MERGE (region:Location {name: 'Asia Pacific Region', type: 'Geographic'})
MERGE (mission:Objective {name: 'Operational, Environmental and Storm Warning System'})
MERGE (transponder:Component {name: 'transponder', type: 'Communication'})
MERGE (bss:Service {name: 'Broadcast Satellite Services', type: 'Communication'})
MERGE (sband:FrequencyBand {name: 'S-band', type: 'Frequency'})

MERGE (insat)-[:LAUNCHED_BY]->(org)
MERGE (insat)-[:SERVES_REGION]->(region)
MERGE (insat)-[:HAS_OBJECTIVE]->(mission)
MERGE (insat)-[:INCORPORATES_COMPONENT]->(transponder)
MERGE (insat)-[:PROVIDES_SERVICE]->(bss)
MERGE (bss)-[:USES_FREQUENCY_BAND]->(sband);

MERGE (mission)-[:INCLUDES_ACTIVITY]->(activity1:Activity {name: 'Monitor earth\'s surface and carry out oceanic observations'})
MERGE (mission)-[:INCLUDES_ACTIVITY]->(activity2:Activity {name: 'Provide data dissemination capabilities'});