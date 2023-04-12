-- (question-7.sql)

select * from invoice_items ;

select * from invoices ; 

select * from tracks ; 

select * from albums ;


select tracks.TrackId, tracks.Name, tracks.Composer
from tracks
where TrackId not in (
select distinct tracks.TrackId
from invoice_items 
join tracks
on tracks.TrackId = invoice_items.TrackId); 
