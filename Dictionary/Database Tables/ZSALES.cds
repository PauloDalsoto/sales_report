@EndUserText.label : 'Table for sales'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zsales {

  key mandt : mandt not null;
  key salid : vbeln not null;
  @AbapCatalog.foreignKey.screenCheck : false
  key srid  : zsr_id not null
    with foreign key zsales_rep
      where srid = zsales.srid;
  @AbapCatalog.foreignKey.screenCheck : false
  key prdid : matnr not null
    with foreign key zproducts
      where prdid = zsales.prdid;
  quant     : zqnt;
  samt      : zsales_amount;
  sdate     : erdat;

}