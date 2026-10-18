-- =====================================================
-- 4. Product Analysis
-- =====================================================
-- For every product that has been sold, calculate:
-- • ProductID, ProductName
-- • Number of orders containing the product
-- • Total quantity sold
-- • Average selling price
-- Display only products whose average selling price > ₹15,000
-- Sort by highest average selling price first

SELECT 
  p.ProductID,
  p.ProductName,
  COUNT(DISTINCT oi.OrderID) AS no_of_orders,
  SUM(oi.Quantity) AS sold_qty,
  AVG(oi.SellingPrice) AS avg_selling_price
FROM `e1.products` AS p
INNER JOIN `e1.order_items` AS oi
  ON p.ProductID = oi.ProductID
GROUP BY 
  p.ProductID,
  p.ProductName
HAVING AVG(oi.SellingPrice) > 15000
ORDER BY avg_selling_price DESC;
