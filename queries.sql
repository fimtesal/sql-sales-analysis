CREATE DATABASE  sales_analysis ;
SELECT * FROM superstore;
-- Show all orders placed by a specific customer, e.g., “Claire Gute”.
SELECT * FROM superstore
WHERE Customer_Name= 'Claire Gute';
-- List orders where sales are greater than 500
SELECT * FROM superstore
WHERE Sales>500;
-- Calculate the total sales for all orders.
SELECT SUM(Sales)  AS Total_Sales FROM superstore;
-- Find the total profit per region.
SELECT Region,SUM(Profit) as Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;
-- Show total sales per customer.
SELECT Customer_Name,SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC;
-- Find total quantity sold per category.
SELECT Category,SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY Category
ORDER BY Total_Quantity DESC;
-- Find all orders placed in 2017.
SELECT *
FROM superstore
WHERE Order_Date LIKE '%17';
-- List orders where a discount was applied and sales are above 500.
SELECT Product_Name,Discount,Sales
FROM superstore
where Sales>500 AND Discount != 0
ORDER BY Sales DESC;

-- Find orders that took more than 5 days to ship.
SELECT * FROM superstore
WHERE Order_Date-Ship_Date>5;
