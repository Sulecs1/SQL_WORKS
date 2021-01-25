use AdventureWorks2017

--Like 
--Geniþ arama yapmamýzý saðlar ProductCode deðeri ab ile baþlayan deðeri getir ya da productCode içinde 1290 olan kayýtlarý getir
--kolon like'%a' ->baþýnda  ne olursa olsun sonunda a olan kayýtlarý bana getir
--kolon like'%a'->baþý a ile baþlayan ve devamýnda ne olursa olsun kayýtlarý bana getir
--kolon like '%a%'-> baþýnda ve sonunda ne olursa olsun içerisinde a harfi geçen tüm kayýtlarý bana getir


--kolon like '_a'->ilk karakteri ne olursa olsun 2.karakteri a olan kayýtlarý getir

select ProductNumber,Name,ProductID  from Production.Product
where ProductNumber like '%1'

select ProductNumber,Name,ProductID  from Production.Product
where ProductNumber like 'A%'

select ProductNumber,ProductID,Name  from Production.Product
where ProductNumber like '%A%'

select *from Production.Product
where ProductNumber like '_K-_64Y-40'
---ALÝSTÝRMALARR
--I.
select *from HumanResources.Employee
where NationalIDNumber like '%96%' and JobTitle like'Research%' and Gender like '%M%'

--II.
select *from Sales.SalesOrderDetail
where  ProductID>100 and ProductID<1000
and CarrierTrackingNumber like'%AE'