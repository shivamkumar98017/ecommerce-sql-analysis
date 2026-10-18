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

## 🗂 Database Schema

Tables used:
- `employees` (10 rows)
- `orders` (300 rows)
- `order_items` (594 rows)
- `customers` (100 rows)
- `products` (50 rows)
- `categories` (10 rows)
- `payments` (300 rows)
- + warehouses, suppliers, inventory, etc.

> Full dataset is available in the [`data/`](./data) folder.

## 📁 Project Structure

```
ecommerce-sql-analysis/
├── README.md
├── data/                  # Complete dataset (CSV)
├── queries/               # SQL query files
└── results/               # Actual query outputs (CSV)
```

## 🔍 Queries + Actual Results

---

### 1. Employee Performance Analysis

**Objective:** Employees who handled ≥ 5 orders, high-value orders (> ₹50,000), and total sales.

**Actual Result:**

| EmployeeID | Name  | Department | orders_handled | HighValueOrders | total_sales |
|------------|-------|------------|----------------|-----------------|-------------|
| E008       | Emp8  | Sales      | 41             | 0               | 3,58,565    |
| E005       | Emp5  | Sales      | 33             | 0               | 3,33,012    |
| E010       | Emp10 | Sales      | 33             | 0               | 3,27,072    |
| E003       | Emp3  | Sales      | 31             | 0               | 3,02,611    |
| E006       | Emp6  | Sales      | 37             | 0               | 2,96,637    |
| E002       | Emp2  | Sales      | 26             | 0               | 2,72,538    |
| E007       | Emp7  | Sales      | 25             | 0               | 2,52,544    |
| E009       | Emp9  | Sales      | 28             | 0               | 2,26,483    |
| E001       | Emp1  | Sales      | 26             | 0               | 2,20,040    |
| E004       | Emp4  | Sales      | 20             | 0               | 1,33,392    |

> Note: No order exceeded ₹50,000 in this dataset, so HighValueOrders = 0 for all.

---

### 2. Employees & Customers Served

**Objective:** Employees who handled > 5 orders and number of unique customers served.

**Actual Result:**

| EmployeeID | Name  | Department | orders_handled | served_customers |
|------------|-------|------------|----------------|------------------|
| E008       | Emp8  | Sales      | 41             | 32               |
| E006       | Emp6  | Sales      | 37             | 34               |
| E010       | Emp10 | Sales      | 33             | 30               |
| E005       | Emp5  | Sales      | 33             | 30               |
| E003       | Emp3  | Sales      | 31             | 26               |
| E009       | Emp9  | Sales      | 28             | 26               |
| E002       | Emp2  | Sales      | 26             | 25               |
| E001       | Emp1  | Sales      | 26             | 25               |
| E007       | Emp7  | Sales      | 25             | 22               |
| E004       | Emp4  | Sales      | 20             | 18               |

---

### 3. City-wise Sales Analysis

**Objective:** Cities with total sales > ₹3,00,000.

**Actual Result:**

| City   | no_of_customers | no_of_orders | total_sales | avg_item_value |
|--------|-----------------|--------------|-------------|----------------|
| Mumbai | 19              | 64           | 6,23,023    | 4,829.64       |
| Indore | 19              | 67           | 5,92,206    | 4,737.65       |
| Jaipur | 20              | 62           | 5,60,937    | 4,487.50       |
| Pune   | 19              | 54           | 4,87,681    | 4,474.14       |
| Nagpur | 20              | 53           | 4,59,047    | 4,330.63       |

---

### 4. Product Analysis

**Objective:** Products with average selling price > ₹15,000.

**Actual Result:**  
**0 rows** — No product has average selling price > ₹15,000 (highest is ₹4,495).

---

### 5. Category MRP Analysis

**Objective:** Categories where (Max MRP − Min MRP) > ₹10,000.

**Actual Result:**  
**0 rows** — Maximum MRP difference in the data is ₹4,563 (Toys category).

---

### 6. Payment Method Analysis

**Objective:** Payment methods with more than 10 successful transactions.

**Actual Result:**

| Method | success_transactions | total_amount | avg_amount | max_amount |
|--------|----------------------|--------------|------------|------------|
| UPI    | 89                   | 8,28,955     | 9,314.10   | 27,440     |
| Card   | 100                  | 8,97,778     | 8,977.78   | 33,795     |
| COD    | 111                  | 9,96,161     | 8,974.42   | 22,792     |

---

### 7. Top 15 Products by Quantity Sold

**Objective:** Top 15 products based on total quantity sold.

**Actual Result:**

| ProductID | ProductName | CategoryName | total_qty_sold | total_sales |
|-----------|-------------|--------------|----------------|-------------|
| P028      | Product 28  | Furniture    | 43             | 1,37,299    |
| P023      | Product 23  | Home         | 41             | 1,01,721    |
| P025      | Product 25  | Beauty       | 34             | 15,470      |
| P029      | Product 29  | Toys         | 33             | 1,25,202    |
| P015      | Product 15  | Beauty       | 33             | 44,649      |
| P005      | Product 5   | Beauty       | 33             | 1,16,688    |
| P002      | Product 2   | Fashion      | 31             | 64,666      |
| P049      | Product 49  | Toys         | 31             | 1,03,881    |
| P043      | Product 43  | Home         | 30             | 1,25,070    |
| P017      | Product 17  | Books        | 30             | 25,170      |
| P046      | Product 46  | Sports       | 30             | 63,000      |
| P044      | Product 44  | Kitchen      | 29             | 1,11,302    |
| P013      | Product 13  | Home         | 29             | 40,223      |
| P001      | Product 1   | Electronics  | 28             | 7,952       |
| P039      | Product 39  | Toys         | 28             | 9,576       |

---

## 🛠 How to Run

1. Load the CSV files from the `data/` folder into your database
2. Update table prefixes if required (`e1.` → your schema)
3. Run queries from the `queries/` folder
4. Compare your output with the files in `results/`

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
