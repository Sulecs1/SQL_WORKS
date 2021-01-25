use AdventureWorks2017
--Right join 2.tabloda olan deðerleri getiriyor ilk tabloda olmayan deðerleri NULL getiriyor


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
