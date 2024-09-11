CLASS zcl_sales_report DEFINITION PUBLIC FINAL.
  PUBLIC SECTION.
    TYPES: ty_t_sales_report TYPE STANDARD TABLE OF zbc_sales_report WITH DEFAULT KEY,
           t_range_srid      TYPE RANGE OF zsr_id.
    METHODS:
      constructor
        IMPORTING
          i_sales_information TYPE REF TO zif_sales_information    OPTIONAL,

      get_sales_report
        IMPORTING
          i_sales_representatives_list TYPE t_range_srid
        RETURNING
          VALUE(result)                TYPE ty_t_sales_report.

  PROTECTED SECTION.
  PRIVATE SECTION.
    TYPES: ty_t_sales_list  TYPE STANDARD TABLE OF zc_sales_info WITH DEFAULT KEY.
    DATA: sales_information TYPE REF TO zif_sales_information.

    METHODS:

      calc_sales_per_repr
        IMPORTING
          i_sales_list  TYPE ty_t_sales_list
        RETURNING
          VALUE(result) TYPE ty_t_sales_report,

      calc_sales_commision
        IMPORTING
          i_sale_representative_id TYPE zsales-srid
          i_product_id             TYPE zsales-prdid
          i_sale_amount            TYPE zsales-samt
        RETURNING
          VALUE(result)            TYPE zsales-samt.

ENDCLASS.

CLASS zcl_sales_report IMPLEMENTATION.
  METHOD constructor.
    sales_information =
      COND #( WHEN i_sales_information IS NOT BOUND
                THEN NEW zcl_sales_information( )
              ELSE i_sales_information
             ).
  ENDMETHOD.

  METHOD get_sales_report.
    DATA(lt_sales_list) = calc_sales_per_repr(
                            i_sales_list = sales_information->get_sales_list( i_sales_representatives_list = i_sales_representatives_list )
                          ).

    result = lt_sales_list.
  ENDMETHOD.

  METHOD calc_sales_per_repr.
    DATA: lt_sales TYPE ty_t_sales_report,
          ls_sale  TYPE LINE OF ty_t_sales_report.

    LOOP AT i_sales_list ASSIGNING FIELD-SYMBOL(<ls_sale_item>).
      DATA(commision) = calc_sales_commision(
                               i_sale_representative_id = <ls_sale_item>-Srid
                               i_product_id             = <ls_sale_item>-Prdid
                               i_sale_amount            = <ls_sale_item>-Samt
                             ).

      READ TABLE lt_sales INTO ls_sale
                          WITH KEY srid = <ls_sale_item>-srid.

      IF sy-subrc = 0.
        ls_sale-samt += <ls_sale_item>-samt.
        ls_sale-comm += commision.

        MODIFY lt_sales FROM ls_sale INDEX sy-tabix.
        CONTINUE.
      ENDIF.

      MOVE-CORRESPONDING <ls_sale_item> TO ls_sale.
      ls_sale-comm = commision.

      APPEND ls_sale TO lt_sales.
    ENDLOOP.

    result = lt_sales.
  ENDMETHOD.

  METHOD calc_sales_commision.
    result = i_sale_amount * '0.06'.
  ENDMETHOD.

ENDCLASS.