use AdventureWorks2017


select* from Production.Product
select* from Production.ProductSubcategory
select* from Production.ProductCategory


select 
pp.ProductID,
pp.Name,
pp.Color,
pp.ListPrice,
ps.Name,
pc.Name,
ps.ProductSubcategoryID
from Production.Product pp
full join Production.ProductSubcategory ps
on ps.ProductSubcategoryID=pp.ProductSubcategoryID
inner join Production.ProductCategory PC
on ps.ProductCategoryID=PC.ProductCategoryID