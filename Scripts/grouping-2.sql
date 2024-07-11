select e.employeeid, e.firstName, e.lastName
  , max(s.salesAmount) maxPriceCar, min(s.salesAmount) minPriceCar 
  from employee as e
join sales as s on e.employeeid = s.employeeid
where s.soldDate >= date('now','start of year')
group by e.employeeid, e.firstName, e.lastName