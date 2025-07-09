MERGE (s:Satellite {name: 'INSAT-3D'})
MERGE (met_payload:Payload {name: 'Meteorological Payload', type: 'Meteorological'})
MERGE (drt:Payload {name: 'Data Relay Transponder', type: 'Communication'})
MERGE (sars:Payload {name: 'Satellite Aided Search and Rescue', type: 'Communication'})

MERGE (s)-[:HAS_PAYLOAD]->(met_payload)
MERGE (s)-[:HAS_PAYLOAD]->(drt)
MERGE (s)-[:HAS_PAYLOAD]->(sars);

MERGE (imager:Instrument {name: 'IMAGER'})
MERGE (sounder:Instrument {name: 'SOUNDER'})

MERGE (met_payload)-[:INCLUDES_INSTRUMENT]->(imager)
MERGE (met_payload)-[:INCLUDES_INSTRUMENT]->(sounder);

MERGE (imager)-[:PROVIDES_CAPABILITY]->(cap:Capability {description: 'imaging capability of the earth disc from geostationary altitude'})
MERGE (imager)-[:HAS_BAND]->(vis:Band {name: 'Visible', wavelength_range: '0.52 - 0.72 µm', resolution_km: 1})
MERGE (imager)-[:HAS_BAND]->(swir:Band {name: 'SWIR', wavelength_range: '1.55 - 1.70 µm', resolution_km: 1})
MERGE (imager)-[:HAS_BAND]->(mir:Band {name: 'MIR', wavelength_range: '3.80 - 4.00 µm', resolution_km: 4})
MERGE (imager)-[:HAS_BAND]->(wv:Band {name: 'Water Vapor', wavelength_range: '6.50 - 7.00 µm', resolution_km: 8})
MERGE (imager)-[:HAS_BAND]->(tir1:Band {name: 'TIR-1', wavelength_range: '10.2 - 11.2 µm', resolution_km: 4})
MERGE (imager)-[:HAS_BAND]->(tir2:Band {name: 'TIR-2', wavelength_range: '11.5 - 12.5 µm', resolution_km: 4})

MERGE (sounder)-[:HAS_CHANNEL]->(sounder_vis:Channel {name: 'Visible', count: 1})
MERGE (sounder)-[:HAS_CHANNEL]->(sounder_ir:Channel {name: 'Infrared', count: 18})

MERGE (imager)-[:HAS_PROPERTY]->(aperture:Property {name: 'Telescope aperture', value: '310 mm diameter'})
MERGE (imager)-[:HAS_PROPERTY]->(num_bands:Property {name: 'Number of bands', value: 6})
MERGE (imager)-[:HAS_PROPERTY]->(spatial_res:Property {name: 'Spatial resolution', value: '1 km for VIS and SWIR, 4 km for MIR, 8 km for WV, 4 km for TIR-1 and TIR-2'})
MERGE (imager)-[:HAS_PROPERTY]->(ifov:Property {name: 'IFOV', value: '28 µrad for VIS and SWIR, 112 µrad for MWIR, TIR-1, & TIR-2, 224 µrad for WV'})
MERGE (imager)-[:HAS_PROPERTY]->(sampling_interval:Property {name: 'Sampling interval', value: '1.75 samples / IFOV for VIS, SWIR, MIR & TIR-1/-2, 3.5 samples / IFOV for WV'})
MERGE (imager)-[:HAS_PROPERTY]->(scan_rate:Property {name: 'Scan rate', value: '200º/s'})
MERGE (imager)-[:HAS_PROPERTY]->(downlink_rate:Property {name: 'Downlink data rate', value: '4.0 Mbit/s'})

MERGE (sounder)-[:HAS_PROPERTY]->(sounder_aperture:Property {name: 'Telescope aperture', value: '310 mm diameter'})
MERGE (sounder)-[:HAS_PROPERTY]->(sounder_num_bands:Property {name: 'Number of bands', value: 19})
MERGE (sounder)-[:HAS_PROPERTY]->(sounder_ifov:Property {name: 'IFOV', value: '280 µrad x 280 µrad'})
MERGE (sounder)-[:HAS_PROPERTY]->(sounder_sampling_interval:Property {name: 'Sampling interval', value: '280 µrad E-W / N-S'})
MERGE (sounder)-[:HAS_PROPERTY]->(sounder_frame_time:Property {name: 'Frame time', value: '160 minutes for 6000 km x 6000 km area sounding'})
MERGE (sounder)-[:HAS_PROPERTY]->(sounder_downlink_rate:Property {name: 'Downlink data rate', value: '40 kbit/s'});

MERGE (s)-[:HAS_TOTAL_MASS]->(mass:Property {value: 2000, unit: 'kg'})
MERGE (drt)-[:HAS_PROPERTY]->(drt_mass:Property {value: 70, unit: 'kg'})