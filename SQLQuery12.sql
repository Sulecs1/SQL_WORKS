use AdventureWorks2017
--Left Join  de�erleri birbirine e�it olan kay�tlar geliyor ama de�erleri biribirine e�it olmayan kay�tlar  NULL geliyor
select PP.BusinessEntityID,PP.FirstName,PP.LastName,
HE.*
from
Person.Person as PP
left join
HumanResources.Employee as HE
on PP.BusinessEntityID=HE.BusinessEntityID

select * from HumanResources.Employee
where BusinessEntityID=293

--ORNEK
select *from Production.Product
select * from Sales.SalesOrderDetail

select PP.ProductID,PP.Name,PP.ProductNumber,
SOD.*
from
Production.Product as PP
left join
Sales.SalesOrderDetail as SOD
on PP.ProductID=SOD.ProductID

select
PP.Color,
Sum(SOD.ProductId) as SumProductIdSum
from Production.Product PP left join
Sales.SalesOrderDetail SOD on
PP.ProductID=SOD.ProductID
group by PP.Color
