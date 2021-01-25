use AdventureWorks2017
--Right join 2.tabloda olan de�erleri getiriyor ilk tabloda olmayan de�erleri NULL getiriyor


select 
SSP.BusinessEntityID,
SSP.Bonus,
PP.FirstName,
PP.LastName,
PP.BusinessEntityID
from
Sales.SalesPerson SSP
right join
Person.Person PP
on SSP.BusinessEntityID=PP.BusinessEntityID
