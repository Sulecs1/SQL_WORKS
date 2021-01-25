select sum(SafetyStockLevel) from Production.Product  --Kolon içerisindeki toplam deðeri veir

select *from Sales.SalesOrderHeader
select *from Sales.SalesOrderDetail

select 
SSOH.SalesPersonID
from 
Sales.SalesOrderHeader SSOH
inner join 
Sales.SalesOrderDetail SSOD
on SSOH.SalesOrderID=SSOD.SalesOrderDetailID

select SubTotal from Sales.SalesOrderHeader

select *from HumanResources.Employee
--Upper&Lower
select
Upper(LoginID) as buyukharfOlacak
from HumanResources.Employee

--Kucuk harf
select
Lower(LoginID) as buyukharfOlacak
from HumanResources.Employee

--LEN KULLANIMI
--karakter uzunluðunu verir

select
LEN(LoginID) as karakterUzunlugu
from HumanResources.Employee
--Concat  iki stringi birlestirme

select *from Person.Person

select 
FirstName+' '+LastName  as [isim Soyisim],
Concat(FirstName,'',LastName) as ÝsimSoyisim,
Concat(FirstName,SPACE(1),LastName) as [Ýsim Soyisim]
from Person.Person

--Substring veri aralýðýný bize getirir

select 
Name,
SUBSTRING(Name,1,3)
from Production.Product

--LEFT RIGHT KULLANIMI

select 
Name,
SUBSTRING(Name,1,3),
UPPER(Substring(Name,1,3)),
RIGHT(NAME,3)  --sagdan baþla 3 kelime al
from Production.Product

select 
Name,
SUBSTRING(Name,1,3),
UPPER(Substring(Name,1,3)),
LEFT(NAME,3)  --soldan baþla 3 kelime al
from Production.Product


