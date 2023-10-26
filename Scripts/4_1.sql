-- Rank each sales person based on the sales that he/she made

SELECT e.employeeId, e.firstName, e.lastName, mdl.model, count(model) as NoOfSales,
dense_rank() 
over(partition by sls.employeeId order by count(model) desc) as rnk
from sales sls
inner join employee e 
on e.employeeId = sls.employeeId
inner join inventory inv 
on inv.inventoryId = sls.inventoryId
inner join model mdl 
on mdl.modelId = inv.modelId
where e.title = 'Sales Person'
group by sls.employeeId, e.firstName, e.lastName, mdl.model

