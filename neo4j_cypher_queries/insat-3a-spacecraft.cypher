MERGE (s:Spacecraft {name: 'INSAT-3A'})
SET s.full_name = 'Indian National Satellite - 3A',
    s.description = '4th flight unit of the INSAT-3 series. Missions: operational meteorology and telecommunication',
    s.launch_mass_kg = 2950,
    s.dry_mass_kg = 1348,
    s.power_w = 3100,
    s.altitude_km = 35786,
    s.longitude_deg_east = 93.5,
    s.status = 'Operational',
    s.launch_date = '2003-04-10',
    s.eol_date = '>2015';

MERGE (o:Orbit {name: 'Geostationary'}) MERGE (s)-[:ORBITS_IN]->(o);