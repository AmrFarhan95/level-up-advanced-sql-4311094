select strftime('%Y', solddate), sum(salesamount) 
from sales
group by strftime('%Y', solddate)

--using CTE
with salesCTE as (
select strftime('%Y', solddate) as SalesYear, salesAmount 
from sales 
)

select SalesYear, sum(salesAmount)
from salesCTE 
group by salesYear