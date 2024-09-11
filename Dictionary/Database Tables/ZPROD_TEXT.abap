@EndUserText.label : 'Product Texts'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zprod_text {

  key mandt : mandt not null;
  @AbapCatalog.textLanguage
  @AbapCatalog.foreignKey.keyType : #KEY
  @AbapCatalog.foreignKey.screenCheck : true
  key lang  : spras not null
    with foreign key [0..*,1] t002
      where spras = zprod_text.lang;
  @AbapCatalog.foreignKey.screenCheck : false
  key prdid : matnr not null
    with foreign key zproducts
      where mandt = zprod_text.mandt
        and prdid = zprod_text.prdid;
  descript  : maktx;

}