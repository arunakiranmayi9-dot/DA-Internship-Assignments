---view data
SELECT *
FROM superstore
LIMIT 10;

---total revenue
SELECT
SUM(Sales) AS Total_Revenue
FROM superstore;

----total orders
SELECT
count( DISTINCT "Order ID") as Total_orders
from superstore;

----Top 10 customers
SELECT "Customer Name", sum(Sales) as total_sales
from superstore
group by "Customer Name"
order by total_sales DESC
LIMIT 10;

----top 10 products
SELECT"Product Name", 
sum(sales) as total_sales
from superstore
group by "Product Name"
order by total_sales DESC
limit 10;
---sales by category
SELECT "Category",
sum(sales) as total_sales
from superstore
group by "Category"
order by total_sales DESC;
----profit by region
SELECT "Region",
sum(Profit) as total_profit
from superstore
group by "Region"
order by total_profit DESC;
----monthly revenue
SELECT 
strftime('%Y-%m',"Order Date") as month,
sum(sales) as revenue
from superstore
group by month
order by month;
----most profitable product 
SELECT "Product Name",
sum(Profit) as Profit
from superstore
group by "Product Name"
order by profit DESC
limit 10;
----avg discout by category
SELECT
Category,
ROUND(AVG(Discount),2) AS Avg_Discount
FROM superstore
GROUP BY Category;
----verify table 
SELECT * FROM superstore LIMIT 5;