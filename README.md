# Project Overview

### Project Description
--------------------------
This project aims to analyze the sales performance of a retail store so as to uncover key insights such as top-selling products, regional performance and monthly sales trends, and 
ultimately, to produce an interactive Power BI dashboard that highlights these findings in order to strengthen sales performance and actualize business growth.

### Data Source
------------------
The data used in this project was sourced from LITA Capstone Dataset.xlsx 

### Tools Used
--------------------
- Microsoft Excel [Download Here](https://www.microsoft.com) - for Data Cleaning, analysis and visualization
- SQL (Structured query Languae) - for querying of data
- Microsoft Power BI - for creating reports
- Microsoft PowerPoint - for report presentation  

### Exploratory Data Analysis
---------------------------------------
Exploratory Data Analysis (EDA) is the process involving the analysis of the data to answer questions such as:
- What is the gross sales trend?
- What products are top selling?
- Which regions are in high performance?

### Data Dictionary
----------------------
Provided in this section is the deccription of the terminologies as used in this project.
1. OrderID: A unique number that identifies each order (row of record).
2. Customer ID: A unique number assigned to each customer to keep track of the details of their orders.
3. Product: The name of item sold.
4. Region: The geographical business location where the transaction takes place.
5. OrderDate: The date when the order or transaction was made.
6. Quantity: The number of items ordered.
7. UnitPrice: The price at which a single item is sold.
8. Total_Sales: The total money made from an order, calculated by multiplying the quantity by the unit price.

### Data Analysis
------------------
Retrieving the total sales for each product category
```SQL
select Product, sum(Total_Sales) as Product_Total_Sales from [dbo].[SalesData$_xlnm#_FilterDatabase] group by Product
```



### Attached are screenshots of the output of the 
