MERGE (s:Satellite {name: 'INSAT-3DR'})
MERGE (met_payload:Payload {name: 'Meteorological Payload', type: 'Meteorological'})
MERGE (drt:Payload {name: 'Data Relay Transponder', type: 'Communication'})
MERGE (sars:Payload {name: 'Satellite Aided Search and Rescue', type: 'Communication'})

MERGE (s)-[:HAS_PAYLOAD]->(met_payload)
MERGE (s)-[:HAS_PAYLOAD]->(drt)
MERGE (s)-[:HAS_PAYLOAD]->(sars);

MERGE (imager:Instrument {name: 'IMAGER', type: 'Meteorological'})
MERGE (sounder:Instrument {name: 'SOUNDER', type: 'Meteorological'})

MERGE (met_payload)-[:INCLUDES_INSTRUMENT]->(imager)
MERGE (met_payload)-[:INCLUDES_INSTRUMENT]->(sounder);

MERGE (imager)-[:PROVIDES_CAPABILITY]->(cap:Capability {description: 'imaging capability of the earth disc from geostationary altitude'})
MERGE (imager)-[:HAS_BAND]->(band1:Band {name: 'Visible', range: '0.52 - 0.72 µm', resolution_km: 1})
MERGE (imager)-[:HAS_BAND]->(band2:Band {name: 'SWIR', range: '1.55 - 1.70 µm', resolution_km: 1})
MERGE (imager)-[:HAS_BAND]->(band3:Band {name: 'MIR', range: '3.80 - 4.00 µm', resolution_km: 4})
MERGE (imager)-[:HAS_BAND]->(band4:Band {name: 'WV', range: '6.50 - 7.00 µm', resolution_km: 8})
MERGE (imager)-[:HAS_BAND]->(band5:Band {name: 'TIR-1', range: '10.2 - 11.2 µm', resolution_km: 4})
MERGE (imager)-[:HAS_BAND]->(band6:Band {name: 'TIR-2', range: '11.5 - 12.5 µm', resolution_km: 4})

MERGE (sounder)-[:HAS_BAND]->(sound_band1:Band {name: 'Visible', count: 1})
MERGE (sounder)-[:HAS_BAND]->(sound_band2:Band {name: 'Infrared', count: 18})

MERGE (imager)-[:HAS_PROPERTY]->(aperture:Property {name: 'Telescope aperture', value: '310 mm diameter'})
MERGE (imager)-[:HAS_PROPERTY]->(resolution:Property {name: 'Spatial resolution', value: '1 km for VIS and SWIR, 4 km for MWIR, 8 km for WV, 4 km for TIR-1 and TIR-2'})
MERGE (imager)-[:HAS_PROPERTY]->(sampling:Property {name: 'Sampling interval', value: '1.75 samples / IFOV for VIS, SWIR, MIR & TIR-1/-2; 3.5 samples / IFOV for WV'})
MERGE (imager)-[:HAS_PROPERTY]->(downlink:Property {name: 'Downlink data rate', value: '4.0 Mbit/s'})

MERGE (sounder)-[:HAS_PROPERTY]->(sound_aperture:Property {name: 'Telescope aperture', value: '310 mm diameter'})
MERGE (sounder)-[:HAS_PROPERTY]->(sound_resolution:Property {name: 'Ground resolution', value: '10 km'})
MERGE (sounder)-[:HAS_PROPERTY]->(sound_sampling:Property {name: 'Sampling interval', value: '280 µrad E-W / N-S'})
MERGE (sounder)-[:HAS_PROPERTY]->(sound_downlink:Property {name: 'Downlink data rate', value: '40 kbit/s'});

MERGE (s)-[:HAS_TOTAL_MASS]->(mass:Mass {value_kg: 2211})
MERGE (drt)-[:HAS_MASS_ALLOCATION]->(mass_allocation:MassAllocation {value_kg: 70});