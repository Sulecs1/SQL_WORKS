use AdventureWorks2017
--distinct farkl� tablolardaki ayn� kay�tlar� tek kay�t gibi g�sterir
Go 
select distinct Color from Production.Product

select ProductID,ProductNumber,Name,Color from Production.Product
where
ProductID in
(
select distinct ProductID  from Sales.SalesOrderDetail

)

select Color,Sum(ListPrice) as ListPriceSum from Production.Product
where
ProductID in
(
select distinct ProductID  from Sales.SalesOrderDetail

)
group by Color