MERGE (dp:DataProduct {name: 'SCATSAT Level4 Products', format: 'PDF', size_kb: 968})
SET dp.url = 'https://mosdac.gov.in/docs/scatsat_level4_dataproducts.pdf',
    dp.tool = 'PDFViewer';