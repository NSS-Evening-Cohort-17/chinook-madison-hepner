SELECT
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer c 
JOIN invoice i
on c.CustomerId = i.CustomerId
WHERE i.BillingCountry is "Brazil"