--IN // IN NOT  -> ürünlerin bazý bilgilerrini  incelenme
select *from Production.Product
where ProductNumber
In --içeriyorsa ,bu deðerleri içeren datalarý bana getir
(
'AR-53871',
'BA-8327',
'BE-2349',
'BE-2908',
'BL-2036'

)

select *from Production.Product
where ProductNumber
NOt In --içermeyen deðerleri bana getirir
(
'AR-53871',
'BA-8327',
'BE-2349',
'BE-2908',
'BL-2036'

)