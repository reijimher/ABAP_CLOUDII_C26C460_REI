class zcl_50_atm_rei definition
  public
  final
  create public .

  public section.

    methods withdraw_money importing iv_card           type string
                                     iv_amount         type i
                                     iv_savings_acount type abap_bool optional
                           returning value(rv_log)     type string.
  protected section.
  private section.
endclass.



class zcl_50_atm_rei implementation.
  method withdraw_money.

    data(lo_bank) = new zcl_49_banck_rei( ).

    try.
        lo_bank->validate_account(
          exporting
            iv_card            = iv_card
            iv_amount          = iv_amount
            iv_savinds_account = iv_savings_acount
          changing
            cv_log             = rv_log
        ).

*-Se supone que ya en este paso se puede retirar el dinero

        rv_log = |{ rv_log }...Withdrow money from the ATM{ cl_abap_char_utilities=>newline } |.
        rv_log = |{ rv_log }...operation completed successfully{ cl_abap_char_utilities=>newline } |.

      catch               zcx_47_expired_card_rei into data(lx_expired_card).
        rv_log = |{ rv_log }...{  lx_expired_card->get_text(  ) }-{ cl_abap_char_utilities=>newline  }|.

      catch before unwind zcx_48_insuffi_balance_rei into data(lx_insu_bal).
        rv_log = |{ rv_log }...{  lx_insu_bal->get_text(  ) }-{ cl_abap_char_utilities=>newline  }|.

        if lx_insu_bal->is_resumable eq abap_true.
          rv_log = |{ rv_log }...Resume exception{ cl_abap_char_utilities=>newline } |.
          resume.
        endif.


    endtry.
  endmethod.

endclass.
