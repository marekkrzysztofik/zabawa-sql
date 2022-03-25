use master;
go

--drop database if exists NewStar;
go

create database NewStar;
go

use NewStar;
go
------------------------------------------------------------------
--drop schema if exists Products
--go

CREATE SCHEMA Products AUTHORIZATION dbo;
go
-------------
--drop table if exists Products.Vendor;
--go

CREATE TABLE Products.Vendor (
VendorID INT NOT NULL,
VendorName nvarchar(100) NOT NULL,
City nvarchar(15) NOT NULL
);
go

--DROP SCHEMA IF EXISTS Products;
go
CREATE SCHEMA Products AUTHORIZATION dbo;
go
---------------
--DROP TABLE IF EXISTS Production.Products;

CREATE SCHEMA Production AUTHORIZATION dbo;
go

CREATE TABLE Production.Products
(
ProdID INT NOT NULL,
ProdName varchar(100) NOT NULL,
CatID INT NOT NULL,
Price money NOT NULL,
ProdDescription varchar(50) NULL,
CONSTRAINT PK_Products_ProdID PRIMARY KEY (ProdID)
);
go
-------------------------
--DROP TABLE IF EXISTS Production.Categories;
go

CREATE TABLE Production.Categories (
CatID INT IDENTITY (1,1) NOT NULL,
CatName nvarchar(max) NOT NULL,
CatDescription nvarchar(max),
CONSTRAINT PK_Categories_CatID PRIMARY KEY (CatID)
);
go
----------------------------------------------------------
SELECT * FROM Production.Products;
SELECT * FROM Production.Categories;
----------------------------------------------------------
INSERT INTO Production.Products VALUES (760, 'BMW',1,165.00,'X5'),
(769, 'BM',1,165.00,'X5'),
(763, 'BMW',2,165.00,'X5')

INSERT INTO Production.Categories (CatName, CatDescription) VALUES ('KOMBI','LONG CAR'),
('SEDAN','HATCHBACK'),
('PICKUP','COUPE');
GO
-------------------------------------------------------------
ALTER TABLE Production.Products WITH CHECK
ADD CONSTRAINT FK_Products_CatID FOREIGN KEY (CatID)
REFERENCES Production.Categories (CatID);
go
