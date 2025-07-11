MERGE (insat:Satellite {name: 'INSAT', type: 'Geo-stationary'})
MERGE (insat3d:Satellite {name: 'INSAT-3D', type: 'Geosynchronous'})
MERGE (org:Organization {name: 'ISRO'})
MERGE (region:Location {name: 'Asia Pacific Region', type: 'Geographic'})
MERGE (facility_hassan:Location {name: 'Master Control Facility, Hassan', type: 'Control Facility'})
MERGE (facility_bhopal:Location {name: 'Master Control Facility, Bhopal', type: 'Control Facility'})
MERGE (payload_imager:Instrument {name: 'Imager', type: 'Meteorological'})
MERGE (payload_sounder:Instrument {name: 'Sounder', type: 'Meteorological'})
MERGE (objective:Objective {description: 'operational, environmental and storm warning system'})
MERGE (capabilities:Capability {description: 'data dissemination capabilities'})
MERGE (service:BSS {name: 'Broadcast Satellite Services', type: 'Service'})
MERGE (data_acquisition:Process {name: 'Ground receiving system', step: 1})
MERGE (data_reception:Process {name: 'Data Reception (DR) system', step: 2})
MERGE (data_processing:Process {name: 'Data Processing (DP) system', step: 3})
MERGE (product_generation:Process {name: 'Product generation and Dissemination system', step: 4})
MERGE (location:Location {name: 'Space Applications Centre, Bopal Campus, Ahmedabad, India', type: 'Data Processing Centre'})

MERGE (insat)-[:LAUNCHED_BY]->(org)
MERGE (insat)-[:HAS_PAYLOAD]->(payload_imager)
MERGE (insat)-[:HAS_PAYLOAD]->(payload_sounder)
MERGE (insat)-[:MONITORED_BY]->(facility_hassan)
MERGE (insat)-[:MONITORED_BY]->(facility_bhopal)
MERGE (insat3d)-[:PART_OF]->(insat)
MERGE (insat3d)-[:HAS_OBJECTIVE]->(objective)
MERGE (insat3d)-[:HAS_CAPABILITY]->(capabilities)
MERGE (insat3d)-[:PROVIDES_SERVICE]->(service)
MERGE (insat3d)-[:USES_PROCESS]->(data_acquisition)
MERGE (insat3d)-[:USES_PROCESS]->(data_reception)
MERGE (insat3d)-[:USES_PROCESS]->(data_processing)
MERGE (insat3d)-[:USES_PROCESS]->(product_generation)
MERGE (insat3d)-[:LOCATED_AT]->(location);