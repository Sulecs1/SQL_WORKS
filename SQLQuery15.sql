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

--KAr��l��� olmayan de�erler NULL gelir
--Full joinde iki taraftaki t�m de�erler gelir

