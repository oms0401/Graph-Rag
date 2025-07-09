MERGE (doc:Document {name: 'INSAT-3DS Operational Products V1', format: 'PDF', size_kb: 586, url: 'https://mosdac.gov.in/docs/INSAT-3DS_Operational_Products_V1.pdf'})
MERGE (tool:Tool {name: 'PDFViewer'})

MERGE (doc)-[:HAS_FORMAT]->(tool);