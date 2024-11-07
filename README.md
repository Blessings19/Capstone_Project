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
Finding the number of sales transactions in each region
```SQL
select Region, sum(Quantity) as Region_Total_Sales from [dbo].[SalesData$_xlnm#_FilterDatabase] group by Region
```
Finding the highest-selling product by total sales value
```SQL
select top 1 Product, sum(Total_Sales) as Total_Sales from [dbo].[SalesData$_xlnm#_FilterDatabase] group by Product order by Total_Sales desc
```
Calculating total revenue per product
```SQL
select Product, sum(Quantity * UnitPrice) as Total_Revenue from [dbo].[SalesData$_xlnm#_FilterDatabase] group by product order by Total_Revenue desc
```
Finding the top 5 customers by total purchase amount
```SQL
select top 5 Customer_Id, sum(Total_Sales) as Total_Purchase from [dbo].[SalesData$_xlnm#_FilterDatabase] group by Customer_Id order by Total_Purchase desc
```
Identifying products with no sales in the last quarter
```SQL
Select distinct Product
From [dbo].[SalesData$_xlnm#_FilterDatabase]
Where Product Not In(
Select Product
From [dbo].[SalesData$_xlnm#_FilterDatabase]
Where OrderDate >= DateAdd(quarter, -1, GetDate()) and OrderDate < GetDate())
```

### Data Visualization
---

![image](https://github.com/user-attachments/assets/f15ff133-413e-4c69-9214-165973e12f06)

### Conclusion
The analysis revealed that Shoes generated the highest revenue with a sum of #3,087,500 and as such, is the highest selling product, while Socks generate the least revenue with a total of #912,500. In terms of regional performance, the South region had the highest sale of #122,500, while the West had the least, amounting to #57,500.

When looking at total quantities sold per product, Hats rank the highest, while Jackets have the lowest sales volume. Regional data shows that Hats, Jackets, and Shirts are not selling in the South region. Regarding monthly sales for the current year, February leads in sales, followed by January, with July being the lowest.

### Recommendation
Increase Sales of Low-Selling Items: Promotions or bundles to boost sales of low-selling items like Socks and Jackets by pairing them with popular items like Shoes.

Focus on Low-Performing Regions: Special campaigns promotion should be carried out to boost sales in the West region and investigate why certain items aren’t selling in the South such as getting feedbacks from customers their options of the products, inorder to make any necessary adjustments.

Boost Sales in Low Months: Since February had strong sales, study the sales trends and use similar strategies or promotions in slower months like July to improve sales during those times. I believe onces these suggestions are implemented, we will see a increase in revenue inflow in the upcoming months.


