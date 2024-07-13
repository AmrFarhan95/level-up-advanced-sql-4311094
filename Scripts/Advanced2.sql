with cte as (
select emp.employeeId
-- , concat(emp.firstName, emp.lastName) employee
, emp.firstName
, emp.lastName
, strftime('%m', soldDate) salesMonth
, strftime('%Y', soldDate) salesYear
, salesAmount 
from sales s
join employee emp on s.employeeId = emp.employeeId
where salesYear = '2021'
)



select firstName
, lastName
, sum(case when salesMonth = '01' then salesAmount end) JanSales
, sum(case when salesMonth = '02' then salesAmount end) FebSales
, sum(case when salesMonth = '03' then salesAmount end) MarSales
, sum(case when salesMonth = '04' then salesAmount end) AprSales
, sum(case when salesMonth = '05' then salesAmount end) MaySales
, sum(case when salesMonth = '06' then salesAmount end) JunSales
, sum(case when salesMonth = '07' then salesAmount end) JulSales
, sum(case when salesMonth = '08' then salesAmount end) AugSales
, sum(case when salesMonth = '09' then salesAmount end) SepSales
, sum(case when salesMonth = '10' then salesAmount end) OctSales
, sum(case when salesMonth = '11' then salesAmount end) NovSales
, sum(case when salesMonth = '12' then salesAmount end) DecSales
 from cte
group by employeeId, firstName, lastName
order by employeeId