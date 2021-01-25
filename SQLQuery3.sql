--where kullanýmý
use AdventureWorks2017
select* from Person.Person


-- person tablosunda personType deðeri EM olan kayýtlarý getir

--where * from tablo_adi where þart veya þartlatýmýzý yazarýz

select* from Person.Person
where 
PersonType='EM'

--Örnek
select *from Person.Person
where 
FirstName='Ken'

--
select Name ,ProductNumber,Color from Production.Product
--color kolonunda deðeri black olan kayýtlarýn name,product number ve color deðerlerini bana getir
where 
Color='black'
--Birden fazla þart var ise
--c# &&--Sql and  her þartýn saglanmasý gerekir ve
-- c# ||sql or veya operatorü

--and operatörü

select  *from Production.Product
where 
Color='black' and SafetyStockLevel=500 --and oðeratörü ile birbirine baðlanan tüm þartlar çalýþmalý


--or operatörü

select  *from Production.Product
where 
Color='black' or SafetyStockLevel=500 --or þartlardanbir tanesi doðru ise  çalýþýr

--Where  dersi--3
select  *from Production.Product
where 
SafetyStockLevel >500
------------------------------------------------------
select  *from Production.Product
where 
SafetyStockLevel >=500
------------------------------------------------------

select  *from Production.Product
where 
SafetyStockLevel<500

---------------------------------------------------
select  *from Production.Product
where 
SafetyStockLevel<=500
-----------------------------------------------------
select  *from Production.Product
where 
Color='black' and SafetyStockLevel=500

------------------------------------------------------
-- != Eþit deðildir

select *from Production.Product
where
SafetyStockLevel!=500


select *from Production.Product
where
SafetyStockLevel!=500 and  Color='Black'
------------------------------------------------
--ÖDEV ALIÞTIRMA
select top 10 *from Production.Product
where 
Color='Yellow' or Color='Black'

select ProductID,Color,Name,ProductNumber,StandardCost from Production.Product
where
Color='Multi' and StandardCost>6

--List price deðeri 0 dan büyük olan kayýtlarýn toplam adedinin %10 oranýna denk gelen kayýtlarý getir
select top 10 percent *from Production.Product
where
ListPrice>0