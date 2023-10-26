-- Getting salespersons list, who has the zero sales on them

SELECT emp.firstName,emp.lastName,emp.title,emp.startDate, sls.salesId
FROM employee emp
left join sales sls 
on
sls.employeeId = emp.employeeId
where sls.salesId is NULL AND emp.title = 'Sales Person';

SELECT * from employee;