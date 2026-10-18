-- =====================================================
-- 5. Category MRP Analysis
-- =====================================================
-- For every category, calculate:
-- • CategoryName
-- • Number of products
-- • Minimum MRP
-- • Maximum MRP
-- • Difference between maximum and minimum MRP
-- Display only categories where MRP difference > ₹10,000

SELECT 
  c.CategoryName,
  COUNT(DISTINCT p.ProductID) AS no_of_products,
  MIN(p.MRP) AS min_MRP,
  MAX(p.MRP) AS max_MRP,
  (MAX(p.MRP) - MIN(p.MRP)) AS mrp_diff
FROM `e1.categories` AS c
INNER JOIN `e1.products` AS p
  ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName
HAVING (MAX(p.MRP) - MIN(p.MRP)) > 10000
ORDER BY mrp_diff DESC;
