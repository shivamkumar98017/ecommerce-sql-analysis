-- =====================================================
-- 3. City-wise Sales Analysis
-- =====================================================
-- For every city, calculate:
-- • Number of customers
-- • Number of orders
-- • Total sales value
-- • Average order-item value
-- Display only cities where total sales > ₹3,00,000
-- Sort by total sales (descending)

SELECT
  c.City, 
  COUNT(DISTINCT c.CustomerID) AS no_of_customers,
  COUNT(DISTINCT o.OrderID) AS no_of_orders,
  SUM(oi.Total) AS total_sales,
  ROUND(AVG(oi.Total), 2) AS avg_item_value
FROM `e1.customers` AS c
INNER JOIN `e1.orders` AS o
  ON c.CustomerID = o.CustomerID
INNER JOIN `e1.order_items` AS oi
  ON oi.OrderID = o.OrderID
GROUP BY c.City
HAVING SUM(oi.Total) > 300000
ORDER BY total_sales DESC;
