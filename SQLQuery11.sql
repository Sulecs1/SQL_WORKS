use AdventureWorks2017
--Ýliþkisel veritabaný inner join iki tabloyu birbirine baðlama iþlemi


--Inner Join : Ýki veya dah fdazla tabloyu birleþtirir
--select *from tablo_1 inner tablo_2 on tablo1.kolonadi=tablo2.kolonadi

select *from Person.Person
select* from HumanResources.Employee

--Inner join Kullanýmý
select
* from Person.Person
inner join  HumanResources.Employee
on Person.BusinessEntityID=Employee.BusinessEntityID

--Inner join takma isim  verirsek
select
* from Person.Person as PP
inner join  HumanResources.Employee  as HRE
on PP.BusinessEntityID=HRE.BusinessEntityID

--iki tablodaki belirli alanlarý istiyorsam

select
pp.BusinessEntityID,
pp.FirstName,
pp.LastName,
pp.PersonType,
HRE.BirthDate,
HRE.JobTitle,
HRE.MaritalStatus
from Person.Person as PP
inner join  HumanResources.Employee  as HRE
on PP.BusinessEntityID=HRE.BusinessEntityID

