SELECT
    i.InvoiceLineId,
    t.Name as Track_Name,
    art.Name as Artist_Name
FROM InvoiceLine i 
JOIN Track t 
ON i.TrackId = t.TrackId
JOIN Album al 
ON t.TrackId = al.AlbumId
JOIN Artist art 
ON art.ArtistId = al.ArtistId