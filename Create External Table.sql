CREATE DATABASE SCOPED CREDENTIAL cred_yashu171097
WITH
   IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver171097
WITH
(
    LOCATION = 'https://awstoragedatalake17.blob.core.windows.net/silver',
    CREDENTIAL = cred_yashu171097
)

CREATE EXTERNAL DATA SOURCE source_gold171097
WITH
(
    LOCATION = 'https://awstoragedatalake17.blob.core.windows.net/gold',
    CREDENTIAL = cred_yashu171097
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


-------------------------------
-- CREATE EXTERNAL TABLE EXTSALES
-------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold171097,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales

SELECT * FROM gold.extsales



