MERGE (d1:DataProduct {name: 'Analysed-Winds', format: 'PDF', size_kb: 583, tool: 'PDFViewer', url: 'https://mosdac.gov.in/docs/Analysed-Winds.pdf'})
MERGE (d2:DataProduct {name: 'High Spatial density winds', format: 'PDF', size_kb: 145, tool: 'PDFViewer', url: 'https://mosdac.gov.in/docs/High_Spatial_density_winds.pdf'})
MERGE (d3:DataProduct {name: 'ATBD_SCAT_V1', format: 'PDF', size_mb: 1.02, tool: 'PDFViewer', url: 'https://mosdac.gov.in/docs/ATBD_SCAT_v1_fuldoc2.pdf'})

MERGE (d1)-[:REFERENCED_BY]->(d2)
MERGE (d1)-[:REFERENCED_BY]->(d3)
MERGE (d2)-[:REFERENCED_BY]->(d3);