CLASS zcl_sales_information DEFINITION PUBLIC FINAL.

  PUBLIC SECTION.
    INTERFACES zif_sales_information.
    ALIASES: get_sales_list FOR zif_sales_information~get_sales_list.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_sales_information IMPLEMENTATION.
  METHOD get_sales_list.
    SELECT
      Salid,
      Srid,
      Prdid,
      Quant,
      Samt,
      Sdate,
      SalesRepresentativeName,
      ProductPrice,
      ProductCategory,
      ProductDescription
    FROM zc_sales_info
    WHERE srid IN @i_sales_representatives_list
    INTO TABLE @result.

  ENDMETHOD.
ENDCLASS.