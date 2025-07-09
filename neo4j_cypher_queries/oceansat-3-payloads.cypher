MERGE (s:Satellite {name: 'OCEANSAT-3'})
MERGE (p:Payload {name: 'Scientific Payload'})

MERGE (scat:Instrument {name: 'Ku-band Scatterometer', abbreviation: 'SCAT-3', type: 'Scatterometer'})
MERGE (ocm:Instrument {name: '13-band Ocean Colour Monitor', abbreviation: 'OCM-3', type: 'Multi-spectral Camera'})
MERGE (sstm:Instrument {name: '2-band Sea Surface Temperature Monitor', abbreviation: 'SSTM', type: 'Temperature Monitor'})
MERGE (argos:Payload {name: 'ARGOS', organization: 'CNES French Space Agency'})

MERGE (s)-[:HAS_PAYLOAD]->(p)
MERGE (p)-[:CONTAINS_INSTRUMENT]->(scat)
MERGE (p)-[:CONTAINS_INSTRUMENT]->(ocm)
MERGE (p)-[:CONTAINS_INSTRUMENT]->(sstm)
MERGE (p)-[:CONTAINS_PAYLOAD]->(argos);

MERGE (ocm)-[:HAS_PROPERTY]->(bands:Property {name: 'spectral bands', count: 13, range: '10-20 nm'})
MERGE (ocm)-[:HAS_PROPERTY]->(fov:Property {name: 'instantaneous geometric field of view', value_m: 368})
MERGE (ocm)-[:HAS_PROPERTY]->(swath:Property {name: 'swath', value_km: 15000})
MERGE (ocm)-[:HAS_PROPERTY]->(tilt:Property {name: 'tilt angle', value_deg: 20})

MERGE (ocm)-[:OPERATES_IN_MODE]->(lac:Mode {name: 'Local Area Coverage', resolution_m: 366})
MERGE (ocm)-[:OPERATES_IN_MODE]->(gac:Mode {name: 'Global Area Coverage', resolution_km: 1.1})

MERGE (scat)-[:HAS_PROPERTY]->(ku_band:Property {name: 'frequency', type: 'Ku-band'})
MERGE (scat)-[:HAS_PROPERTY]->(swath_scat:Property {name: 'swath', value_km: 1400})
MERGE (scat)-[:HAS_PROPERTY]->(high_res_mode:Property {name: 'high-resolution mode', resolution_km: 12.5})
MERGE (scat)-[:HAS_PROPERTY]->(experimental_mode:Property {name: 'experimental mode', resolution_km: 5})
MERGE (scat)-[:HAS_PROPERTY]->(accuracy:Property {name: 'accuracy', speed_rmse_m_s: 1.5, direction_deg: 15})
MERGE (scat)-[:HAS_PROPERTY]->(noise_equivalent:Property {name: 'Noise Equivalent s0', value_dB: -39.5})

MERGE (sstm)-[:HAS_PROPERTY]->(band_count:Property {name: 'band count', count: 2});