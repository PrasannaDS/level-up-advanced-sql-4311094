--get required data for each employee


SELECT emp.firstName, emp.lastName,
sum(CASE 
      WHEN strftime('%m',soldDate) = '01'
      THEN salesAmount END) AS JanSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '02'
      THEN salesAmount END) AS FebSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '03'
      THEN salesAmount END) AS MarSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '04'
      THEN salesAmount END) AS AprSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '05'
      THEN salesAmount END) AS MaySales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '06'
      THEN salesAmount END) AS JunSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '07'
      THEN salesAmount END) AS JulSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '08'
      THEN salesAmount END) AS AugSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '09'
      THEN salesAmount END) AS SeptSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '10'
      THEN salesAmount END) AS OctSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '11'
      THEN salesAmount END) AS NovSales,
sum(CASE 
      WHEN strftime('%m',soldDate) = '12'
      THEN salesAmount END) AS DecSales
FROM sales sls 
INNER JOIN employee emp
ON
emp.employeeId = sls.employeeId
where sls.soldDate <= CURRENT_DATE
group by emp.employeeId
order by emp.employeeId