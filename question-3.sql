-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT t.Name AS TrackName, ar.Name AS ArtistName, ii.*
FROM invoice_items ii
INNER JOIN tracks t ON t.TrackId = ii.TrackId
INNER JOIN albums al ON t.AlbumId = al.AlbumId
INNER JOIN artists ar ON al.ArtistId = ar.ArtistId;