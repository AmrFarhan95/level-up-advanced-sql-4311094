select e.employeeId, e.firstName, e.lastName, count(s.inventoryId) carsSold from employee e
join sales s on e.employeeId = s.employeeId
group by e.employeeId, e.firstName, e.lastName
having carsSold > 5
order by carsSold desc