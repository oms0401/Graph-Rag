MERGE (m:Mission {name: 'SARAL/AltiKa'})
MERGE (org1:Organization {name: 'CNES'})
MERGE (org2:Organization {name: 'ISRO'})
MERGE (sys:System {name: 'altimetry system', type: 'Oceanographic'})
MERGE (data_sys:DataSystem {name: 'ARGOS Data Collecting System'})
MERGE (tech:Technique {name: 'Radar altimetry', type: 'Measurement'})
MERGE (phen:Phenomenon {name: 'ocean circulation', type: 'Oceanographic'})
MERGE (phen2:Phenomenon {name: 'sea surface elevation', type: 'Oceanographic'})
MERGE (sat1:Satellite {name: 'TOPEX/Poseidon'})
MERGE (sat2:Satellite {name: 'Jason series'})
MERGE (sat3:Satellite {name: 'ERS1-2'})
MERGE (sat4:Satellite {name: 'GFO'})
MERGE (sat5:Satellite {name: 'ENVISAT'})
MERGE (altimeter:Component {name: 'Ka-band altimeter', frequency_GHz: 35.75, bandwidth_MHz: 500})
MERGE (drawback:Property {name: 'sensitivity to rain', effect: 'signal attenuation'})
MERGE (app1:Application {name: 'operational oceanography'})
MERGE (app2:Application {name: 'climate understanding'})
MERGE (app3:Application {name: 'forecasting capabilities'})

MERGE (m)-[:RESULTS_FROM]->(org1)
MERGE (m)-[:RESULTS_FROM]->(org2)
MERGE (m)-[:USES_SYSTEM]->(sys)
MERGE (m)-[:USES_DATA_SYSTEM]->(data_sys)
MERGE (m)-[:USES_TECHNIQUE]->(tech)
MERGE (m)-[:STUDIES]->(phen)
MERGE (m)-[:STUDIES]->(phen2)
MERGE (m)-[:COMPLEMENTED_BY]->(sat1)
MERGE (m)-[:COMPLEMENTED_BY]->(sat2)
MERGE (m)-[:COMPLEMENTED_BY]->(sat3)
MERGE (m)-[:COMPLEMENTED_BY]->(sat4)
MERGE (m)-[:COMPLEMENTED_BY]->(sat5)
MERGE (m)-[:INCORPORATES_COMPONENT]->(altimeter)
MERGE (altimeter)-[:HAS_PROPERTY]->(drawback)
MERGE (m)-[:CONTRIBUTES_TO]->(app1)
MERGE (m)-[:CONTRIBUTES_TO]->(app2)
MERGE (m)-[:CONTRIBUTES_TO]->(app3);