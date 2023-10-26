-- all the data of sales and customers
SELECT cus.firstName, cus.lastName,cus.email, sls.soldDate, sls.salesAmount
FROM customer cus
INNER JOIN sales sls
ON cus.customerId = sls.customerId
UNION
SELECT cus.firstName, cus.lastName, cus.email, sls.soldDate, sls.salesAmount
FROM customer cus
LEFT JOIN sales sls
ON cus.customerId = sls.customerId
where sls.salesId is NULL
UNION
SELECT cus.firstName, cus.lastName, cus.email, sls.soldDate, sls.salesAmount
FROM sales sls
LEFT JOIN customer cus
ON cus.customerId = sls.customerId
where cus.customerId is NULL

