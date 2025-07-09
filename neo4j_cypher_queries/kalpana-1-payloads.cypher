MERGE (s:Satellite {name: 'KALPANA-1'})
MERGE (vhr:Instrument {name: 'VHRR', type: 'imager'})
MERGE (sac:Organization {name: 'SAC', location: 'Ahmedabad, India'})
MERGE (dcs:System {name: 'Data Collection System', type: 'ISRO'})
MERGE (drt:Payload {name: 'Data Relay Transponder'})

MERGE (vhr)-[:DEVELOPED_BY]->(sac)
MERGE (s)-[:CARRIES_INSTRUMENT]->(vhr)
MERGE (s)-[:INCLUDES_PAYLOAD]->(drt)
MERGE (drt)-[:PART_OF]->(dcs);

MERGE (mode_full:Mode {name: 'Full frame mode', coverage: '20° North-South x 20° East-West', repetition_time_min: 33})
MERGE (mode_normal:Mode {name: 'Normal frame mode', coverage: '14° N-S x 20° E-W', repetition_time_min: 23})
MERGE (mode_sector:Mode {name: 'Sector frame mode', coverage: '4.5° N-S x 20° E-W', repetition_time_min: 23})

MERGE (vhr)-[:OPERATES_IN_MODE]->(mode_full)
MERGE (vhr)-[:OPERATES_IN_MODE]->(mode_normal)
MERGE (vhr)-[:OPERATES_IN_MODE]->(mode_sector);

MERGE (det_vis:Channel {name: 'VIS', detectors_count: 8, dynamic_range: '0-100%', noise_performance: '6:1 min at 2.5% albedo'})
MERGE (det_wv:Channel {name: 'Water Vapor (WV)', detectors_count: 2, dynamic_range: '4-340 K', noise_performance: '0.25 K at 300 K'})
MERGE (det_tir:Channel {name: 'TIR', detectors_count: 2, dynamic_range: '4-320 K', noise_performance: '0.5 K at 300 K'})

MERGE (vhr)-[:HAS_CHANNEL]->(det_vis)
MERGE (vhr)-[:HAS_CHANNEL]->(det_wv)
MERGE (vhr)-[:HAS_CHANNEL]->(det_tir);

MERGE (opt_sys:Component {name: 'optical system', type: 'imaging'})
MERGE (telescope:Component {name: 'Ritchey-Chretien telescope', aperture_cm: 20})
MERGE (scan_mirror:Component {name: 'beryllium scan mirror', angle_deg: 45})

MERGE (vhr)-[:INCLUDES_COMPONENT]->(opt_sys)
MERGE (opt_sys)-[:INCLUDES_COMPONENT]->(telescope)
MERGE (opt_sys)-[:INCLUDES_COMPONENT]->(scan_mirror);

MERGE (rf_comm:Communication {name: 'RF communication', uplink_frequency_mhz: 402.75, downlink_frequency_mhz: 4506.05, bandwidth_khz: 100, eirp_dbw: 21})
MERGE (drt)-[:HAS_COMMUNICATION]->(rf_comm);