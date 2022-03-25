SELECT ProductNumber, ProductLine, Category=
CASE ProductLine
WHEN 'R' THEN 'ROAD'
WHEN 'M' THEN 'MOUNTAIN'
WHEN 'S' THEN 'Other Sale Item'
WHEN 'T' THEN 'Touring'
ELSE 'NotForSale'
END

FROM Production.Product
ORDER BY ProductLine DESC;

SELECT BusinessEntityID, SalariedFlag
FROM HumanResources.Employee
ORDER BY CASE SalariedFlag WHEN 1 THEN BusinessEntityID END DESC,
CASE WHEN SalariedFlag = 0 THEN BusinessEntityID END ASC;



--ANSI 92 inner join
SELECT c.CompanyName, o.orderdate
FROM dbo.Customers as c
INNER JOIN dbo.Orders as o
ON o.CustomerID=c.CustomerID;

--cross join
SELECT c.CompanyName, o.orderdate
FROM dbo.Customers as c CROSS JOIN dbo.Orders as o

--LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL OUTER JOIN  
SELECT sod.LineTotal, sod.ProductID, soh.CustomerID, soh.DueDate
FROM Sales.SalesOrderDetail as sod
full outer join Sales.SalesOrderHeader as soh
on soh.SalesOrderID=sod.SalesOrderID
order by soh.CustomerID;

SELECT c.CompanyName, o.orderdate
FROM dbo.Customers as c 
FULL JOIN dbo.Orders as o
on o.CustomerID