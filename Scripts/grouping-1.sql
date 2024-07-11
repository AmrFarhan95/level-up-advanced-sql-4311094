select e.employeeId, e.firstName, e.lastName, count(s.inventoryId) soldCarsCount from employee as e
join sales as s on e.employeeId = s.employeeId
join inventory i on s.inventoryId = i.inventoryId
group by e.employeeId, e.firstName, e.lastName
order by count(s.inventoryId) desc
