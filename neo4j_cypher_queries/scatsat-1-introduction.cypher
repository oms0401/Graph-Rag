MERGE (s:Satellite {name: 'SCATSAT-1', type: 'Ocean and Weather Studies', mass_kg: 377})
MERGE (org:Organization {name: 'Indian Space Research Organisation'})
MERGE (launch_vehicle:LaunchVehicle {name: 'Polar Satellite Launch Vehicle', flight_number: 37, mission_code: 'PSLV-C35', configuration: 'XL'})
MERGE (orbit_sso:Orbit {name: 'Polar Sun Synchronous Orbit', altitude_km: 720})
MERGE (orbit_polar:Orbit {name: 'Polar Orbit', altitude_km: 670})
MERGE (launch_date:Date {iso_value: '2016-09-26'})
MERGE (launch_time:Time {value: '09:12'})
MERGE (location:Location {name: 'Satish Dhawan Space Centre', type: 'Launch Site'})
MERGE (pad:LaunchPad {name: 'First Launch Pad'})

MERGE (s)-[:LAUNCHED_BY]->(org)
MERGE (org)-[:LAUNCHED]->(launch_vehicle)
MERGE (launch_vehicle)-[:LAUNCHED_SATELLITE]->(s)
MERGE (s)-[:PLACED_IN_ORBIT]->(orbit_sso)
MERGE (launch_vehicle)-[:LAUNCHED_FROM]->(location)
MERGE (launch_vehicle)-[:LAUNCHED_ON]->(launch_date)
MERGE (launch_vehicle)-[:LAUNCHED_AT_TIME]->(launch_time)
MERGE (launch_vehicle)-[:LAUNCHED_FROM_PAD]->(pad);

MERGE (co_passenger1:Satellite {name: 'Satellite from Algeria'})
MERGE (co_passenger2:Satellite {name: 'Satellite from Canada'})
MERGE (co_passenger3:Satellite {name: 'Satellite from USA'})
MERGE (co_passenger4:Satellite {name: 'Satellite from Indian University 1'})
MERGE (co_passenger5:Satellite {name: 'Satellite from Indian University 2'})
MERGE (s)-[:HAS_CO_PASSENGER]->(co_passenger1)
MERGE (s)-[:HAS_CO_PASSENGER]->(co_passenger2)
MERGE (s)-[:HAS_CO_PASSENGER]->(co_passenger3)
MERGE (s)-[:HAS_CO_PASSENGER]->(co_passenger4)
MERGE (s)-[:HAS_CO_PASSENGER]->(co_passenger5);

MERGE (launch_vehicle)-[:PLACED_PAYLOADS_IN]->(orbit_sso)
MERGE (co_passenger4)-[:PLACED_IN_ORBIT]->(orbit_polar)
MERGE (co_passenger5)-[:PLACED_IN_ORBIT]->(orbit_polar);