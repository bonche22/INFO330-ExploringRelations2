-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT c.FirstName || ' ' || c.LastName AS CustomerName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM   customers c
INNER JOIN invoices i ON c.CustomerId = i.CustomerId 
WHERE  c.Country = 'Brazil';