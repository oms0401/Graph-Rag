MERGE (s:Spacecraft {name: 'INSAT-3D'})
SET s.stabilization = 'momentum-biased 3-axis stabilized',
    s.pointing_control_system = 'star trackers',
    s.launch_mass_kg = 2000,
    s.dry_mass_kg = 907,
    s.design_life_years = 7.7,
    s.altitude_km = 35786,
    s.longitude_deg_east = 82;

MERGE (o:Orbit {name: 'Geostationary'}) MERGE (s)-[:ORBITS_IN]->(o);

MERGE (imager:Instrument {name: 'Imager', function: 'meteorological', channels_count: 6})
MERGE (sounder:Instrument {name: 'IR Sounder', function: 'meteorological', channels_count: 18})
MERGE (drt:Payload {name: 'Data Relay Transponder'})
MERGE (sarp:Payload {name: 'Satellite based Search & Rescue Payload'})

MERGE (s)-[:CARRIES_INSTRUMENT]->(imager)
MERGE (s)-[:CARRIES_INSTRUMENT]->(sounder)
MERGE (s)-[:CARRIES_PAYLOAD]->(drt)
MERGE (s)-[:CARRIES_PAYLOAD]->(sarp);

MERGE (im_vis:Channel {name: 'Visible'}) MERGE (imager)-[:HAS_CHANNEL]->(im_vis);
MERGE (im_midIR:Channel {name: 'Middle Infrared'}) MERGE (imager)-[:HAS_CHANNEL]->(im_midIR);
MERGE (im_wv:Channel {name: 'Water Vapor'}) MERGE (imager)-[:HAS_CHANNEL]->(im_wv);
MERGE (im_thIR:Channel {name: 'Thermal Infrared'}) MERGE (imager)-[:HAS_CHANNEL]->(im_thIR);
MERGE (im_swir:Channel {name: 'SWIR'}) MERGE (imager)-[:HAS_CHANNEL]->(im_swir);

MERGE (so_ir_bands:Channel {name: 'three IR bands', count: 3}) MERGE (sounder)-[:HAS_CHANNEL]->(so_ir_bands);
MERGE (so_vis_band:Channel {name: 'visible band'}) MERGE (sounder)-[:HAS_CHANNEL]->(so_vis_band);

MERGE (cooler:Component {name: 'passive radiant cooler', type: 'CoolingSystem'})
MERGE (detectors:Component {name: 'infrared detectors', type: 'Detector'})
MERGE (filter_wheel:Component {name: 'sounder filter wheel', type: 'FilterWheel'})

MERGE (imager)-[:HAS_COMPONENT]->(detectors)
MERGE (sounder)-[:HAS_COMPONENT]->(detectors)
MERGE (sounder)-[:HAS_COMPONENT]->(filter_wheel)
MERGE (detectors)-[:COOLED_BY]->(cooler);

MERGE (temp_95K:Temperature {value_kelvin: 95}) MERGE (bol:MeasurementPoint {name: 'BOL'})
MERGE (detectors)-[:MAINTAINED_AT_TEMPERATURE]->(temp_95K) MERGE (temp_95K)-[:AT_POINT]->(bol);

MERGE (temp_100K:Temperature {value_kelvin: 100}) MERGE (eol:MeasurementPoint {name: 'EOL'})
MERGE (detectors)-[:MAINTAINED_AT_TEMPERATURE]->(temp_100K) MERGE (temp_100K)-[:AT_POINT]->(eol);

MERGE (temp_213K:Temperature {value_kelvin: 213})
MERGE (cooler)-[:MAINTAINS_TEMPERATURE_OF]->(filter_wheel)
MERGE (filter_wheel)-[:MAINTAINED_AT_TEMPERATURE]->(temp_213K);

MERGE (tech1:Technology {name: 'on-the-fly correction of scan mirror pointing errors'})
MERGE (tech2:Technology {name: 'biannual yaw rotation of the spacecraft'})
MERGE (tech3:Technology {name: 'micro-stepping SADA'})
MERGE (tech4:Technology {name: 'star sensors'})
MERGE (tech5:Technology {name: 'integrated bus management unit'})

MERGE (s)-[:INCORPORATES_TECHNOLOGY]->(tech1)
MERGE (s)-[:INCORPORATES_TECHNOLOGY]->(tech2)
MERGE (s)-[:INCORPORATES_TECHNOLOGY]->(tech3)
MERGE (s)-[:INCORPORATES_TECHNOLOGY]->(tech4)
MERGE (s)-[:INCORPORATES_TECHNOLOGY]->(tech5);