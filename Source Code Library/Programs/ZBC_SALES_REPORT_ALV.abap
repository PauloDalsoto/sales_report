*&---------------------------------------------------------------------*
*& Report ZBC_SALES_REPORT_ALV
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbc_sales_report_alv.

DATA sal_rep_id TYPE zsales-srid.

SELECTION-SCREEN BEGIN OF BLOCK block_1 WITH FRAME TITLE TEXT-001.
  SELECT-OPTIONS s_rep_id FOR sal_rep_id  OBLIGATORY.

SELECTION-SCREEN END OF BLOCK block_1.

START-OF-SELECTION.

  DATA: sales_report TYPE REF TO zcl_sales_report,
        representatives TYPE RANGE OF zsr_id.

  representatives = s_rep_id[].
  sales_report = NEW #( ).

  DATA(alv_sales) = sales_report->get_sales_report( representatives ).

  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      i_structure_name = 'zbc_sales_report'
    TABLES
      t_outtab         = alv_sales.