-- =====================================================
-- 6. Payment Method Analysis
-- =====================================================
-- For each payment method, calculate:
-- • Number of successful transactions
-- • Total successful payment amount
-- • Average successful transaction amount
-- • Maximum successful transaction amount
-- Display only payment methods having more than 10 successful transactions
-- Sort by average transaction amount (highest to lowest)

SELECT 
  Method,
  COUNT(*) AS success_transactions,
  SUM(Amount) AS total_amount,
  AVG(Amount) AS avg_amount,
  MAX(Amount) AS max_amount
FROM `e1.payments`
WHERE Status = 'success'          -- Fixed typo: was "successs"
GROUP BY Method
HAVING COUNT(*) > 10
ORDER BY avg_amount DESC;
