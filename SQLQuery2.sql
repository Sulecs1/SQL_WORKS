select * from Person.Person

select top 10 * from Person.Person  --Ýlk 10 kaydý getirir

select top 10 BusinessEntityID,FirstName,EmailPromotion  from Person.Person  --Ýstenilen kolondan ilk 10 deðeri getirir
select top 10 BusinessEntityID,FirstName+''+LastName as fullName from Person.Person  --ilk 10 deðeri aldýk ve yeni isim verdim :)

select top 5 percent  * from Person.Person   --Ýlgili tablo kayýtlarýnýn yüzde onu kadar getir






