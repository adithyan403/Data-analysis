SELECT 
    c.CustomerName,
    c.Country,
    COUNT(o.OrderID) AS OrderCount,
    SUM(o.Quantity * o.UnitPrice) AS TotalSpend
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName, c.Country
HAVING COUNT(o.OrderID) >= 2
ORDER BY TotalSpend DESC;
