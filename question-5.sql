-- (question-5.sql)

select * from invoice_items ;

select * from invoices ; 

select * from tracks ; 

select * from albums ;


select tracks.Name, count(*) as count
from invoice_items
join tracks
on tracks.TrackId = invoice_items.TrackId 
join invoices
on invoice_items.InvoiceId = invoices.InvoiceId
where invoices.InvoiceDate like '2013%' 
group by tracks.TrackId
order by count desc ;
