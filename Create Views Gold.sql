
-------------------------
-- create view calendar
-------------------------
CREATE VIEW gold.calendar
AS
SELECT * FROM OPENROWSET
(
    BULK 'https://awstoragedatalake17.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUERY1

-------------------------
-- create view customers
-------------------------
CREATE VIEW gold.customers
AS
SELECT * FROM OPENROWSET
(
    BULK 'https://awstoragedatalake17.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS QUERY1

-------------------------
-- create view products
-------------------------
CREATE VIEW gold.products
AS
SELECT * FROM OPENROWSET
(
    BULK 'https://awstoragedatalake17.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS QUERY1

------------------------
-- create view returns
------------------------
CREATE VIEW gold.returns
AS
SELECT * FROM OPENROWSET
(
    BULK 'https://awstoragedatalake17.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS QUERY1

------------------------
-- create view sales
------------------------

CREATE VIEW gold.sales
AS
SELECT * FROM OPENROWSET
(
    BULK 'https://awstoragedatalake17.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS QUERY1

------------------------
-- create view territories
------------------------
CREATE VIEW gold.territories
AS
SELECT * FROM OPENROWSET
(
    BULK 'https://awstoragedatalake17.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS QUERY1

------------------------
-- create view subcategories
------------------------

CREATE VIEW gold.subcategories
AS
SELECT * FROM OPENROWSET
(
    BULK 'https://awstoragedatalake17.blob.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS QUERY1
