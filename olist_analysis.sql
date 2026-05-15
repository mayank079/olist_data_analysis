CREATE DATABASE olist_database;

USE olist_database;


/* The "Freight-to-Price" Ratio */

SELECT 
    product_category_name_english,
    ROUND(SUM(price) , 2) AS total_sales,
	ROUND(SUM(freight_value) , 2) AS total_freight,
    -- The Ratio: What % of the customer's money goes to shipping?
    ROUND((SUM(freight_value) / SUM(price)) * 100, 2) AS freight_ratio_pct
FROM olist_data
GROUP BY product_category_name_english
ORDER BY freight_ratio_pct DESC
LIMIT 5;



/* Month-over-Month (MoM) Growth Rate */

WITH MonthlySales AS (
    SELECT 
        DATE_FORMAT(shipping_limit_date, '%Y-%m') AS order_month,
        ROUND(SUM(price), 2) AS monthly_revenue
    FROM olist_data
    GROUP BY order_month
)
SELECT 
    order_month,
    monthly_revenue,
    -- Accessing the previous month's revenue to calculate growth
    LAG(monthly_revenue) OVER (ORDER BY order_month) AS last_month_revenue,
    ROUND(((monthly_revenue - LAG(monthly_revenue) OVER (ORDER BY order_month)) / 
           LAG(monthly_revenue) OVER (ORDER BY order_month)) * 100, 2) AS growth_pct
FROM MonthlySales
ORDER BY order_month;