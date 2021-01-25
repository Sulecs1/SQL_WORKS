use AdventureWorks2017
--SubQuery
select PP.BusinessEntityID, PP.FirstName,PP.LastName,HRE.BirthDate,HRE.MaritalStatus
from 
Person.Person PP inner join
HumanResources.Employee HRE
on PP.BusinessEntityID=HRE.BusinessEntityID


select
BusinessEntityID,
FirstName,
LastName,
(select BirthDate from HumanResources.Employee where BusinessEntityID=Person.BusinessEntityID) as BirtDate,  --SubQuery->iç sorgulama mantýðý
(select MaritalStatus from HumanResources.Employee where BusinessEntityID=Person.BusinessEntityID) as MarialStatus
from Person.Person
--Subquery de tek deðer dönmesi gerekir

select *from
(select*from Person.Person) as Persons
