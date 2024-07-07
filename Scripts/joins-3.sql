select c.customerId, c.firstname, c.lastname, s.solddate, s.salesamount 
from customer c
join sales s on c.customerid = s.customerid

union 

select c.customerId, c.firstname, c.lastname, s.solddate, s.salesamount 
from customer c
left join sales s on c.customerid = s.customerid
where s.salesId is null

union 

select c.customerId, c.firstname, c.lastname, s.solddate, s.salesamount 
from customer c
right join sales s on c.customerid = s.customerid
where c.customerId is null


