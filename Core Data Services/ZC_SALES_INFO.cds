@AbapCatalog.sqlViewName: 'ZV_SALES'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'get sales info'
@Metadata.ignorePropagatedAnnotations: true
define view ZC_SALES_INFO 
with parameters
  @Environment.systemField: #SYSTEM_LANGUAGE
  p_langu : spras
as select from zsales
  association [1..1] to zsales_rep as _sales_representative on 
    $projection.Srid = _sales_representative.srid 
    
  association [1..1] to zproducts as _products on 
    $projection.Prdid = _products.prdid 
  
  association [1..1] to zprod_text as _product_texts on 
    $projection.Prdid = _product_texts.prdid and
    _product_texts.lang = $parameters.p_langu
  
{
  key zsales.salid as Salid,
  key zsales.srid as Srid,
  key zsales.prdid as Prdid,
  zsales.quant as Quant,
  zsales.samt as Samt,
  zsales.sdate as Sdate,
  
  _sales_representative.srid as SalesRepresentativeName,
  _products.price as ProductPrice,
  _products.categ as ProductCategory,
  _product_texts.descript as ProductDescription
}
