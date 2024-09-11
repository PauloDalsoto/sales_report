INTERFACE zif_sales_information PUBLIC .
  TYPES: tt_sales      TYPE STANDARD TABLE OF zc_sales_info WITH DEFAULT KEY,
         t_range_srid  TYPE RANGE OF zsales-srid.
  METHODS:
    get_sales_list
      IMPORTING
        i_sales_representatives_list TYPE t_range_srid
      RETURNING
        VALUE(result)                TYPE tt_sales.

ENDINTERFACE.