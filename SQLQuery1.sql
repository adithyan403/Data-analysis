use SQLPracticeDB;
select * from Customers;
SELECT c.CustomerName, SUM(o.Quantity * o.UnitPrice) AS TotalRevenue
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName;
SELECT c.CustomerName, AVG(o.Quantity * o.UnitPrice) AS AvgOrderValue
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName;
SELECT c.Country, COUNT(o.OrderID) AS OrderCount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Country;
