CREATE DATABASE swiggy_analysis;
USE swiggy_analysis;
CREATE TABLE swiggy_orders (
    Order_ID INT,
    Customer_ID INT,
    Order_Date DATE,
    City VARCHAR(50),
    Restaurant_Type VARCHAR(50),
    Order_Value INT,
    Discount_Percentage INT,
    Delivery_Distance_km FLOAT,
    Delivery_Time_min INT,
    Delivery_Cost FLOAT,
    Net_Revenue FLOAT,
    Profit FLOAT,
    Payment_Mode VARCHAR(50),
    Rating INT,
    Order_Cancelled VARCHAR(10),
    Refund VARCHAR(10),
    Repeat_Customer VARCHAR(10)
);
SELECT * FROM swiggy_orders LIMIT 10;
SELECT COUNT(*) FROM swiggy_orders;
SELECT 
    COUNT(*) AS total_orders,
    ROUND(SUM(Order_Value),2) AS total_order_value,
    ROUND(SUM(Net_Revenue),2) AS total_revenue,
    ROUND(SUM(Profit),2) AS total_profit
FROM swiggy_orders;
SELECT 
    City,
    ROUND(AVG(Delivery_Time_min),2) AS avg_delivery_time
FROM swiggy_orders
GROUP BY City
ORDER BY avg_delivery_time DESC;
SELECT 
    Discount_Percentage,
    ROUND(AVG(Profit),2) AS avg_profit
FROM swiggy_orders
GROUP BY Discount_Percentage
ORDER BY Discount_Percentage;
SELECT 
    Payment_Mode,
    COUNT(*) AS total_orders
FROM swiggy_orders
GROUP BY Payment_Mode
ORDER BY total_orders DESC;
SELECT 
    Payment_Mode,
    COUNT(*) AS total_orders,
    SUM(
        CASE 
            WHEN Order_Cancelled='Yes' THEN 1 
            ELSE 0 
        END
    ) AS cancelled_orders
FROM swiggy_orders
GROUP BY Payment_Mode
ORDER BY cancelled_orders DESC;
SELECT 
    Restaurant_Type,
    COUNT(*) AS total_orders,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(AVG(Profit),2) AS avg_profit
FROM swiggy_orders
GROUP BY Restaurant_Type
ORDER BY total_profit ASC;
SELECT 
    City,
    COUNT(*) AS total_orders,
    ROUND(SUM(Profit),2) AS total_profit
FROM swiggy_orders
GROUP BY City
ORDER BY total_profit ASC;
SELECT
    Restaurant_Type,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN Order_Cancelled='Yes' THEN 1 ELSE 0 END) AS cancelled_orders
FROM swiggy_orders
GROUP BY Restaurant_Type
ORDER BY cancelled_orders DESC;
SELECT
    Rating,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Repeat_Customer='Yes' THEN 1 ELSE 0 END) AS repeat_customers
FROM swiggy_orders
GROUP BY Rating
ORDER BY Rating;