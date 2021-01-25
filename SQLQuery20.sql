use AdventureWorks2017

create table Personeller
(
id int primary key,
isim nvarchar(50),
soyisim nvarchar(50),
emailAdres nvarchar(50),
olusturmaTarihi datetime,
degistirmeTarihi datetime,
silindimi bit  --boolean cinsinden
)

select *from Personeller

--StoreProcedure öncesi.
insert into Personeller values (2,'sule','Akcay','suleakcay@gmail.com',GETDATE(),null,0)
--StoreProcedure Oluþturmak

--create proc procedure_adi
--(
----Parametrelerimiz
--@id int ,
--@isim nvarchar(50)
--)
--as 
--begin
----procedure body
--end

create proc PersonelKayitEkle
(
@id int,
@isim nvarchar(50),
@soyisim nvarchar(50),
@emailAdresi nvarchar(50)
)
with encryption
as 
begin

insert into Personeller (id,isim,soyisim,emailAdres,olusturmaTarihi,silindimi)values
(@id,@isim,@soyisim,@emailAdresi,getdate(),0)
end
select *from Personeller
exec PersonelKayitEkle @id=3,@isim='sule',@soyisim='Akcay',@emailAdresi='suleakcay@gmail.com'
alter  proc PersonelKayitEkle

(
@id int,
@isim nvarchar(50),
@soyisim nvarchar(50),
@emailAdresi nvarchar(50)
)
as 
begin

insert into Personeller (id,isim,soyisim,emailAdres,olusturmaTarihi,degistirmeTarihi,silindimi)values
(@id,@isim,@soyisim,@emailAdresi,getdate(),getdate(),0)
end

drop proc PersonelKayitEkle  --Prop silme