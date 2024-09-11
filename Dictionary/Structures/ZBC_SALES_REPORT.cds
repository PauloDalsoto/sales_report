@EndUserText.label : 'Structure for sales report'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
define structure zbc_sales_report {

  srid                    : zsr_id;
  salesrepresentativename : zsr_name;
  samt                    : zsales_amount;
  comm                    : zcomission;

}