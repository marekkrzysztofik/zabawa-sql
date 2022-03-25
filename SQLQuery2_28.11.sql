SELECT TOP(5) OrderID, CustomerID, OrderDate
FROM dbo.Orders
ORDER BY OrderDate DESC;

SELECT TOP(5) with ties OrderID, CustomerID, OrderDate
FROM dbo.Orders
ORDER BY OrderDate DESC;