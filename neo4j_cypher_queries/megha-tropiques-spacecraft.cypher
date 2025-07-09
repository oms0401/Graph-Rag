MERGE (s:Spacecraft {name: 'Megha-Tropiques'})
SET s.type = 'mini-satellite',
    s.developed_by = 'France and India',
    s.platform = 'Indian IRS platform';

MERGE (pim:Module {name: 'Payload Instrument Module', type: 'Housing'})
MERGE (bus:Module {name: 'Cuboid Spacecraft Bus', type: 'Bus'})

MERGE (s)-[:CONSISTS_OF]->(pim)
MERGE (s)-[:CONSISTS_OF]->(bus);

MERGE (madras:Payload {name: 'MADRAS', type: 'microwave imager'})
MERGE (saphir:Payload {name: 'SAPHIR', type: 'radiometer'})
MERGE (scarab:Payload {name: 'SCARAB', type: 'radiometer'})
MERGE (gps:Payload {name: 'Radio-occulation receiver GPS', type: 'receiver'})

MERGE (madras)-[:DEVELOPED_JOINTLY_BY]->(org1:Organization {name: 'CNES'})
MERGE (madras)-[:DEVELOPED_JOINTLY_BY]->(org2:Organization {name: 'ISRO'})
MERGE (saphir)-[:PROVIDED_BY]->(org1)
MERGE (scarab)-[:PROVIDED_BY]->(org1)
MERGE (gps)-[:PROVIDED_BY]->(org2)

MERGE (pim)-[:HOUSES_PAYLOAD]->(madras)
MERGE (pim)-[:HOUSES_PAYLOAD]->(saphir)
MERGE (pim)-[:HOUSES_PAYLOAD]->(scarab)
MERGE (pim)-[:HOUSES_PAYLOAD]->(gps);

MERGE (madras)-[:HAS_PROPERTY {name: 'incidence', description: 'constant'}]->(p:Property {name: 'polarization information'})
MERGE (madras)-[:HAS_PROPERTY {name: 'spot size', description: 'always the same'}]->(spot:Property {name: 'scan track', description: 'follows a circle arc'})
MERGE (saphir)-[:HAS_PROPERTY {name: 'scan track', description: 'perpendicular to satellite track'}]->(saphir_spot:Property {name: 'spots', description: 'enlarge with scan angle'})
MERGE (scarab)-[:HAS_PROPERTY {name: 'scan track', description: 'perpendicular to satellite track'}]->(scarab_spot:Property {name: 'spots', description: 'enlarge with scan angle'});

MERGE (bm:Component {name: 'Bus Management Unit', type: 'Management'})
MERGE (aocs:Component {name: 'Attitude Orientation Control System', type: 'ControlSystem'})
MERGE (thermal_control:Component {name: 'Thermal Control System', type: 'ControlSystem'})

MERGE (bus)-[:SUPPORTS]->(bm)
MERGE (bm)-[:MANAGES]->(aocs)
MERGE (bm)-[:MANAGES]->(thermal_control);

MERGE (bus)-[:HAS_MECHANISM {name: 'solar array deployment', description: 'after separation from launcher'}]->(mechanism1:Mechanism {name: 'MADRAS hold-down release mechanism'})
MERGE (bus)-[:HAS_MECHANISM {name: 'MADRAS scan mechanism', description: 'for scanning'}]->(mechanism2:Mechanism {name: 'MADRAS scan mechanism'});

MERGE (thermal_control)-[:HAS_PROPERTY {name: 'Optical Solar Reflectors', type: 'Material'}]->(reflectors:Property {name: 'Optical Solar Reflectors'})
MERGE (thermal_control)-[:HAS_PROPERTY {name: 'Multi-Layer Insulation', type: 'Material'}]->(mli:Property {name: 'Multi-Layer Insulation (MLI) blankets'});