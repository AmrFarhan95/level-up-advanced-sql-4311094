select emp.*, s.salesId from employee as emp
left join sales as s on emp.employeeId = s.employeeId
where emp.title = 'Sales Person'	and s.salesId is NULL
