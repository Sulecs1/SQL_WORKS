--Group By
select *from Production.Product
where 
Color is not null


select Color,Sum(SafetyStockLevel) as SafetyStockLevelSum ,Avg(ListPrice) as ListPriceAvg from Production.Product
where color is not null
group by  Color 

select Color,Sum(SafetyStockLevel) as SafetyStockLevelSum ,Avg(ListPrice) as ListPriceAvg from Production.Product
where color is not null
group by  Color 
having Color!='Black'
--Group By Having  Havig-> Gruplama iþlemi bittikten sonra çalýþýr aslýnda o da istenilen bir koþuldur


select Color,Sum(SafetyStockLevel) as SafetyStockLevelSum ,Avg(ListPrice) as ListPriceAvg from Production.Product
--where color is not null
group by  Color 
having Color is not null
