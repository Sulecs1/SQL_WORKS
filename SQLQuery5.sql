use AdventureWorks2017

--Like 
--Geni� arama yapmam�z� sa�lar ProductCode de�eri ab ile ba�layan de�eri getir ya da productCode i�inde 1290 olan kay�tlar� getir
--kolon like'%a' ->ba��nda  ne olursa olsun sonunda a olan kay�tlar� bana getir
--kolon like'%a'->ba�� a ile ba�layan ve devam�nda ne olursa olsun kay�tlar� bana getir
--kolon like '%a%'-> ba��nda ve sonunda ne olursa olsun i�erisinde a harfi ge�en t�m kay�tlar� bana getir


--kolon like '_a'->ilk karakteri ne olursa olsun 2.karakteri a olan kay�tlar� getir

select ProductNumber,Name,ProductID  from Production.Product
where ProductNumber like '%1'

select ProductNumber,Name,ProductID  from Production.Product
where ProductNumber like 'A%'

select ProductNumber,ProductID,Name  from Production.Product
where ProductNumber like '%A%'

select *from Production.Product
where ProductNumber like '_K-_64Y-40'
---AL�ST�RMALARR
--I.
select *from HumanResources.Employee
where NationalIDNumber like '%96%' and JobTitle like'Research%' and Gender like '%M%'

--II.
select *from Sales.SalesOrderDetail
where  ProductID>100 and ProductID<1000
and CarrierTrackingNumber like'%AE'