-- ==========================================
-- Sales Dashboard Analysis Using MySQL
-- Dataset: SampleSuperstore
-- Author: Mohd Amaan
-- ==========================================

-- Create Database
CREATE DATABASE IF NOT EXISTS sales_dashboard;

-- Use Database
USE sales_dashboard;

-- Show Available Tables
SHOW TABLES;

-- Display Complete Data
SELECT * FROM SampleSuperstore;

-- ==========================================
-- Basic Analysis
-- ==========================================

-- Total Records
SELECT COUNT(*) AS Total_Records
FROM SampleSuperstore;

-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore;

-- Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM SampleSuperstore;

-- Average Sales
SELECT ROUND(AVG(Sales),2) AS Average_Sales
FROM SampleSuperstore;

-- ==========================================
-- Category Analysis
-- ==========================================

-- Sales by Category
SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Profit by Category
SELECT Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM SampleSuperstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Average Discount by Category
SELECT Category,
       ROUND(AVG(Discount),2) AS Average_Discount
FROM SampleSuperstore
GROUP BY Category;

-- ==========================================
-- Regional Analysis
-- ==========================================

-- Sales by Region
SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 10 Cities by Sales
SELECT City,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 States by Profit
SELECT State,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM SampleSuperstore
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;

-- ==========================================
-- Product Analysis
-- ==========================================

-- Top 10 Sub-Categories by Sales
SELECT `Sub-Category`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 10;