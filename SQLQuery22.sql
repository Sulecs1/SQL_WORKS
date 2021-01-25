create database Test
use Test
--Personeller
--id int PK,
--isim nvarchar(50) zorunlu  
--soyisim nvarchar(50) zorunlu
--emailAdresi nvarchar(50) zorunlu benzersiz
--cinsiyet nchar(1)
--olusturma tarihi zorunlu
--durum bool default true

CREATE TABLE PERSONEL(
id int primary key,
isim nvarchar(50) NOT NULL,
soyisim nvarchar(50) NOT NULL ,
emailAdresi nvarchar(50) unique  NOT NULL,
cinsiyet nchar(1),
OlusturmaTarihi datetime NOT NULL,
durum bit default 1


)


insert into PERSONEL(id,isim,soyisim,emailAdresi,cinsiyet,OlusturmaTarihi)
select 
PP.BusinessEntityID,
PP.FirstName,
PP.LastName,
(Lower(PP.FirstName)+' '+Lower(PP.LastName)+'@bcd.com') as EmailAdres,
HRE.Gender,
getdate() as Tarih
from AdventureWorks2017.Person.Person as PP
inner join
AdventureWorks2017.HumanResources.Employee HRE
on
PP.businessEntityId=HRE.businessEntityId



select * from PERSONEL

--Tabloya veri ekleme,silme,düzenleme
INSERT INTO PERSONEL
VALUES
(
2300,
'Esma',
'Akcay',
'esma@gmail.com',
'F',
'2009-01-01',
1
);


