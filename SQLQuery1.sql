use AdventureWorks2017  --Database kullan�m� i�in TSQL k�sm�nda use komutunu kullanabiliriz
--Select : Tablolar�m�z i�erisindeki datalara ula�mam�z� sa�layan komut
--Select kolonlar�m�z�n isimleri/*from tablo_ad�

--select * from Person.Person   --tablonun i�ersinde bulunan t�m kolonlar� getirir

select

BusinessEntityID,
PersonType,
FirstName,
LastName

from Person.Person

SELECT
Name,
Color,
ProductID,
ProductNumber
FROM Production.Product

---------------------------------------------------------------------------------------------------------------
--Person.PErson tablosundan de�er �ektik
select Title,FirstName,LastName  from Person.Person
---Kolonlar� birle�tirmek i�in + operator�nden faydaland�k
select Title,FirstName +' '+ LastName from Person.Person
---Kolonlar�m�z� yeniden adland�rmak istiyoruz
select Title as  Unvan,FirstName Isim,LastName Soyisim from Person.Person

--Kolonlar�m�z� yeniden adland�rmak
select Title as  Unvan,FirstName Isim,LastName Soyisim,FirstName + ' '+ LastName as [Isim Soyisim] from Person.Person