SELECT
    e.FirstName, e.LastName,
    COUNT(c.CustomerId)
FROM Employee e 
LEFT JOIN Customer c 
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId