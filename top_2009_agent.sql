SELECT
    SalesRep ,
    MAX(TotalSales)
FROM
    (
    SELECT
    SUM(i.Total) as TotalSales,
    e.FirstName || ' ' || e.LastName as SalesRep
    FROM Employee e 
    JOIN Customer c 
    ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i 
    ON c.CustomerId = i.CustomerId
    AND i.InvoiceDate LIKE '2009%'
    GROUP BY SalesRep
)