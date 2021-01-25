--Order By Sýralama iþlemlerini gerçekleþtirir

select *from Production.Product
where 
ProductNumber like '%20%'
--bunun azalarak ilerlemesini istiyorsam
select *from Production.Product
where 
ProductNumber like '%20%'
order by ProductID                   --Order By standart kullanýmý A-Z ye doðru olur ben Z-A ya istiyorum

select *from Production.Product
where 
ProductNumber like '%20%'
order by ProductID  desc -- tersten sýralama yaptým


select *from Production.Product
where 
ProductNumber like '%20%'
order by ProductID  asc -- komutla A-Z ye sýralama asc komutu

--A-Z : asc opsiyonel default olarak zaten a-z ye doðru sýralar
--Z-A : desc tersten sýralar