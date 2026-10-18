# E-Commerce SQL Analysis Project

A comprehensive SQL analytics project analyzing employee performance, customer behavior, product sales, category insights, and payment methods from an e-commerce database.

## 📊 Project Overview

This project contains multiple analytical queries written to answer key business questions using advanced SQL concepts:

- JOINs (INNER JOIN)
- Aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
- `GROUP BY` & `HAVING`
- Conditional aggregation (`CASE WHEN`)
- Subqueries
- Filtering & Sorting

## 🗂 Database Schema (Assumed)

Tables used:
- `employees`
- `orders`
- `order_items`
- `customers`
- `products`
- `categories`
- `payments`

> Note: Queries use BigQuery-style dataset prefix `` `e1.` ``. Adjust according to your database (MySQL / PostgreSQL / SQL Server).

## 📁 Project Structure

```
ecommerce-sql-analysis/
├── README.md
├── queries/
│   ├── 01_employee_performance.sql
│   ├── 02_employee_customers_served.sql
│   ├── 03_city_wise_sales.sql
│   ├── 04_product_analysis.sql
│   ├── 05_category_mrp_analysis.sql
│   ├── 06_payment_method_analysis.sql
│   └── 07_top_products_by_quantity.sql
└── schema/
    └── (schema.sql - optional)
```

## 🔍 Queries Included

### 1. Employee Performance Analysis
- Number of orders handled
- High-value orders (> ₹50,000)
- Total sales value
- Filter: Employees with ≥ 5 orders

### 2. Employees & Customers Served
- Orders handled
- Distinct customers served
- Filter: More than 5 orders

### 3. City-wise Sales Analysis
- Number of customers & orders
- Total sales value
- Average order-item value
- Filter: Cities with total sales > ₹3,00,000

### 4. Product Analysis
- Orders containing the product
- Total quantity sold
- Average selling price
- Filter: Avg selling price > ₹15,000

### 5. Category MRP Analysis
- Number of products
- Min & Max MRP
- Difference between Max and Min MRP
- Filter: MRP difference > ₹10,000

### 6. Payment Method Analysis
- Successful transactions count
- Total & Average & Maximum amount
- Filter: More than 10 successful transactions

### 7. Top 15 Products by Quantity Sold
- Product details + Category
- Total quantity & sales value

## 🛠 How to Run

1. Connect to your database (BigQuery / MySQL / PostgreSQL etc.)
2. Update table prefixes if required (`e1.` → your dataset/schema)
3. Run queries one by one from the `queries/` folder

## 📈 Skills Demonstrated

- Complex multi-table joins
- Conditional aggregation
- Business logic implementation in SQL
- Filtering aggregated results with `HAVING`
- Writing clean & readable analytical queries

## 👤 Author

**Shivam Kumar**  
[GitHub](https://github.com/shivamkumar98017) | [Instagram](https://www.instagram.com/shivamkumar98017/)

---

⭐ If you find this project useful, please give it a star!
