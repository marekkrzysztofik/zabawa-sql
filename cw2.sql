CREATE TABLE dbo.wydzialy
(ID INT,
Akronim VARCHAR(4) NOT NULL,
Wydzial VARCHAR(30) NOT NULL,
CONSTRAINT Kluczyk PRIMARY KEY(ID))

SELECT* FROM dbo.wydzialy
INSERT INTO dbo.wydzialy (ID, Akronim, Wydzial)
VALUES (1, 'ZIE', 'Wydzia³ Zarz¹dzania i Ekonomii')
INSERT INTO dbo.wydzialy VALUES (2, 'MECH', 'Wydzia³ Mechaniczny')
--INSERT INTO dbo.wydzialy (ID, Akronim)
--VALUES (1, 'ZIE')
DROP TABLE dbo.wydzialy

CREATE TABLE dbo.wydzialy
(ID INT PRIMARY KEY,
Akronim VARCHAR(4) NOT NULL,
Wydzial VARCHAR(30) NOT NULL DEFAULT 'Wydzia³
PG')
INSERT INTO dbo.wydzialy (ID, Akronim)
VALUES (1, 'CHUJ')
SELECT* FROM dbo.wydzialy
DROP TABLE dbo.wydzialy

CREATE TABLE dbo.wydzialy
(ID INT IDENTITY PRIMARY KEY CHECK (ID>0 and ID<999),
Akronim VARCHAR(4) NOT NULL UNIQUE,
Wydzial VARCHAR(30),
CONSTRAINT SprawdzamWydzial CHECK (Wydzial LIKE
('Wydzial%'))
)


INSERT INTO dbo.wydzialy
VALUES ('CHUJ', 'Wydzial penisera')
INSERT INTO dbo.wydzialy VALUES ('MECH', 'Wydzial Mechaniczny')
SELECT*FROM dbo.wydzialy
SELECT*FROM dbo.ksiazka where Miejsce_wydania is null

update dbo.ksiazka
set Miejsce_wydania='miejsce nieznane'
where Miejsce_wydania is null
select*from dbo.ksiazka
select * from dbo.wydzialy
alter table dbo.wydzialy
add Ilosc_studentow int
alter table dbo.wydzialy
drop column Ilosc_studentow

create table dbo.osoba_status
(ID INT IDENTITY PRIMARY KEY,
Status varchar(10) not null)
select*from dbo.osoba_status
insert into dbo.osoba_status
values ('pracownik')
insert into dbo.osoba_status
values ('student')

create table dbo.wypozyczenia
(Ksiazka_Sygnatura int,
Czytelnik_Id int,
Data_wypozyczenia datetime default GetDate(),
Data_Oddania datetime,
CONSTRAINT Kluczyk primary key(Ksiazka_Sygnatura, Czytelnik_Id, Data_wypozyczenia))
select*from dbo.wypozyczenia
