SELECT  emp.employeeId,
        emp.firstName,
        emp.lastName,
        MAX(sls.salesAmount) AS mostExpensiveCarSold,
        MIN(sls.salesAmount) AS leastExpensiveCarSold,
        count(*) as NoOfCarsSold,
        sls.soldDate
FROM sales sls
INNER JOIN employee emp
ON
sls.employeeId = emp.employeeId
where sls.soldDate <= date('2022-01-01','start of year')
group by emp.employeeId having NoOfCarsSold > 5
ORDER BY NoOfCarsSold DESC;
