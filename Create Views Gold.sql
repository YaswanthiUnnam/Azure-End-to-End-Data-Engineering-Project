-------------------------------------
-- CREATE VIEW Product_Subcategories
-------------------------------------
CREATE VIEW gold.product_subcategories
AS
SELECT * FROM
OPENROWSET(
    BULK'https://awstoragedatalake17.blob.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'
)as query1