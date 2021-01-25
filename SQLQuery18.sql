--NOT NULL :  

create table constraindNotnull
(

id int not null,
isim nvarchar(50),
soyisim nvarchar(50) not null
)
--Uniqe :
create table constraintUnique
(
id int not null unique,
isim  nvarchar(50),
soyisim nvarchar(50),
emailAdres nvarchar(100) unique
)

--Primary Key :
create table constraintPrimaryKey
(
id int  primary key,   --not null unique
isim nvarchar(50),
soyisim nvarchar(50)
)

--check

create table constraintcheck
(
id int  primary key,   --not null unique
isim nvarchar(50),
soyisim nvarchar(50),
yas int not null check(yas>=15)

)

--Default  
create  table constraintdefault
(
id int  primary key,   --not null unique
isim nvarchar(50) default 'isim  deðeri girilmedi!',
soyisim nvarchar(50),
olusuturmaTarihi datetime default getdate()   --getdate() çalýþtýðý anýn tarihini verir

)

--FOREÝGN KEY

create table musteri
( id int primary key,
musteriNumarasi int,
tckn nvarchar(15),
vkn nvarchar(15),
isim nvarchar(50),
soyisim nvarchar(50),
olusturmaTarihi date
)


create table musteriIletisimBilgileri
(
id int primary key,
musteriId int,
iletisimTip int,
deger nvarchar(500),
olusturmaTarihi datetime,
foreign key (musteriId) references musteri(id) 
)