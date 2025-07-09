MERGE (s:Spacecraft {name: 'INSAT-3DR'})
SET s.type = 'meteorological',
    s.configuration = 'I-2K bus',
    s.lift_mass_kg = 2211,
    s.launch_date = '2016-09-08',
    s.launch_vehicle = 'GSLV-F05',
    s.mission_goal = 'to provide an operational, environmental & storm warning system to protect life & property and also to monitor earth\'s surface and carryout oceanic observations and also provide data dissemination capabilities';

MERGE (p1:Payload {name: 'Meteorological', type: 'Meteorological'})
MERGE (p1_imager:Instrument {name: 'IMAGER'})
MERGE (p1_sounder:Instrument {name: 'SOUNDER'})
MERGE (p2:Payload {name: 'Data Relay Transponder', acronym: 'DRT'})
MERGE (p3:Payload {name: 'Satellite Aided Search and Rescue', acronym: 'SAS&R'})

MERGE (s)-[:HAS_PAYLOAD]->(p1)
MERGE (s)-[:HAS_PAYLOAD]->(p2)
MERGE (s)-[:HAS_PAYLOAD]->(p3)
MERGE (p1)-[:INCLUDES_INSTRUMENT]->(p1_imager)
MERGE (p1)-[:INCLUDES_INSTRUMENT]->(p1_sounder);

MERGE (param1:Parameter {name: 'Outgoing Longwave Radiation', acronym: 'OLR'})
MERGE (param2:Parameter {name: 'Quantitative Precipitation Estimation', acronym: 'QPE'})
MERGE (param3:Parameter {name: 'Sea Surface Temperature', acronym: 'SST'})
MERGE (param4:Parameter {name: 'Snow Cover'})
MERGE (param5:Parameter {name: 'Snow Depth'})
MERGE (param6:Parameter {name: 'Fire'})
MERGE (param7:Parameter {name: 'Smoke'})
MERGE (param8:Parameter {name: 'Aerosol'})
MERGE (param9:Parameter {name: 'Cloud Motion Vectors', acronym: 'CMV'})
MERGE (param10:Parameter {name: 'Water Vapour Winds', acronym: 'WVW'})
MERGE (param11:Parameter {name: 'Upper Tropospheric Humidity', acronym: 'UTH'})
MERGE (param12:Parameter {name: 'Temperature'})
MERGE (param13:Parameter {name: 'Humidity Profile'})
MERGE (param14:Parameter {name: 'Total Ozone'})
MERGE (param15:Parameter {name: 'Fog'})
MERGE (param16:Parameter {name: 'Visible Wind Vectors'})

MERGE (s)-[:EXTRACTS_PARAMETER]->(param1)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param2)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param3)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param4)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param5)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param6)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param7)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param8)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param9)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param10)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param11)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param12)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param13)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param14)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param15)
MERGE (s)-[:EXTRACTS_PARAMETER]->(param16);