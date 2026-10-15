class zcl_01_exe definition
  public
  final
  create public.

  public section.

    interfaces if_oo_adt_classrun.

  protected section.
  private section.
endclass.



class zcl_01_exe implementation.

  method if_oo_adt_classrun~main.

    data(lo_atm) = new zcl_50_atm_rei(  ).

*- 1. Expire Credit Card
    out->write( 'Use Case: 1. Expire Credit Card ' ).

    out->write( lo_atm->withdraw_money(
      exporting
        iv_card           = '1111 2222 3333 4444'
        iv_amount         = '500'
*       iv_savings_acount =
*    rv_log            =
    ) ).


*- 2. insufficient balance in the current account
    out->write( 'Use Case: 2. insufficient balance in the current account' ).

    out->write( lo_atm->withdraw_money(
      exporting
        iv_card           = '1111 2222 3333 4445'
        iv_amount         = '100'
*       iv_savings_acount =
*    rv_log            =
    ) ).

*- 3. Withdrow money from the saving account
    out->write( 'Use Case: 3. Withdrow money from the saving account' ).

    out->write( lo_atm->withdraw_money(
      exporting
        iv_card           = '1111 2222 3333 4446'
        iv_amount         = '500'
        iv_savings_acount = abap_true
*    rv_log            =
    ) ).




*
*    data(go_1) = new zcl_02_building_rei(  ).
*    data(go_2) = new zcl_02_building_rei(  ).
*    data(go_3) = new zcl_02_building_rei(  ).
*    data(go_4) = new zcl_02_building_rei(  ).
*
*    data(go_acc) = new zcl_03_access_rei(  ).
*
*    go_1->entry = 'NORTH'.
*    go_1->close_entry(  ).
*
*    go_2->close_entry( ).
*
*
*
*    out->write( zcl_03_access_rei=>table_bloked_entry ).


*TRY.
*
*    DATA lv_num TYPE i.
*
*    lv_num = 'ABC'.
*
*  CATCH cx_root INTO DATA(lx_error).
*
*    out->write( lx_error->get_text( ) ).
*
*    out->write( lx_error->kernel_errid ).
*
*    out->write( lx_error->cx_root ).
*
*
*ENDTRY.
*



  endmethod.



endclass.
