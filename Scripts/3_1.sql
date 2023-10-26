-- Getting all the sales data per year by using cte

WITH cte as (
SELECT strftime('%Y', soldDate) AS soldYear, salesAmount
FROM sales
)
SELECT soldYear, 
format('$%.2f', sum(salesAmount)) AS AnnualSales
FROM cte
GROUP BY soldYear