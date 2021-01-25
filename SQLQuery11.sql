use AdventureWorks2017
--�li�kisel veritaban� inner join iki tabloyu birbirine ba�lama i�lemi


--Inner Join : �ki veya dah fdazla tabloyu birle�tirir
--select *from tablo_1 inner tablo_2 on tablo1.kolonadi=tablo2.kolonadi

select *from Person.Person
select* from HumanResources.Employee

--Inner join Kullan�m�
select
* from Person.Person
inner join  HumanResources.Employee
on Person.BusinessEntityID=Employee.BusinessEntityID

--Inner join takma isim  verirsek
select
* from Person.Person as PP
inner join  HumanResources.Employee  as HRE
on PP.BusinessEntityID=HRE.BusinessEntityID

--iki tablodaki belirli alanlar� istiyorsam

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

