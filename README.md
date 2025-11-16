## 🍕 Pizza Sales SQL Analytics Project

An end-to-end **SQL case study** analyzing a pizza restaurant’s sales data to uncover key business insights.

This project simulates real-world scenarios involving revenue analysis, ordering behavior, product demand, ingredient usage, and sales trends.

---

## 🚀 Project Overview

The goal of this project was to design and query a structured SQL database for a pizza outlet’s daily sales operations.

I created a **fact table** (`pizza_sales`) and wrote SQL queries to answer **20+ business questions**—ranging from KPIs to trend analysis and category contributions.

The analysis covers:

* **Total revenue** & **order performance**
* Daily and monthly **sales trends**
* Pizza category & size **contribution**
* Product-level **revenue analysis**
* Ingredient usage trends
* High-value customer order behavior
* **Cumulative revenue** tracking

---

## 📂 Database Schema

### Table Used:
`pizza_sales`

* (pizza\_id, order\_id, pizza\_name\_id, quantity, order\_date, order\_time, unit\_price, total\_price, pizza\_size, pizza\_category, pizza\_ingredients, pizza\_name)

### Key Relationships (business assumed):
* `pizza_name_id` → `pizza_name` (Pizza Master Mapping)
* `pizza_category` groups pizzas into food types
* `pizza_size` determines pricing differences

### Schema Diagram (Conceptual)
🧱 One **fact table** containing all pizza transactions — suitable for real-world fast-food analytics use cases.

---

## 🛠 Skills & SQL Concepts Used

* **SQL Table Creation** & Data Modeling
* **Aggregations** (`SUM`, `COUNT`, `AVG`)
* **Date Functions** (`to_char`, `date_trunc`, `EXTRACT`)
* **Window Functions** (Running Totals)
* **GROUP BY, HAVING, ORDER BY**
* Subqueries
* **String Functions** (`string_to_array`, `unnest`)
* Business **KPI Querying**
* **Trend** & **Contribution Analysis**

---

## 🔍 Business Questions Solved

### Easy to Medium
* 📊 **Total Revenue**
* 🍕 **Total Pizzas Sold**
* 🧾 **Total Orders**
* 💲 **Average Order Value (AOV)**
* 📦 **Average pizzas per order**
* 📆 **Daily order trend**
* 🗓 **Monthly sales trend**
* 🍕 **Revenue by pizza category**
* 📏 **Revenue by pizza size**
* 🔥 **Top 5 revenue-generating pizzas**
* 🏆 **Top 5 most-ordered pizzas**

### Medium to Hard
* 💰 **High-value customer orders** (> $50)
* 📈 **Cumulative daily revenue**
* 🧀 **Ingredient usage** across all pizzas
* 📊 **Percentage revenue contribution** by category
* 📏 **Revenue share** by pizza size
* 🗓 **Quarterly sales percentage**
* 🔽 Finding **least/most performing pizzas** (Revenue/Orders)

### Complex Analysis
* 🍕 Identifying **best-selling pizzas by type/size**
* 🧠 Understanding **ingredient demand** for inventory planning
* 📈 **Trend forecasting** from cumulative revenue
* 🏆 Identifying **premium customers** from high-value orders
* 📦 **Category vs Size** performance comparison

---

## 🧪 Sample Insights

✔ **Large & Medium pizzas** generate the highest revenue share, suggesting customers prefer bigger portions.

✔ **Weekends** show higher order volumes, indicating stronger weekend demand.

✔ **Top 5 pizzas** contribute a major portion of total sales, ideal for combo offers or promotions.

✔ Ingredient analysis shows frequent demand for **cheese, pepperoni, and mushrooms**, helping optimize inventory.

✔ **High-value orders** (>$50) represent premium customers suitable for targeted loyalty campaigns.

✔ **Quarterly trends** highlight seasonal peaks, useful for staffing and inventory planning.

---

## 📎 Project Files

* **`Pizza_Sales_Queries.sql`** → All SQL queries including KPIs, trends, and analysis
* **`pizza_sales.csv`** → Dataset used for the analysis
  
