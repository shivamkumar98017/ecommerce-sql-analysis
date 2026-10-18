-- =====================================================
-- 2. Employees & Customers Served
-- =====================================================
-- For every employee, calculate:
-- • EmployeeID, Name, Department
-- • Number of orders handled
-- • Number of different customers served
-- Display only employees who handled more than 5 orders
-- Sort by number of orders handled (highest to lowest)

SELECT 
  e.EmployeeID,
  e.Name,
  e.Department,
  COUNT(DISTINCT o.OrderID) AS orders_handled,
  COUNT(DISTINCT o.CustomerID) AS served_customers
FROM `e1.employees` AS e
INNER JOIN `e1.orders` AS o
  ON e.EmployeeID = o.EmployeeID
GROUP BY 
  e.EmployeeID,
  e.Name,
  e.Department
HAVING COUNT(DISTINCT o.OrderID) > 5
ORDER BY orders_handled DESC;
