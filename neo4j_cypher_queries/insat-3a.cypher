MERGE (s:Satellite {name: 'INSAT-3A'})
SET s.type = 'multipurpose',
    s.services = ['telecommunications', 'television broadcasting', 'meteorological', 'search & rescue'];

MERGE (tp:Transponder {count: 24})
MERGE (normal_c_band:Transponder {name: 'Normal C-band', count: 12, coverage: ['expanded', 'India']})
MERGE (extended_c_band:Transponder {name: 'Extended C-band', count: 6, coverage: ['India']})
MERGE (ku_band:Transponder {name: 'Ku-band', count: 6, coverage: ['India']})
MERGE (ku_beacon:Transponder {name: 'Ku-band beacon'})

MERGE (s)-[:CARRIES_TRANSPONDERS]->(tp)
MERGE (tp)-[:INCLUDES]->(normal_c_band)
MERGE (tp)-[:INCLUDES]->(extended_c_band)
MERGE (tp)-[:INCLUDES]->(ku_band)
MERGE (s)-[:CARRIES_TRANSPONDER]->(ku_beacon);

MERGE (vhr:Instrument {name: 'Very High Resolution Radiometer', type: 'meteorological', resolution_km: 2})
MERGE (thermal:Band {name: 'thermal infrared', resolution_km: 8})
MERGE (water_vapor:Band {name: 'water vapour', resolution_km: 8})
MERGE (ccd:Instrument {name: 'Charge Coupled Device', type: 'camera', resolution_km: 1})

MERGE (s)-[:CARRIES_INSTRUMENT]->(vhr)
MERGE (vhr)-[:HAS_BAND]->(thermal)
MERGE (vhr)-[:HAS_BAND]->(water_vapor)
MERGE (s)-[:CARRIES_INSTRUMENT]->(ccd);

MERGE (drt:Payload {name: 'Data Relay Transponder', band: 'UHF'})
MERGE (s)-[:CARRIES_PAYLOAD]->(drt);

MERGE (sasr:Payload {name: 'Satellite Aided Search and Rescue'})
MERGE (s)-[:CARRIES_PAYLOAD]->(sasr);

MERGE (gto:Orbit {name: 'Geosynchronous Transfer Orbit', type: 'GTO'})
MERGE (s)-[:LAUNCHED_INTO]->(gto)
SET gto.perigee_km = 200,
    gto.apogee_km = 35980;

MERGE (launch_vehicle:LaunchVehicle {name: 'European Ariane-5G'})
MERGE (s)-[:LAUNCHED_BY]->(launch_vehicle);

MERGE (motor:Component {name: 'apogee motor'})
MERGE (s)-[:MANEUVERED_BY]->(motor);

MERGE (solar_array:Component {name: 'solar array'})
MERGE (antennae:Component {name: 'antennae'})
MERGE (solar_sail:Component {name: 'solar sail'})

MERGE (s)-[:DEPLOYS]->(solar_array)
MERGE (s)-[:DEPLOYS]->(antennae)
MERGE (s)-[:DEPLOYS]->(solar_sail);

MERGE (checkout:Process {name: 'in-orbit checkout'})
MERGE (s)-[:COMMISSIONED_AFTER]->(checkout);