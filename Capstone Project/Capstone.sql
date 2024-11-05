create database CAPSTONE;

SELECT * FROM [dbo].[SalesData$_xlnm#_FilterDatabase]

SELECT PRODUCT, SUM(TOTAL_SALES) AS PRODUCT_TOTAL_SALE FROM [dbo].[SalesData$_xlnm#_FilterDatabase]

SUM(Total_Sales) FROM [dbo].[SalesData$_xlnm#_FilterDatabase] AS PRODUCT_TOTAL_SALE 