-- What was the most purchased track of 2013?
SELECT t.Name AS TrackName, COUNT(ii.InvoiceLineId) AS Purchases
FROM tracks t
INNER JOIN invoice_items ii ON t.TrackId = ii.TrackId
INNER JOIN invoices i ON ii.InvoiceId = i.InvoiceId
WHERE strftime('%Y', i.InvoiceDate) = '2013'
ORDER BY Purchases DESC
LIMIT 1;