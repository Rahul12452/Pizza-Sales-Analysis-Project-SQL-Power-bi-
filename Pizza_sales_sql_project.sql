DROP TABLE  if EXISTS pizza_sales;

CREATE TABLE pizza_sales (
    pizza_id BIGINT,
    order_id BIGINT,
    pizza_name_id VARCHAR(50),
    quantity INTEGER,
    order_date DATE,
    order_time TIME,
    unit_price NUMERIC(8,2),
    total_price NUMERIC(8,2),
    pizza_size CHAR(1),
    pizza_category VARCHAR(50),
    pizza_ingredients TEXT,
    pizza_name TEXT
);

ALTER TABLE pizza_sales
ALTER COLUMN pizza_size TYPE VARCHAR(5);


-- Total revenue

SELECT sum(total_price) as Total_revenue
from pizza_sales

--- average order value

SELECT ( sum(total_price) / count(distinct order_id)) as avg_order_values
from pizza_sales

--- Total_pizza_sold

SELECT sum(quantity) as Total_pizza_sold
from pizza_sales

--- Total orders

SELECT count(distinct order_id) as Total_orders
from pizza_sales

---- Average pizza per order

SELECT round(sum(quantity),2) / round(count(distinct(order_id)),2) as Avg_price_perorder

from pizza_sales

--- Daily trend for orders

SELECT to_char(order_date,'Day') as order_day,
count(distinct order_date)
from pizza_sales
GROUP by order_day
order by order_day desc

--- Monthly trend for orders

SELECT to_char(order_date,'Month') as Order_month,
count(DISTINCT order_date)
from pizza_sales
GROUP by Order_month

---- Percentage of sales by pizza category

SELECT pizza_category,sum(total_price) *100 / (select sum(total_price) from pizza_sales) as Percentage_sales
from pizza_sales
GROUP by pizza_category

--- Percentage by pizza size

SELECT pizza_size,CAST(sum(total_price) *100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) as Percentage_sales
from pizza_sales
GROUP by pizza_size


---- Quarter sales
SELECT pizza_size,CAST(sum(total_price) *100 / (select sum(total_price) from pizza_sales WHERE EXTRACT(quarter from order_date) = 1) as decimal(10,2)) as Percentage_sales
from pizza_sales
WHERE EXTRACT(quarter from order_date) = 1
GROUP by pizza_size

--- Top 5 revenue from pizza

SELECT pizza_sales.pizza_name, sum(total_price) as Total_revenue
FROM pizza_sales
GROUP by pizza_name
ORDER by Total_revenue DESC
LIMIT 5

--- Top 5 orders 
SELECT pizza_sales.pizza_name,count(DISTINCT pizza_sales.order_id) as Total_orders
from pizza_sales
GROUP by pizza_name
ORDER by Total_orders DESC


 
SELECT * FROM pizza_sales
-------------------------------------------------------------------------------
-- a) Total Revenue & Quantity Sold

SELECT sum(total_price) as Total_Revenue,
sum(quantity) as Quantity_Sold
FROM pizza_sales

 --- Average Order Value (AOV)

 SELECT
 order_id, sum(total_price) as Order_Total
 from pizza_sales
 GROUP by order_id 
 ORDER by order_id  DESC

 SELECT
 round(sum(total_price):: numeric/count(distinct(order_id)),2) as Average_order_value
 FROM pizza_sales

-- Revenue by Pizza Category

SELECT pizza_category,
sum(total_price) as Revenue
from 	pizza_Sales
GROUP by pizza_category

-- Top Selling Pizza

SELECT  pizza_name , sum(quantity) as Total_Sold
FROM pizza_sales
GROUP by pizza_name
ORDER by Total_Sold DESC 

-- Daily / Monthly Sales Trend

SELECT order_date,
sum(total_price) as Daily_revenue
from pizza_sales
GROUP by 1

SELECT date_trunc('month', order_date) as month,
sum(total_price) as revenue
from pizza_sales
group by 1
ORDER by 1


-- Revenue per Pizza Size

SELECT pizza_size,
sum(total_price) as Revenue
from pizza_sales
group by 1
ORDER by 2 desc


-- Revenue Contribution by Pizza Size

SELECT pizza_size,
sum(total_price) as Total_revenue,
round(sum(total_price)*100/sum(sum(total_price))OVER(),2) as Revenue_pct
from pizza_sales
GROUP by 1
ORDER by 2 desc


--- Customer Orders with High Value

SELECT order_id,
sum(total_price) as Order_total,
count(pizza_id) as Pizzas_ordered
from pizza_sales
GROUP by 1
HAVING sum(total_price) > 50
ORDER by 2 desc

-- Daily Cumulative Revenue

SELECT order_date,
sum(sum(total_price)) OVER(order by order_date ROWS between unbounded preceding and current row)
 as cummulative_sales
from pizza_sales
group by order_date
order by order_date 

--- Top Ingredients Analysis
SELECT 
unnest(string_to_array(pizza_ingredients,',')) as ingredients,
sum(quantity) as Total_used
from pizza_sales
GROUP by ingredients
ORDER by Total_used desc
