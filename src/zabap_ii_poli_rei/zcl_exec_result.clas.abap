class zcl_exec_result definition
  public
  final
  create public .

  public section.

    interfaces if_oo_adt_classrun.

  protected section.
  private section.

    data: "lv_msj type string,
          lv_doc type vbeln value '4600000000'.

endclass.



class zcl_exec_result implementation.
  method if_oo_adt_classrun~main.

    types: begin of ty_service_result,
             service type ref to zif_invoice_result,
             Num_doc type vbeln,
             result  type string,
           end of ty_service_result.

    data: lt_services  type standard table of ty_service_result,
          ls_serv_gral type ty_service_result,
          lo_serv_gral type ref to zcl_sd_order,
          zdoc         type ref to if_oo_adt_classrun_out.

**- Order Process from SD
    lo_serv_gral = new #( ).
    ls_serv_gral-result  = lo_serv_gral->zif_invoice_result~generate_result( iv_doc = lv_doc ).
    ls_serv_gral-service = lo_serv_gral.
    ls_serv_gral-num_doc = zcl_sd_order=>lv_order.

    out->write( | Antes del Loop: { ls_serv_gral-result } ------ Numero document { ls_serv_gral-num_doc } | ).

    append ls_serv_gral to lt_services.


***- Delivery Orders
    lo_serv_gral = new #( ).
    ls_serv_gral-result = lo_serv_gral->zif_invoice_result~generate_result( iv_doc = lv_doc ).
    ls_serv_gral-service = lo_serv_gral.

    append ls_serv_gral to lt_services.
*
*
***- Delivery Invoice
    lo_serv_gral = new #( ).
    ls_serv_gral-result = lo_serv_gral->zif_invoice_result~generate_result( iv_doc = lv_doc ).
    ls_serv_gral-service = lo_serv_gral.

    append ls_serv_gral to lt_services.

*-Impresión

    loop at lt_services into ls_serv_gral.

      out->write( |Returning: { ls_serv_gral-result } --------- Número de Doc.:{ ls_serv_gral-num_doc }| ).  "Referent: { ls_serv_gral-service } | ).

    endloop..

data(LO_CL_A) = new zcl_sd_order(  ).

lo_cl_a->atr_b->atr_a = 'Expert'.


**- Order Process from SD
*
*
*    lo_serv_gral = new zcl_sd_order( ).
*
*    lo_serv_gral->generate_result(
*      exporting
*        iv_doc  = lv_doc
*      receiving
*        rv_json = lv_msj ).
*
*    out->write( lv_msj ).
*
*
**- Delivery Orders
*
*    lo_serv_gral = new zcl_sd_delivery(  ).
*
*    lo_serv_gral->generate_result(
*      exporting
*        iv_doc  = lv_doc
*      receiving
*        rv_json = lv_msj ).
*
*    out->write( lv_msj ).
*
*
**- Delivery Invoice
*
*    lo_serv_gral = new zcl_sd_invoice(  ).
*
*    lo_serv_gral->generate_result(
*      exporting
*        iv_doc  = lv_doc
*        receiving
*        rv_json = lv_msj ).
*
*    out->write( lv_msj ).





  endmethod.

endclass.
