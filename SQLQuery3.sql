--where kullan�m�
use AdventureWorks2017
select* from Person.Person


-- person tablosunda personType de�eri EM olan kay�tlar� getir

--where * from tablo_adi where �art veya �artlat�m�z� yazar�z

select* from Person.Person
where 
PersonType='EM'

--�rnek
select *from Person.Person
where 
FirstName='Ken'

--
select Name ,ProductNumber,Color from Production.Product
--color kolonunda de�eri black olan kay�tlar�n name,product number ve color de�erlerini bana getir
where 
Color='black'
--Birden fazla �art var ise
--c# &&--Sql and  her �art�n saglanmas� gerekir ve
-- c# ||sql or veya operator�

--and operat�r�

select  *from Production.Product
where 
Color='black' and SafetyStockLevel=500 --and o�erat�r� ile birbirine ba�lanan t�m �artlar �al��mal�


--or operat�r�

select  *from Production.Product
where 
Color='black' or SafetyStockLevel=500 --or �artlardanbir tanesi do�ru ise  �al���r

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
-- != E�it de�ildir

select *from Production.Product
where
SafetyStockLevel!=500


select *from Production.Product
where
SafetyStockLevel!=500 and  Color='Black'
------------------------------------------------
--�DEV ALI�TIRMA
select top 10 *from Production.Product
where 
Color='Yellow' or Color='Black'

select ProductID,Color,Name,ProductNumber,StandardCost from Production.Product
where
Color='Multi' and StandardCost>6

--List price de�eri 0 dan b�y�k olan kay�tlar�n toplam adedinin %10 oran�na denk gelen kay�tlar� getir
select top 10 percent *from Production.Product
where
ListPrice>0