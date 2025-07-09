MERGE (s:Satellite {name: 'Oceansat-2'})
SET s.service_continuity = true,
    s.stabilization = 'three axis stabilized';

MERGE (ocm:Instrument {name: 'Ocean Colour Monitor', type: 'Oceanographic'})
MERGE (scatterometer:Instrument {name: 'Ku-band Scatterometer', type: 'Oceanographic'})
MERGE (rosa:Payload {name: 'ROSA', type: 'Atmospheric', developed_by: 'Italian Space Agency (ASI)'})

MERGE (s)-[:CARRIES_INSTRUMENT]->(ocm)
MERGE (s)-[:CARRIES_INSTRUMENT]->(scatterometer)
MERGE (s)-[:CARRIES_PAYLOAD]->(rosa);

MERGE (param_wind:Parameter {name: 'surface winds', type: 'Oceanographic'})
MERGE (param_strata:Parameter {name: 'ocean surface strata', type: 'Oceanographic'})
MERGE (param_chlorophyll:Parameter {name: 'chlorophyll concentrations', type: 'Oceanographic'})
MERGE (param_phytoplankton:Parameter {name: 'phytoplankton blooms', type: 'Oceanographic'})
MERGE (param_aerosols:Parameter {name: 'atmospheric aerosols', type: 'Atmospheric'})
MERGE (param_sediments:Parameter {name: 'suspended sediments', type: 'Oceanographic'})

MERGE (s)-[:STUDIES]->(param_wind)
MERGE (s)-[:STUDIES]->(param_strata)
MERGE (s)-[:OBSERVES]->(param_chlorophyll)
MERGE (s)-[:MONITORS]->(param_phytoplankton)
MERGE (s)-[:STUDIES]->(param_aerosols)
MERGE (s)-[:STUDIES]->(param_sediments);

MERGE (app_cyclone:Application {name: 'prediction of cyclone trajectory'})
MERGE (app_fisheries:Application {name: 'fisheries'})
MERGE (app_coastal_mapping:Application {name: 'coastal zone mapping'})
MERGE (app_fishing_zones:Application {name: 'identification of potential fishing zones'})
MERGE (app_sea_state:Application {name: 'sea state forecasting'})
MERGE (app_weather_forecasting:Application {name: 'weather forecasting'})
MERGE (app_climatic_studies:Application {name: 'climatic studies'})

MERGE (s)-[:ENABLES_APPLICATION]->(app_cyclone)
MERGE (s)-[:ENABLES_APPLICATION]->(app_fisheries)
MERGE (s)-[:ENABLES_APPLICATION]->(app_coastal_mapping)
MERGE (s)-[:ENABLES_APPLICATION]->(app_fishing_zones)
MERGE (s)-[:ENABLES_APPLICATION]->(app_sea_state)
MERGE (s)-[:ENABLES_APPLICATION]->(app_weather_forecasting)
MERGE (s)-[:ENABLES_APPLICATION]->(app_climatic_studies);