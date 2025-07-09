MERGE (h:Document {name: 'SARAL Products Handbook', size_mb: 5.6, format: 'PDF', tool: 'PDFViewer', url: 'https://mosdac.gov.in/docs/SALP-MU-M-OP-15984-CN_0102[1]_handbook.pdf'})
MERGE (up:Document {name: 'SARAL User Products', size_mb: 0.957, format: 'PDF', tool: 'PDFViewer', url: 'https://mosdac.gov.in/docs/SALP-ST-M-EA-15839-CN_0202[1]_vol20_products.pdf'})

MERGE (h)-[:RELATED_TO]->(up);