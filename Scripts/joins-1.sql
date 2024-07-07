select emp.firstName, emp.lastName, manager.firstName, manager.lastName 
from employee as emp
left JOIN employee as manager
on emp.managerId = manager.employeeId


