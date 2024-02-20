SELECT *
FROM [dbo].[Sheet2$];

SELECT DISTINCT *
INTO retail_info
FROM [dbo].[Sheet2$];

SELECT *
FROM retail_info;

TRUNCATE TABLE [dbo].[Sheet2$];

INSERT INTO [dbo].[Sheet2$]
SELECT *
FROM retail_info;

DROP TABLE retail_info;

SELECT *
FROM [dbo].[Sheet2$];

SELECT Unitprice
from [dbo].[Sheet2$];

ALTER TABLE [dbo].[Sheet2$]
ADD Invoice_date DATE, Invoice_time time;


UPDATE [dbo].[Sheet2$]
SET Invoice_date = CAST(InvoiceDate AS DATE),
Invoice_time = CAST(InvoiceDate AS TIME);

ALTER TABLE [dbo].[Sheet2$]
DROP COLUMN InvoiceDate;

SELECT FORMAT(Invoice_time, 'hh:mm')
FROM [dbo].[Sheet2$];


SELECT CAST(Invoice_time AS time)
FROM [dbo].[Sheet2$];

EXTRACT (MINUTE FROM Invoice_time);

SELECT CASE WHEN Invoice_time IS NOT NULL THEN FORMAT(Invoice_time, 'hh:mm') ELSE NULL 
END FROM [dbo].[Sheet2$];



SELECT * FROM [dbo].[Sheet2$];



SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dbo.Sheet2$' AND COLUMN_NAME = 'Invoice_time';

UPDATE [dbo].[Sheet2$]
SET CustomerID = 0
WHERE CustomerID IS NULL;

SELECT CustomerID 
FROM [dbo].[Sheet2$]
WHERE CustomerID IS NULL;

UPDATE [dbo].[Sheet2$]
SET Quantity = ABS(Quantity);

SELECT *
FROM [dbo].[Sheet2$]
WHERE Description LIKE '*%';


UPDATE [dbo].[Sheet2$]
SET InvoiceNo = 0
WHERE InvoiceNo IS NULL;

UPDATE [dbo].[Sheet2$]
SET StockCode = 0
WHERE StockCode IS NULL;
