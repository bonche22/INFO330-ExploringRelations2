-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName || ' ' || e.LastName AS SalesAgentName, SUM(i.Total) AS TotalSales
FROM employees e
INNER JOIN customers c ON e.EmployeeId = c.SupportRepId
INNER JOIN invoices i ON c.CustomerId = i.CustomerId
WHERE strftime('%Y', i.InvoiceDate) = '2010'
GROUP BY e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1;