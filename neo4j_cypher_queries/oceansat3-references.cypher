MERGE (doc1:Document {name: 'OCM_AOD_ATBD', format: 'PDF', size_mb: 2.67, url: 'https://mosdac.gov.in/docs/OCM_AOD_ATBD V1_1.pdf'})
MERGE (doc2:Document {name: 'OCM_AnalysedCHL_GlobalOcean_ATBD', format: 'PDF', size_mb: 2.5, url: 'https://mosdac.gov.in/docs/ATBD_AnalysedCHL_GlobalOcean.pdf'})
MERGE (doc3:Document {name: 'OCM_IOPS_ATBD', format: 'PDF', size_mb: 1.2, url: 'https://mosdac.gov.in/docs/OCM_IOPS_ATBD.pdf'})

MERGE (r:Reference {name: 'OCEANSAT-3 References'})
MERGE (r)-[:INCLUDES]->(doc1)
MERGE (r)-[:INCLUDES]->(doc2)
MERGE (r)-[:INCLUDES]->(doc3);