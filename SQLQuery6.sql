--IN // IN NOT  -> �r�nlerin baz� bilgilerrini  incelenme
select *from Production.Product
where ProductNumber
In --i�eriyorsa ,bu de�erleri i�eren datalar� bana getir
(
'AR-53871',
'BA-8327',
'BE-2349',
'BE-2908',
'BL-2036'

)

select *from Production.Product
where ProductNumber
NOt In --i�ermeyen de�erleri bana getirir
(
'AR-53871',
'BA-8327',
'BE-2349',
'BE-2908',
'BL-2036'

)