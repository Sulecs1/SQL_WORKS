use Islemler
--yeni bir tablo oluþturmak için  tablo adý Uniq olmak zorunda

create table Kullanici
(
id int ,
isim varchar(255),
soyisim nvarchar(255),
)

--Alter Table komutu ile tablo düzenleme iþlemi...

alter table Kullanici
add OlusturmaTarihi datetime   --Kolon ekledim

alter table Kullanici
drop column OlusturmaTarihi  --Kolon sildim

alter table Kullanici
alter column isim nvarchar(300)

drop table Kullanici  --Tabloyu sildim

select *from Kullanici



