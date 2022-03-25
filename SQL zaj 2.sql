SELECT 'Hello SQL';

---
USE Northwind;
GO

SELECT EmployeeID, LastName, FirstName
FROM dbo.Employees;

SELECT * FROM dbo.Employees;



SELECT EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Photo, Notes, ReportsTo, PhotoPath

FROM dbo.Employees;

SELECT ProductID, UnitPrice, Quantity, UnitPrice*Quantity*(1-Discount) AS Total
FROM dbo.[Order Details];

SELECT ProductID, UnitPrice, Quantity, Total = UnitPrice*Quantity*(1-Discount) 
FROM dbo.[Order Details];

SELECT ProductID, UnitPrice
FROM dbo.[Order Details] AS OD;

SELECT OD.ProductID,  OD.UnitPrice,  OD.Quantity
FROM dbo.[Order Details] AS OD;

SELECT DISTINCT country, City
FROM dbo.Customers;

SELECT country, City
FROM dbo.Customers;

SELECT ProductID, UnitPrice, Quantity AS Iloœæ 
FROM dbo.[Order Details]
WHERE Quantity = 10;

/*SELECT ProductID, UnitPrice, Quantity AS Iloœæ 
FROM dbo.[Order Details]
WHERE Quantity = 10;*/

SELECT ProductID, UnitPrice, Quantity AS Iloœæ 
FROM dbo.[Order Details]
ORDER BY Quantity ASC;

SELECT ProductID, UnitPrice, Quantity AS Iloœæ 
FROM dbo.[Order Details]
ORDER BY Iloœæ DESC;

SELECT @@VERSION;



SELECT * , Description
FROM dbo.Categories;

SELECT * , PL_Description
FROM dbo.Categories;



END

FROM dbo.Categories;

SELECT * , 
CASE CategoryID
WHEN 1 THEN 'NAPOJE'
WHEN 2 THEN 'SLODKI'
WHEN 3 THEN 'DESERY'
WHEN 4 THEN 'SER'
WHEN 5 THEN 'CHLEB'
WHEN 6 THEN 'MIESO'
WHEN 7 THEN 'OWOCE'
WHEN 8 THEN 'WODOROSTY'
END AS PL_Description,
CASE
WHEN CategoryID IN (1,7,8) THEN 'ZDROWE'
ELSE 'NIEZDROWE'
END AS RODZAJJEDZENIA
FROM dbo.Categories;

SELECT * , 
CASE CategoryID
WHEN 1 THEN 'zdrowe'
WHEN 7 THEN 'zdrowe'
WHEN 8 THEN 'zdrowe'
ELSE 'niezdrowe'
END AS RodzajJedzenia
FROM dbo.Categories;-


--iloczyn kartezjanski
SELECT c.CompanyName, o.orderdate
FROM dbo.Customers as c
INNER JOIN dbo.Orders as o
ON o.CustomerID=c.CustomerID;

SELECT c.CompanyName, o.orderdate
FROM dbo.Customers as c
INNER JOIN dbo.Orders as o
ON o.CustomerID=c.CustomerID;

SELECT c.CompanyName, o.orderdate
FROM dbo.Customers as c
INNER JOIN dbo.Orders as o
ON o.CustomerID=c.CustomerID;

--ANSI 92 inner join
SELECT c.CompanyName, o.orderdate
FROM dbo.Customers as c
INNER JOIN dbo.Orders as o
ON o.CustomerID=c.CustomerID;

--cross join
SELECT c.CompanyName, o.orderdate
FROM dbo.Customers as c CROSS JOIN dbo.Orders as o

--LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL OUTER JOIN
SELECT soh.LineTotal, soh.ProductID
FROM Sales.SalesOrderDetail as soh
INNER JOIN Sales.SalesOrderHeader as

SELECT c.CompanyName, o.orderdate
FROM dbo.Customers as c 
FULL JOIN dbo.Orders as o
on o.CustomerID=c.CustomerID;

SELECT DISTINCT e.City, e.Country
FROM dbo.Customers as c
inner join dbo.Employees as e
on e.City = c.City and e.Country=c.Country;

SELECT e.LastName, e.FirstName, m.LastName as managerlastname, m.FirstName as managername
from dbo.Employees as e
inner join dbo.Employees as m 
on e.EmployeeID=m.ReportsTo;

products id
order details - unit pricce
orders ship via

SELECT ProductID, UnitPrice, ShipVia

SELECT p.ProductID, od.UnitPrice, o.ShipVia
from dbo.Products as p
inner join dbo.OrderDetails as od 
on p.ProductID=od.ProductID
inner join dbo.Orders as o
on od.OrderID=o.OrderID


polaczyc company name z shippers