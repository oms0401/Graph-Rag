MERGE (s:Spacecraft {name: 'Oceansat-2'})
SET s.envisaged_service = 'continuity of operational services of Oceansat-1',
    s.launch_date = '2009-09-23',
    s.launch_site = 'SHAR, Sriharikota',
    s.launch_vehicle = 'PSLV - C14',
    s.orbit = 'Polar Sun Synchronous',
    s.altitude_km = 720,
    s.inclination_deg = 98.28,
    s.period_minutes = 99.31,
    s.repetitivity_days = 2,
    s.mass_at_lift_off_kg = 960,
    s.power_generation_w = 1360,
    s.solar_panel_area_sq_m = 15,
    s.battery_capacity_Ah = 24,
    s.mission_life_years = 5;

MERGE (p1:Payload {name: 'OCM'})
MERGE (p2:Payload {name: 'SCAT'})
MERGE (p3:Payload {name: 'ROSA'})

MERGE (s)-[:CARRIES_PAYLOAD]->(p1)
MERGE (s)-[:CARRIES_PAYLOAD]->(p2)
MERGE (s)-[:CARRIES_PAYLOAD]->(p3);