-- (question-3.sql)

select * from invoice_items ;

select * from artists ; 

select * from tracks ; 

select * from albums ;

select tracks.Name, artists.Name, invoice_items.*
from tracks 
join invoice_items
on tracks.TrackId = invoice_items.TrackId
join albums
on albums.AlbumId = tracks.AlbumId
join artists
on artists.ArtistId = albums.ArtistId ; 
