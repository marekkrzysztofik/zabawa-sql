select*from dbo.czytelnik

SELECT Cz_ID, Czytelnik_Nazwisko,
Czytelnik_Imie, Status
FROM dbo.czytelnik
INNER JOIN dbo.osoba_status ON (Ty_ID=ID)

SELECT
Rok_studiow as Rok,
COUNT(Cz_id) as IleOsob
FROM dbo.czytelnik
GROUP BY Rok_studiow

select
