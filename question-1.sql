-- (question-2.sql)

select * from employees ; 

select * from invoices ; 

select * from customers ; 


select employees.FirstName, employees.LastName, invoices.*
from employees
join customers 
on employees.EmployeeId = customers.SupportRepId
join invoices 
on customers.CustomerId = invoices.CustomerId ; 
