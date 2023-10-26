-- Getting the total number of cars each employee sold

SELECT emp.employeeId, emp.firstName, emp.lastname, count(*) as NoOfCarsSold
FROM employee emp
INNER JOIN sales sls
ON emp.employeeId = sls.employeeId

-- using group by and order by cluses to aggregate the data to get desired result set

SELECT emp.employeeId, emp.firstName, emp.lastname, count(*) as NoOfCarsSold
FROM sales sls
INNER JOIN employee emp
ON emp.employeeId = sls.employeeId
GROUP BY emp.employeeId
ORDER BY NoOfCarsSold desc;