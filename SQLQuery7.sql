--Order By S�ralama i�lemlerini ger�ekle�tirir

select *from Production.Product
where 
ProductNumber like '%20%'
--bunun azalarak ilerlemesini istiyorsam
select *from Production.Product
where 
ProductNumber like '%20%'
order by ProductID                   --Order By standart kullan�m� A-Z ye do�ru olur ben Z-A ya istiyorum

select *from Production.Product
where 
ProductNumber like '%20%'
order by ProductID  desc -- tersten s�ralama yapt�m


select *from Production.Product
where 
ProductNumber like '%20%'
order by ProductID  asc -- komutla A-Z ye s�ralama asc komutu

--A-Z : asc opsiyonel default olarak zaten a-z ye do�ru s�ralar
--Z-A : desc tersten s�ralar