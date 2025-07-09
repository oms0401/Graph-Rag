MERGE (s:Spacecraft {name: 'INSAT-3D'})
SET s.type = 'meteorological',
    s.configuration = 'I-2K bus',
    s.lift_mass_kg = 2100,
    s.launch_date = '2013-07-26',
    s.expected_mission_life_years = 7,
    s.goal = 'to provide an operational, environmental & storm warning system to protect life & property and also to monitor earth\'s surface and carryout oceanic observations and also provide data dissemination capabilities';

MERGE (p1:Payload {name: 'Meteorological', type: 'Meteorological'})
MERGE (p2:Payload {name: 'Data Relay Transponder', type: 'Communication'})
MERGE (p3:Payload {name: 'Satellite Aided Search and Rescue', type: 'Rescue'})

MERGE (s)-[:HAS_PAYLOAD]->(p1)
MERGE (s)-[:HAS_PAYLOAD]->(p2)
MERGE (s)-[:HAS_PAYLOAD]->(p3);

MERGE (imager:Instrument {name: 'Imager'})
MERGE (sounder:Instrument {name: 'SOUNDER'})

MERGE (p1)-[:INCLUDES_INSTRUMENT]->(imager)
MERGE (p1)-[:INCLUDES_INSTRUMENT]->(sounder);

MERGE (param1:Parameter {name: 'Outgoing Longwave Radiation', type: 'Geophysical'})
MERGE (param2:Parameter {name: 'Quantitative Precipitation Estimation', type: 'Geophysical'})
MERGE (param3:Parameter {name: 'Sea Surface Temperature', type: 'Geophysical'})
MERGE (param4:Parameter {name: 'Snow Cover', type: 'Geophysical'})
MERGE (param5:Parameter {name: 'Snow Depth', type: 'Geophysical'})
MERGE (param6:Parameter {name: 'Fire', type: 'Geophysical'})
MERGE (param7:Parameter {name: 'Smoke', type: 'Geophysical'})
MERGE (param8:Parameter {name: 'Aerosol', type: 'Geophysical'})
MERGE (param9:Parameter {name: 'Cloud Motion Vector', type: 'Geophysical'})
MERGE (param10:Parameter {name: 'Water Vapour Wind', type: 'Geophysical'})
MERGE (param11:Parameter {name: 'Upper Tropospheric Humidity', type: 'Geophysical'})
MERGE (param12:Parameter {name: 'Temperature', type: 'Geophysical'})
MERGE (param13:Parameter {name: 'Humidity Profile', type: 'Geophysical'})
MERGE (param14:Parameter {name: 'Total Ozone', type: 'Geophysical'})
MERGE (param15:Parameter {name: 'Fog', type: 'Geophysical'})
MERGE (param16:Parameter {name: 'Visible Wind Vector', type: 'Geophysical'})

MERGE (imager)-[:PROVIDES_DATA_FOR]->(param1)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param2)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param3)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param4)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param5)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param6)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param7)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param8)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param9)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param10)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param11)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param12)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param13)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param14)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param15)
MERGE (imager)-[:PROVIDES_DATA_FOR]->(param16)

MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param1)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param2)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param3)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param4)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param5)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param6)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param7)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param8)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param9)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param10)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param11)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param12)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param13)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param14)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param15)
MERGE (sounder)-[:PROVIDES_DATA_FOR]->(param16);