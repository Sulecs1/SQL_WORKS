select * from Person.Person

select top 10 * from Person.Person  --�lk 10 kayd� getirir

select top 10 BusinessEntityID,FirstName,EmailPromotion  from Person.Person  --�stenilen kolondan ilk 10 de�eri getirir
select top 10 BusinessEntityID,FirstName+''+LastName as fullName from Person.Person  --ilk 10 de�eri ald�k ve yeni isim verdim :)

select top 5 percent  * from Person.Person   --�lgili tablo kay�tlar�n�n y�zde onu kadar getir






