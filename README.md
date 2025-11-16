## 🍕 Pizza Sales Analytics Project

**SQL + Power BI End-to-End Case Study**

This project analyzes pizza restaurant sales data using both SQL (PostgreSQL/MySQL) and Power BI, uncovering actionable insights on revenue, demand patterns, category performance, customer behavior, and product strategy.

---

## 🚀 Project Overview

The goal of this project was to:

1.  **Build a complete SQL analytics solution** to answer real business questions.
2.  **Design an interactive Power BI dashboard** for data storytelling.
3.  Combine both approaches to simulate a real-world retail analytics project.

The analysis covers:

* 💰 **Revenue** & order performance
* 📈 **Weekly & monthly demand trends**
* 🍕 **Best/worst selling pizzas**
* 🧀 Category & size-level **contribution**
* 🕒 **Busiest days & hours**
* 🧮 **Advanced metrics** (AOV, Avg pizza/order, running totals)

---

## 🏪 Business Problem

A Pizza Company wants to understand its:
* Declining sales in certain months
* Saturated menu performance
* Inconsistent order volumes across days
* Variation in demand for pizza categories & sizes
* Need for data-driven decision making

Management asked:
> “Provide us clear insights on what is selling, when it is selling, and how we can optimize our menu & pricing.”

## 🎯 Project Goals

### Using SQL
* Build database
* Calculate revenue, total pizzas sold, average order value, trends
* Identify top/bottom sellers
* Category & size contribution
* Cumulative revenue & ingredient usage

### Using Power BI
* Create a dynamic dashboard
* Give management an easy-to-read performance summary
* Provide visual storytelling
* Highlight key insights & business recommendations

---

## 🧱 Database Schema (SQL)

| Column | Description |
| :--- | :--- |
| `pizza_id` | Pizza item ID |
| `order_id` | Unique order ID |
| `pizza_name_id` | Category-level pizza ID |
| `quantity` | Unit sold |
| `order_date` | Date of order |
| `order_time` | Time of order |
| `unit_price` | Price of individual pizza |
| `total_price` | Quantity × Price |
| `pizza_size` | Size (S, M, L, XL…) |
| `pizza_category` | Category (Classic, Veggie, Supreme, Chicken) |
| `pizza_ingredients` | Ingredients list |
| `pizza_name` | Full pizza name |

## 🛠 SQL Concepts Used
* **GROUP BY / Aggregations**
* **Window Functions** (`RANK`, `RUNNING TOTAL`)
* **Subqueries**
* **Date Functions**
* **String Functions** (for ingredient analysis)
* Percentage contribution calculations
* Data cleaning & type adjustments

---

## 🧮 Key SQL Metrics & Analysis Performed

* ✔️ **Total Revenue**
* ✔️ **Total Pizzas Sold**
* ✔️ **Total Orders**
* ✔️ **Average Order Value**
* ✔️ **Average Pizzas per Order**
* ✔️ **Daily & Monthly Sales Trend**
* ✔️ **Top 5 Pizzas by** Revenue, Quantity, Orders
* ✔️ **Worst 5 Pizzas by** Revenue, Quantity, Orders
* ✔️ **Revenue by** Category, Size, Month
* ✔️ **Ingredient-level Usage** (Using `unnest(string_to_array())`)

---

## 📊 Power BI Dashboard Summary

| Metric | Value |
| :--- | :--- |
| Total Revenue | $817.86K |
| Total Pizzas Sold | 49,574 |
| Total Orders | 21,350 |
| Average Order Value | $38.31 |
| Average Pizzas/Order | 2.32 |

### 📅 Busiest Days & Times
* **Days:** Friday & Saturday show the highest orders (**weekend peak**).
* **Monthly:** Highest orders occur in **January & July**. Lowest demand seen in September–October.

### 🧀 Category Performance
| Category | % Sales | Total Pizzas Sold |
| :--- | :--- | :--- |
| Classic | 26.91% | 14,888 |
| Supreme | 25.46% | 11,987 |
| Veggie | 23.96% | 11,649 |
| Chicken | 23.68% | 11,050 |
> 📌 **Classic** category is the top performer.

### 🍕 Sales by Pizza Size
* **Large (L)** contributes the most: **45.89%**
* Medium (M): 30.49%
* Small (S): 21.77%
> 📌 **Large** pizzas are the primary revenue driver.

### 🔥 Top Performers
* **Best Pizza by Revenue:** The Thai Chicken, The Barbecue Chicken, The California Chicken
* **Best Pizza by Quantity:** The Classic Deluxe, The Barbecue Chicken, The Hawaiian
* **Best Pizza by Total Orders:** The Classic Deluxe, The Hawaiian

### 🧊 Worst Performers
* **Worst by Revenue & Quantity:** The Brie Carre, The Mediterranean
* **Worst by Revenue (2nd):** The Spinach Supreme

---

## 📘 Storytelling Insight Summary for README

⭐ **Key Findings**

* **Weekend rush** dominates sales → Add promotions or combos on Friday/Saturday.
* **January & July** are peak months → Seasonal marketing opportunity.
* **Classic category** contributes most revenue → Should be prioritized in marketing.
* **Large pizzas** contribute nearly half of all revenue → Strong upsell opportunity.
* **Brie Carre** is consistently low-performing → Candidate for removal or rebranding.
* **Evening hours (6 PM – 9 PM)** show maximum orders → Staff & kitchen planning insight.

---

## 📎 Project Files in Repository

* `pizza_sales.sql` — All SQL queries
* `pizza_dataset.csv` — Source dataset
* `PowerBI_Pizza_Sales.pbix` — Dashboard
* `README.md` — Documentation
