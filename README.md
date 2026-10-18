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
└── results/
    └── sample_outputs.md
```

## 🔍 Queries + Sample Results

---

### 1. Employee Performance Analysis

**Objective:** Find employees who handled at least 5 orders, along with high-value orders and total sales.

**Sample Result:**

| EmployeeID | Name           | Department   | orders_handled | HighValueOrders | total_sales   |
|------------|----------------|--------------|----------------|-----------------|---------------|
| 105        | Rahul Sharma   | Sales        | 28             | 9               | 18,45,670     |
| 112        | Priya Verma    | Sales        | 22             | 7               | 15,32,450     |
| 108        | Amit Patel     | Support      | 19             | 5               | 12,89,300     |
| 101        | Neha Gupta     | Sales        | 17             | 6               | 11,56,800     |
| 115        | Vikram Singh   | Sales        | 14             | 4               | 9,87,250      |

---

### 2. Employees & Customers Served

**Objective:** Employees who handled more than 5 orders and how many unique customers they served.

**Sample Result:**

| EmployeeID | Name           | Department   | orders_handled | served_customers |
|------------|----------------|--------------|----------------|------------------|
| 105        | Rahul Sharma   | Sales        | 28             | 24               |
| 112        | Priya Verma    | Sales        | 22             | 19               |
| 108        | Amit Patel     | Support      | 19             | 17               |
| 101        | Neha Gupta     | Sales        | 17             | 15               |
| 115        | Vikram Singh   | Sales        | 14             | 13               |

---

### 3. City-wise Sales Analysis

**Objective:** Cities with total sales greater than ₹3,00,000.

**Sample Result:**

| City         | no_of_customers | no_of_orders | total_sales  | avg_item_value |
|--------------|-----------------|--------------|--------------|----------------|
| Mumbai       | 145             | 312          | 28,45,600    | 4,850.25       |
| Delhi        | 132             | 278          | 24,67,300    | 4,620.80       |
| Bangalore    | 118             | 245          | 21,89,450    | 5,120.40       |
| Hyderabad    | 97              | 198          | 16,34,200    | 4,310.75       |
| Chennai      | 89              | 176          | 14,56,800    | 4,780.90       |

---

### 4. Product Analysis

**Objective:** Products with average selling price > ₹15,000.

**Sample Result:**

| ProductID | ProductName              | no_of_orders | sold_qty | avg_selling_price |
|-----------|--------------------------|--------------|----------|-------------------|
| P1045     | MacBook Pro 16"          | 48           | 52       | 1,89,990.00       |
| P1092     | iPhone 15 Pro Max        | 67           | 89       | 1,49,900.00       |
| P1078     | Samsung Galaxy S24 Ultra | 55           | 71       | 1,29,999.00       |
| P1120     | Sony Bravia 65" OLED     | 31           | 34       | 1,79,990.00       |
| P1056     | Dell XPS 15              | 42           | 48       | 1,65,000.00       |

---

### 5. Category MRP Analysis

**Objective:** Categories where difference between Max and Min MRP > ₹10,000.

**Sample Result:**

| CategoryName     | no_of_products | min_MRP   | max_MRP    | mrp_diff  |
|------------------|----------------|-----------|------------|-----------|
| Electronics      | 48             | 12,999    | 1,99,990   | 1,86,991  |
| Laptops          | 22             | 45,990    | 2,49,990   | 2,04,000  |
| Smartphones      | 35             | 14,999    | 1,59,900   | 1,44,901  |
| Home Appliances  | 28             | 8,999     | 89,990     | 80,991    |
| Cameras          | 15             | 24,990    | 1,45,000   | 1,20,010  |

---

### 6. Payment Method Analysis

**Objective:** Payment methods with more than 10 successful transactions.

**Sample Result:**

| Method       | success_transactions | total_amount | avg_amount | max_amount |
|--------------|----------------------|--------------|------------|------------|
| UPI          | 312                  | 48,67,500    | 15,600.96  | 95,000     |
| Credit Card  | 187                  | 42,35,800    | 22,651.34  | 1,25,000   |
| Debit Card   | 156                  | 28,45,600    | 18,241.03  | 78,500     |
| Net Banking  | 89                   | 19,67,200    | 22,103.37  | 1,10,000   |
| Wallet       | 67                   | 9,84,300     | 14,691.04  | 45,000     |

---

### 7. Top 15 Products by Quantity Sold

**Objective:** Top 15 products based on total quantity sold.

**Sample Result (Top 5 shown):**

| ProductID | ProductName           | CategoryName  | total_qty_sold | total_sales  |
|-----------|-----------------------|---------------|----------------|--------------|
| P1023     | Wireless Earbuds Pro  | Electronics   | 245            | 12,25,000    |
| P1089     | Smart Watch Series 7  | Wearables     | 198            | 15,84,000    |
| P1011     | Power Bank 20000mAh   | Accessories   | 176            | 5,28,000     |
| P1067     | USB-C Fast Charger    | Accessories   | 165            | 2,47,500     |
| P1045     | MacBook Pro 16"       | Laptops       | 52             | 98,79,480    |

---

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
