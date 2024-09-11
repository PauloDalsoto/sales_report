@EndUserText.label : 'Table for sales representatives'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zsales_rep {

  key mandt : mandt not null;
  key srid  : zsr_id not null;
  name      : zsr_name not null;
  phone     : s_phoneno;
  email     : s_email;

}