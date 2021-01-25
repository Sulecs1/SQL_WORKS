use AdventureWorks2017
--Full Join

select *from Person.Person
select* from Sales.SalesPerson

select
Person.FirstName,
Person.LastName,
SalesPerson.*
from Person.Person
full join 
Sales.SalesPerson
on Person.BusinessEntityID=SalesPerson.BusinessEntityID

--KArþýlýðý olmayan deðerler NULL gelir
--Full joinde iki taraftaki tüm deðerler gelir

