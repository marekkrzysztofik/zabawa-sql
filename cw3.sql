select *from dbo.czytelnik
delete from dbo.czytelnik
where Typ_czytelnika='student'
and Rok_studiow is null

delete from dbo.ksiazka
where Autor_Nazwisko like 'W%' and Miejsce_wydania is not null
select* from dbo.ksiazka

select* from dbo.czytelnik
select* from dbo.czytelnik
where Telefon is null and Adres!='Sopot' 
select distinct Wydzial from dbo.czytelnik
select * from dbo.wydzialy
drop table dbo.wydzialy
CREATE TABLE dbo.wydzialy
(ID INT IDENTITY PRIMARY KEY CHECK (ID>0 and ID<999),
Akronim VARCHAR(4) NOT NULL UNIQUE,
Wydzial VARCHAR(30))
select * from dbo.wydzialy
insert into dbo.wydzialy
values ('ARC', 'Wydzial Architektury')

insert into dbo.wydzialy
values ('CHE', 'Wydzial Chemiczny')
insert into dbo.wydzialy
values ('ETI', 'Wydzial Elektroniki')
insert into dbo.wydzialy
values ('FIZ', 'Wydzial Fizyczny')
insert into dbo.wydzialy
values ('INZ', 'Wydzial Inzy')
insert into dbo.wydzialy
values ('MEC', 'Wydzial Mechaniczny')
insert into dbo.wydzialy
values ('OIO', 'Wydzial Oceanografi')
insert into dbo.wydzialy
values ('ZIE', 'Wydzial Zielarstwa i Eliksirów')
select * from dbo.wydzialy
select*from dbo.czytelnik
update dbo.czytelnik
set Wydzial=8
where Wydzial='ZIE'
update dbo.czytelnik
set Wydzial=7
where Wydzial='OIO'
update dbo.czytelnik
set Wydzial=6
where Wydzial='MEC'
update dbo.czytelnik
set Wydzial=5
where Wydzial='INZ'
update dbo.czytelnik
set Wydzial=4
where Wydzial='FIZ'
update dbo.czytelnik
set Wydzial=3
where Wydzial='ETI'
update dbo.czytelnik
set Wydzial=2
where Wydzial='CHE'
update dbo.czytelnik
set Wydzial=1
where Wydzial='ARC'

select*from dbo.czytelnik
alter table dbo.czytelnik
alter column Wydzial Int

create table dbo.osoba_status
(ID int identity, Status varchar(10) not null)
select*from dbo.osoba_status
select*from dbo.filia

update dbo.filia
set Wydzial=8
where Wydzial='ZIE'
update dbo.filia
set Wydzial=7
where Wydzial='OIO'
update dbo.filia
set Wydzial=6
where Wydzial='MEC'
update dbo.filia
set Wydzial=5
where Wydzial='INZ'
update dbo.filia
set Wydzial=4
where Wydzial='FIZ'
update dbo.filia
set Wydzial=3
where Wydzial='ETI'
update dbo.filia
set Wydzial=2
where Wydzial='CHE'
update dbo.filia
set Wydzial=1
where Wydzial='ARC'

ALTER TABLE dbo.czytelnik
ADD CONSTRAINT RelacjaWydzialy FOREIGN
KEY(Wydzial) REFERENCES dbo.wydzialy(ID)
select*from dbo.wypozyczenia
order by Czytelnik_Id asc

alter table dbo.wypozyczenia
alter column Czytelnik_Id Int

alter table dbo.wypozyczenia
alter column Data_wypozyczenia date

