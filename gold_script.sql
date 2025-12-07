CREATE VIEW gold.calendar
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awkaggledatalake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as QUER1;

CREATE VIEW gold.customer
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awkaggledatalake.blob.core.windows.net/silver/AdventureWorks_Customer/',
            FORMAT = 'PARQUET'
        ) as QUER1

CREATE VIEW gold.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awkaggledatalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as QUER1

CREATE VIEW gold.product
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awkaggledatalake.blob.core.windows.net/silver/Products/',
            FORMAT = 'PARQUET'
        ) as QUER1

CREATE VIEW gold.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awkaggledatalake.blob.core.windows.net/silver/Returns/',
            FORMAT = 'PARQUET'
        ) as QUER1

CREATE VIEW gold.psc
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awkaggledatalake.blob.core.windows.net/silver/Product_Subcategories',
            FORMAT = 'PARQUET'
        ) as QUER1