SELECT
    SUM(i.Total) Total,
    i.BillingCountry
FROM Employee e 
JOIN Customer c 
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i 
ON i.CustomerId = c.CustomerId
GROUP BY BillingCountry
ORDER BY Total DESC
LIMIT 1



-- WITH AllSales AS (
--     SELECT
--     SUM(i.Total) Total,
--     i.BillingCountry
-- FROM Invoice i
-- JOIN Customer c 
-- ON c.SupportRepId = e.EmployeeId
-- JOIN Invoice i 
-- ON i.CustomerId = c.CustomerId
-- GROUP BY e.FirstName, e.LastName
--     )


-- SELECT
--     MAX(Total),
--     i.BillingCountry,
-- FROM AllSales