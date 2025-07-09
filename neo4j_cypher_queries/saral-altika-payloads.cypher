MERGE (s:Satellite {name: 'SARAL'})
MERGE (p1:Payload {name: 'Ka-band altimeter', type: 'Altimeter'})
SET p1.bandwidth = 'enhanced',
    p1.vertical_resolution_m = 0.3,
    p1.frequency_ghz = 35,
    p1.instrument_characteristics = 'compact, lightweight';

MERGE (p2:Payload {name: 'Dual-frequency radiometer', type: 'Radiometer'})
SET p2.frequency_ghz = '24/37',
    p2.application = 'tropospheric correction',
    p2.development_origin = 'Madras (Megha-Tropiques)';

MERGE (p3:Payload {name: 'Laser Retro-reflector Array', type: 'Retro-reflector'})
SET p3.application = 'orbitography and system calibration';

MERGE (p4:Payload {name: 'DORIS', type: 'Orbitography'})
SET p4.application = 'orbitography performances in low earth orbit',
    p4.performance_comparison = 'similar performance as reference missions like T/P, JASON, ENVISAT',
    p4.analysis_application = 'mean sea level analysis and coastal/inland application';

MERGE (s)-[:CARRIES_PAYLOAD]->(p1)
MERGE (s)-[:CARRIES_PAYLOAD]->(p2)
MERGE (s)-[:CARRIES_PAYLOAD]->(p3)
MERGE (s)-[:CARRIES_PAYLOAD]->(p4);