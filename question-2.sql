-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.FirstName || ' ' || e.LastName AS SalesAgentFullName, i.InvoiceId
FROM employees e
INNER JOIN customers c ON e.EmployeeId = c.SupportRepId
INNER JOIN invoices i ON c.CustomerId = i.CustomerId;