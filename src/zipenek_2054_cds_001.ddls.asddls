@AbapCatalog.sqlViewName: 'ZIPENEK_2054_V01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds 001'
define view ZIPENEK_2054_CDS_001 as 
select from ekko
inner join ekpo on ekpo.ebeln = ekko.ebeln
inner join mara on mara.matnr = ekpo.matnr
left outer join makt on makt.matnr = mara.matnr 
                    and makt.spras = $session.system_language
inner join lfa1 on lfa1.lifnr = ekko.lifnr
{
    ekpo.ebeln,
       ekpo.ebelp,
       ekpo.matnr,
       makt.maktx,
       ekpo.werks,
       ekpo.lgort,
       ekpo.meins ,
       lfa1.lifnr,
       lfa1.name1,
       concat(lfa1.name1,lfa1.mcod3) as cfield
}
