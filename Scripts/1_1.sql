-- Creating a table with employee details with their immediate managers
SELECT emp.firstName,
      emp.lastName,
      emp.title, 
      mng.firstName as manager_fname, 
      mng.lastName as manager_lname
FROM employee emp
inner join employee mng 
on 
emp.managerId = mng.employeeId;
