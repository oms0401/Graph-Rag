MERGE (s:Spacecraft {name: 'SARAL-AltiKa', launch_mass_kg: 450})
MERGE (platform:Component {name: 'SSB/IMS-2', type: 'Platform'})
MERGE (payload:Module {name: 'SARAL/AltiKa specific payload module'})

MERGE (s)-[:CONSISTS_OF]->(platform)
MERGE (s)-[:CONSISTS_OF]->(payload)

MERGE (bus:Component {name: 'IMS-2', type: 'Small Satellite Bus'})
MERGE (dev_isro:Organization {name: 'ISRO'})
MERGE (dev_cnes:Organization {name: 'CNES'})

MERGE (bus)-[:DEVELOPED_BY]->(dev_isro)
MERGE (payload)-[:DEVELOPED_BY]->(dev_cnes)

MERGE (altimeter:Instrument {name: 'Altimeter', type: 'mission instrument'})
MERGE (radiometer:Instrument {name: 'dual frequency microwave radiometer', type: 'correction instrument'})
MERGE (doris:Instrument {name: 'DORIS', type: 'radio positioning system'})
MERGE (lra:Component {name: 'Laser Reflector Array', type: 'Calibration System'})
MERGE (arg:Instrument {name: 'ARGOS-3', type: 'mission instrument'})

MERGE (payload)-[:INCLUDES_COMPONENT]->(altimeter)
MERGE (payload)-[:INCLUDES_COMPONENT]->(radiometer)
MERGE (payload)-[:INCLUDES_COMPONENT]->(doris)
MERGE (payload)-[:INCLUDES_COMPONENT]->(lra)
MERGE (payload)-[:INCLUDES_COMPONENT]->(arg)

MERGE (altimeter)-[:PROVIDED_BY]->(dev_cnes)
MERGE (radiometer)-[:PROVIDED_BY]->(dev_cnes)
MERGE (doris)-[:PROVIDED_BY]->(dev_cnes)
MERGE (lra)-[:PROVIDED_BY]->(dev_cnes);