-- getting all sales data where the car purchased was electric type

select sls.salesAmount, sls.soldDate, inv.colour, inv.year
from sales sls
inner join inventory inv 
ON 
sls.inventoryId = inv.inventoryId
where inv.modelId 
in (select modelId 
    from model 
    where 
    EngineType = 'Electric')