MERGE (s:Satellite {name: 'INSAT-3A'})
MERGE (com_payload:Payload {name: 'Communication Payload'})
MERGE (met_payload:Payload {name: 'Meteorological Payload'})

MERGE (cband:Component {name: 'Normal C-band transponders', type: 'Transponder', channels_count: 12})
SET cband.coverage = 'Middle East to South East Asia', cband.eirp_dBW = 38
MERGE (s)-[:HAS_PAYLOAD]->(com_payload)
MERGE (com_payload)-[:INCLUDES_COMPONENT]->(cband)

MERGE (cband_india:Component {name: 'C-band transponders for India', type: 'Transponder', channels_count: 9})
SET cband_india.eirp_dBW = 36
MERGE (com_payload)-[:INCLUDES_COMPONENT]->(cband_india)

MERGE (extended_cband:Component {name: 'Extended C-band transponders', type: 'Transponder', channels_count: 6})
SET extended_cband.eirp_dBW = 36
MERGE (com_payload)-[:INCLUDES_COMPONENT]->(extended_cband)

MERGE (upper_extended_cband:Component {name: 'Upper extended C-band transponders', type: 'Transponder', channels_count: 6})
SET upper_extended_cband.eoC_eirp_dBW = 37
MERGE (com_payload)-[:INCLUDES_COMPONENT]->(upper_extended_cband)

MERGE (kuband:Component {name: 'Ku-band transponders', type: 'Transponder', channels_count: 6})
SET kuband.eirp_dBW = 48
MERGE (com_payload)-[:INCLUDES_COMPONENT]->(kuband)

MERGE (vhr:Component {name: 'Very High Resolution Radiometer', type: 'Imaging Instrument'})
SET vhr.imaging_capacity = 'visible, thermal infrared, Water Vapour',
    vhr.ground_resolutions = '2x2 km, 8x8 km, 8x8 km',
    vhr.wavelengths = '0.55-0.75 μm, 10.5-12.5 μm, 5.7-7.1 μm'
MERGE (met_payload)-[:INCLUDES_COMPONENT]->(vhr)

MERGE (ccd_camera:Component {name: 'CCD camera', type: 'Imaging Instrument'})
SET ccd_camera.ground_resolution = '1x1 km',
    ccd_camera.wavelengths = '0.63-0.69 μm, 0.77-0.86 μm, 1.55-1.70 μm'
MERGE (met_payload)-[:INCLUDES_COMPONENT]->(ccd_camera)

MERGE (drt:Component {name: 'Data Relay Transponder', type: 'Transponder'})
SET drt.global_receive_coverage = 'global',
    drt.uplink_MHz = 400,
    drt.downlink_MHz = 4500,
    drt.data_types = 'meteorological, hydrological, oceanographic'
MERGE (met_payload)-[:INCLUDES_COMPONENT]->(drt)

MERGE (sarp:Component {name: 'Satellite Aided Search and Rescue (SAS&R) SARP payload', type: 'Transponder'})
SET sarp.global_receive_coverage = 'global',
    sarp.uplink_MHz = 406,
    sarp.downlink_MHz = 4500,
    sarp.coverage = 'India',
    sarp.function = 'relay of signals from distress beacons'
MERGE (met_payload)-[:INCLUDES_COMPONENT]->(sarp);