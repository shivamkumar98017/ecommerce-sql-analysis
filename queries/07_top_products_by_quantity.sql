-- =====================================================
-- 7. Top 15 Products by Quantity Sold
-- =====================================================
-- Find the top 15 products based on total quantity sold.
-- Display:
-- • ProductID, ProductName, CategoryName
-- • Total quantity sold
-- • Total sales value
-- Sort by quantity sold (highest to lowest)

SELECT
  p.ProductID,
  p.ProductName,
  c.CategoryName,
  SUM(oi.Quantity) AS total_qty_sold,
  SUM(oi.Total) AS total_sales
FROM `e1.products` AS p
INNER JOIN `e1.categories` AS c
  ON c.CategoryID = p.CategoryID
INNER JOIN `e1.order_items` AS oi
  ON oi.ProductID = p.ProductID
GROUP BY 
  p.ProductID,
  p.ProductName,
  c.CategoryName
ORDER BY total_qty_sold DESC
LIMIT 15;
