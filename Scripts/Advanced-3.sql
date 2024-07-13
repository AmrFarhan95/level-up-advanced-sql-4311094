select * from sales sls
join inventory inv on sls.inventoryId = inv.inventoryId
where inv.modelId in (
select modelid from model
where EngineType = 'Electric'
)
