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
--Group By Having  Havig-> Gruplama i�lemi bittikten sonra �al���r asl�nda o da istenilen bir ko�uldur


select Color,Sum(SafetyStockLevel) as SafetyStockLevelSum ,Avg(ListPrice) as ListPriceAvg from Production.Product
--where color is not null
group by  Color 
having Color is not null
