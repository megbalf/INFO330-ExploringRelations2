-- (question-4.sql)

select * from employees ; 

select * from invoices ; 

select * from customers ; 


select employees.FirstName, employees.LastName, sum(invoices.Total)
from employees
join customers 
on employees.EmployeeId = customers.SupportRepId
join invoices 
on customers.CustomerId = invoices.CustomerId 
group by employees.FirstName  ;