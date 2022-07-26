SELECT
    i.Total,
    c.LastName as CustomerLastName,
    c.Country,
    e.FirstName || ' ' || e.LastName as AgentFullName
FROM Invoice i 
JOIN Customer c 
JOIN Employee e 