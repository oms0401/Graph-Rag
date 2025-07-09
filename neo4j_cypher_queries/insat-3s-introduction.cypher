MERGE (s:Spacecraft {name: 'INSAT-3DS'})
SET s.type = 'meteorological',
    s.configuration = 'I-2K bus',
    s.lift_mass_tonnes = 420,
    s.launch_date = '2024-02-17',
    s.expected_mission_life_years = 7,
    s.mission_goal = 'to provide an operational, environmental & storm warning system to protect life & property and also to monitor earth\'s surface and carryout oceanic observations and also provide data dissemination capabilities';

MERGE (p1:Payload {name: 'Meteorological', type: 'MET'})
MERGE (p2:Payload {name: 'Data Relay Transponder', type: 'DRT'})
MERGE (p3:Payload {name: 'Satellite Aided Search and Rescue', type: 'SAS&R'})

MERGE (s)-[:HAS_PAYLOAD]->(p1)
MERGE (s)-[:HAS_PAYLOAD]->(p2)
MERGE (s)-[:HAS_PAYLOAD]->(p3);

MERGE (imager:Instrument {name: 'Imager'})
MERGE (sounder:Instrument {name: 'SOUNDER'})

MERGE (p1)-[:INCLUDES_INSTRUMENT]->(imager)
MERGE (p1)-[:INCLUDES_INSTRUMENT]->(sounder);

MERGE (param1:Parameter {name: 'Outgoing Longwave Radiation', abbreviation: 'OLR'})
MERGE (param2:Parameter {name: 'Quantitative Precipitation Estimation', abbreviation: 'QPE'})
MERGE (param3:Parameter {name: 'Sea Surface Temperature', abbreviation: 'SST'})
MERGE (param4:Parameter {name: 'Snow Cover'})
MERGE (param5:Parameter {name: 'Snow Depth'})
MERGE (param6:Parameter {name: 'Fire'})
MERGE (param7:Parameter {name: 'Smoke'})
MERGE (param8:Parameter {name: 'Aerosol'})
MERGE (param9:Parameter {name: 'Cloud Motion Vector', abbreviation: 'CMV'})
MERGE (param10:Parameter {name: 'Water Vapour Wind', abbreviation: 'WVW'})
MERGE (param11:Parameter {name: 'Upper Tropospheric Humidity', abbreviation: 'UTH'})
MERGE (param12:Parameter {name: 'Temperature'})
MERGE (param13:Parameter {name: 'Humidity Profile'})
MERGE (param14:Parameter {name: 'Total Ozone'})
MERGE (param15:Parameter {name: 'Fog'})
MERGE (param16:Parameter {name: 'Visible Wind Vector'})

MERGE (imager)-[:PROVIDES_PARAMETERS]->(param1)
MERGE (imager)-[:PROVIDES_PARAMETERS]->(param2)
MERGE (imager)-[:PROVIDES_PARAMETERS]->(param3)
MERGE (imager)-[:PROVIDES_PARAMETERS]->(param4)
MERGE (imager)-[:PROVIDES_PARAMETERS]->(param5)
MERGE (imager)-[:PROVIDES_PARAMETERS]->(param6)
MERGE (imager)-[:PROVIDES_PARAMETERS]->(param7)
MERGE (imager)-[:PROVIDES_PARAMETERS]->(param8)
MERGE (sounder)-[:PROVIDES_PARAMETERS]->(param9)
MERGE (sounder)-[:PROVIDES_PARAMETERS]->(param10)
MERGE (sounder)-[:PROVIDES_PARAMETERS]->(param11)
MERGE (sounder)-[:PROVIDES_PARAMETERS]->(param12)
MERGE (sounder)-[:PROVIDES_PARAMETERS]->(param13)
MERGE (sounder)-[:PROVIDES_PARAMETERS]->(param14)
MERGE (sounder)-[:PROVIDES_PARAMETERS]->(param15)
MERGE (sounder)-[:PROVIDES_PARAMETERS]->(param16);