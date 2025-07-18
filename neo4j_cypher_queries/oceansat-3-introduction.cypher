MERGE (s:Satellite {name: 'EOS-06', alias: 'Oceansat-3', launch_date: '2022-11-26', orbit_type: 'polar sun-synchronous', altitude_km: 740, generation: 'third'})
MERGE (org:Organization {name: 'ISRO'})
MERGE (series:SatelliteSeries {name: 'Oceansat', type: 'Satellite Series'})
MERGE (s)-[:PART_OF_SERIES]->(series)
MERGE (org)-[:LAUNCHED]->(s)

MERGE (instrument1:Instrument {name: '13-band Ocean Colour Monitor', alias: 'OCM-3'})
MERGE (instrument2:Instrument {name: 'Ku-band Scatterometer', alias: 'SCAT-3'})
MERGE (instrument3:Instrument {name: '2-channel Sea Surface Temperature Monitor', alias: 'SSTM'})
MERGE (instrument4:Instrument {name: 'ARGOS', provided_by: 'CNES'})

MERGE (s)-[:HAS_INSTRUMENT]->(instrument1)
MERGE (s)-[:HAS_INSTRUMENT]->(instrument2)
MERGE (s)-[:HAS_INSTRUMENT]->(instrument3)
MERGE (s)-[:HAS_INSTRUMENT]->(instrument4)

MERGE (problem:TechnicalProblem {description: 'technical problem in scan mechanism', status: 'not in operation'})
MERGE (instrument3)-[:HAS_PROBLEM]->(problem)

MERGE (app1:Application {name: 'Marine Resource Management'})
MERGE (app2:Application {name: 'Carbon & Nitrogen Cycling in Ocean'})
MERGE (app3:Application {name: 'Phytoplankton biodiversity'})
MERGE (app4:Application {name: 'Zooplankton & secondary production'})
MERGE (app5:Application {name: 'Algal bloom detection and monitoring'})
MERGE (app6:Application {name: 'Climate change studies'})
MERGE (app7:Application {name: 'Phytoplankton physiology'})
MERGE (app8:Application {name: 'Atmosphere-Ocean processes and biological productivity'})
MERGE (app9:Application {name: 'Sediment dynamics & fluvial fluxes in coastal ocean'})
MERGE (app10:Application {name: 'Submarine applications'})
MERGE (app11:Application {name: 'Biogeochemical modelling'})
MERGE (app12:Application {name: 'Air quality dynamics from Oceansat-3'})
MERGE (app13:Application {name: 'Coral reef ecosystem studies'})
MERGE (app14:Application {name: 'Land surface NDVI/LST'})
MERGE (app15:Application {name: 'Cryospheric Science'})
MERGE (app16:Application {name: 'Assimilation of ocean surface winds in NWP models'})
MERGE (app17:Application {name: 'Monsoon onset'})
MERGE (app18:Application {name: 'Cyclogenesis, track prediction, intensification'})
MERGE (app19:Application {name: 'Studies of ocean surface waves'})
MERGE (app20:Application {name: 'Modeling surface currents'})
MERGE (app21:Application {name: 'Assimilation of winds in coupled ocean circulations models'})
MERGE (app22:Application {name: 'Winds and its effect on oceanic mixed layer'})
MERGE (app23:Application {name: 'Air-sea interactions'})
MERGE (app24:Application {name: 'Large-scale soil moisture estimation'})
MERGE (app25:Application {name: 'Vegetation classifications and their growth assessment'})

MERGE (s)-[:ENABLES_APPLICATION]->(app1)
MERGE (s)-[:ENABLES_APPLICATION]->(app2)
MERGE (s)-[:ENABLES_APPLICATION]->(app3)
MERGE (s)-[:ENABLES_APPLICATION]->(app4)
MERGE (s)-[:ENABLES_APPLICATION]->(app5)
MERGE (s)-[:ENABLES_APPLICATION]->(app6)
MERGE (s)-[:ENABLES_APPLICATION]->(app7)
MERGE (s)-[:ENABLES_APPLICATION]->(app8)
MERGE (s)-[:ENABLES_APPLICATION]->(app9)
MERGE (s)-[:ENABLES_APPLICATION]->(app10)
MERGE (s)-[:ENABLES_APPLICATION]->(app11)
MERGE (s)-[:ENABLES_APPLICATION]->(app12)
MERGE (s)-[:ENABLES_APPLICATION]->(app13)
MERGE (s)-[:ENABLES_APPLICATION]->(app14)
MERGE (s)-[:ENABLES_APPLICATION]->(app15)
MERGE (s)-[:ENABLES_APPLICATION]->(app16)
MERGE (s)-[:ENABLES_APPLICATION]->(app17)
MERGE (s)-[:ENABLES_APPLICATION]->(app18)
MERGE (s)-[:ENABLES_APPLICATION]->(app19)
MERGE (s)-[:ENABLES_APPLICATION]->(app20)
MERGE (s)-[:ENABLES_APPLICATION]->(app21)
MERGE (s)-[:ENABLES_APPLICATION]->(app22)
MERGE (s)-[:ENABLES_APPLICATION]->(app23)
MERGE (s)-[:ENABLES_APPLICATION]->(app24)
MERGE (s)-[:ENABLES_APPLICATION]->(app25);