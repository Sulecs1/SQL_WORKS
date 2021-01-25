--Table içersine yeni  bir kayýt eklemek :Insert

create table ogrenci
(
id int primary key,
isim nvarchar(50),
soyisim nvarchar(50),
emailAdres nvarchar(100)
)
select *from ogrenci

--insert into tablo_adi(kolon1,kolon2)  values ('',2,'')
insert into ogrenci (id,isim,soyisim) values (1,'Sule','Akcay')
--insert into tablo_adi values ('',2,'')
insert into ogrenci  values (2,'Sule','Akcay','sule.akcay@gmail.com')
--update komutu
--update tablo_adi
--set 
--isim='Esma'
--where 
--id=1

update ogrenci
set isim='Selcen',
 soyisim='Turgut'
where id =1


select *from ogrenci where id =1

--Delete komutu-;>
delete ogrenci
where id =2

delete ogrenci
where id =2 and isim='Sule'
