-- =====================================================
-- 1. Employee Performance Analysis
-- =====================================================
-- For every employee, calculate:
-- • EmployeeID, Name, Department
-- • Number of orders handled
-- • Number of high-value orders (total value > ₹50,000)
-- • Total sales value of all orders handled
-- Display only employees who handled at least 5 orders
-- Sort by total sales value (highest to lowest)

SELECT
  e.EmployeeID,
  e.Name,
  e.Department,
  COUNT(DISTINCT o.OrderID) AS orders_handled,
  COUNT(
    DISTINCT CASE 
      WHEN OrderTotals.order_value > 50000 THEN o.OrderID
    END
  ) AS HighValueOrders,
  SUM(OrderTotals.order_value) AS total_sales
FROM `e1.employees` AS e
INNER JOIN `e1.orders` AS o
  ON e.EmployeeID = o.EmployeeID
INNER JOIN (
  SELECT 
    OrderID,
    SUM(Total) AS order_value
  FROM `e1.order_items` AS oi
  GROUP BY OrderID
) AS OrderTotals
  ON o.OrderID = OrderTotals.OrderID
GROUP BY 
  e.EmployeeID,
  e.Name,
  e.Department
HAVING COUNT(DISTINCT o.OrderID) >= 5
ORDER BY total_sales DESC;
