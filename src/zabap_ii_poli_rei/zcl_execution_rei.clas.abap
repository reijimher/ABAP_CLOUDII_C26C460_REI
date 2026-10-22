class zcl_execution_rei definition
  public
  final
  create public .

  public section.

    interfaces if_oo_adt_classrun.

  protected section.
  private section.

endclass.



class zcl_execution_rei implementation.
  method if_oo_adt_classrun~main.


data(lo_linux) = new ZCL_LAB_12_LINUX(  ).
data lv_system_type type string.

lo_linux->get_architecture(
  importing
    ev_architecture = lv_system_type
).


out->write( |System type: { lv_system_type }| ).




*    data(lo_constructor) = new zcl_lab_10_constructor_rei( ).
*
*    out->write( zcl_lab_10_constructor_rei=>log ).







** Patron MVC
*
****Definición de Varables
*    data: lv_name type string value 'Reiner Jimenez',
*          lv_role type string value 'Programing ABAP'.
*
****Definición de Instancias
*    data(go_model) = new zcl_70_emp_model_rei(
*      iv_name = lv_name
*      iv_role = lv_role ).
*
*    data(go_view) = new zcl_71_emp_view_rei( ).
*
*    data(go_controller) = new zcl_72_emp_controller_rei(  ).
*
*
*    go_controller->set_model( io_model = go_model ).
*    go_controller->set_view( io_view = go_view ).
*    go_controller->get_view( )->dispaly_employe( iv_name = go_model->get_name( )
*                                                 iv_role = go_model->get_role( )
*                                                 io_out  = out ).






*   data(go_process) = new zcl_66_processes_rei(  ).
*    data(go_sales_dep) = new zcl_68_sale_dep_rei(  ).
*    data(go_billing_dep) = new zcl_69_billing_dep_rei(  ).
*
*    set handler go_sales_dep->on_modified_state for go_process.
*    set handler go_billing_dep->on_modified_state for go_process.
*
*
**St new Satate
*
*    go_process->set_state( iv_state = 'NEWSALE01 - Product 12345 - Laptop HP sold' )..
*
*    out->write( |Process: { go_process->get_state(  ) }| ).
*    out->write( |Sale   : { go_sales_dep->state }|  ).
*    out->write( |Billing: { go_billing_dep->state }| ).


*    data: go_shape    type ref to zif_11_geometric_figure_rei.
**          go_factopry type ref to zcl_62_factory_rei.
*
*    data(go_factory) = new zcl_62_factory_rei(  ).
*    go_shape = go_factory->get_shape( iv_shape_type = 'TRIANGLE' ).
*
*    out->write( go_shape->draw_shape( ) ).










*    data: go_singleton_1 type ref to zcl_58_singleton_rei,
*          go_singleton_2 type ref to zcl_58_singleton_rei.
*
*
*    go_singleton_1 = zcl_58_singleton_rei=>get_instance( ).
*    wait up to 2 seconds.
*    go_singleton_2 = zcl_58_singleton_rei=>get_instance( ).
*
*    out->write( go_singleton_1->mv_time ).
*    out->write( go_singleton_2->mv_time ).
*
*    go_singleton_1->mv_time = cl_abap_context_info=>get_system_time( ).
*
*    out->write( cl_abap_char_utilities=>newline ).
*
*    out->write( go_singleton_1->mv_time ).
*    out->write( go_singleton_2->mv_time ).
*



*    data(lo_business_pr) = new zcl_55_business_pro_rei(  ).
*
*    lo_business_pr->get_factorial(
*      exporting
*        iv_nunmber   = 5
*      importing
*        ev_favtorial = data(lv_factorial)  ).
*
*    out->write( lv_factorial ).

*    types: begin of ty_service_result,
*             service type ref to zif_invoice_result,
*             Num_doc type vbeln,
*             result  type string,
*           end of ty_service_result.
*
*    data: lt_services  type standard table of ty_service_result,
*          ls_serv_gral type ty_service_result,
*          lo_serv_gral type ref to zcl_sd_order,
*          zdoc         type ref to if_oo_adt_classrun_out.
*
***- Order Process from SD
*    lo_serv_gral = new #( ).
*    ls_serv_gral-result  = lo_serv_gral->zif_invoice_result~generate_result( iv_doc = lv_doc ).
*    ls_serv_gral-service = lo_serv_gral.
*    ls_serv_gral-num_doc = zcl_sd_order=>lv_order.
*
*    out->write( | Antes del Loop: { ls_serv_gral-result } ------ Numero document { ls_serv_gral-num_doc } | ).
*
*    append ls_serv_gral to lt_services.
*
*
****- Delivery Orders
*    lo_serv_gral = new #( ).
*    ls_serv_gral-result = lo_serv_gral->zif_invoice_result~generate_result( iv_doc = lv_doc ).
*    ls_serv_gral-service = lo_serv_gral.
*
*    append ls_serv_gral to lt_services.
**
**
****- Delivery Invoice
*    lo_serv_gral = new #( ).
*    ls_serv_gral-result = lo_serv_gral->zif_invoice_result~generate_result( iv_doc = lv_doc ).
*    ls_serv_gral-service = lo_serv_gral.
*
*    append ls_serv_gral to lt_services.
*
**-Impresión
*
*    loop at lt_services into ls_serv_gral.
*
*      out->write( |Returning: { ls_serv_gral-result } --------- Número de Doc.:{ ls_serv_gral-num_doc }| ).  "Referent: { ls_serv_gral-service } | ).
*
*    endloop..
*
*data(LO_CL_A) = new zcl_sd_order(  ).
*
*lo_cl_a->atr_b->atr_a = 'Expert'.


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
