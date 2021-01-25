use AdventureWorks2017  --Database kullanýmý için TSQL kýsmýnda use komutunu kullanabiliriz
--Select : Tablolarýmýz içerisindeki datalara ulaþmamýzý saðlayan komut
--Select kolonlarýmýzýn isimleri/*from tablo_adý

--select * from Person.Person   --tablonun içersinde bulunan tüm kolonlarý getirir

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
--Person.PErson tablosundan deðer çektik
select Title,FirstName,LastName  from Person.Person
---Kolonlarý birleþtirmek için + operatoründen faydalandýk
select Title,FirstName +' '+ LastName from Person.Person
---Kolonlarýmýzý yeniden adlandýrmak istiyoruz
select Title as  Unvan,FirstName Isim,LastName Soyisim from Person.Person

--Kolonlarýmýzý yeniden adlandýrmak
select Title as  Unvan,FirstName Isim,LastName Soyisim,FirstName + ' '+ LastName as [Isim Soyisim] from Person.Person