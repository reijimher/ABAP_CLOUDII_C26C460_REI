class zcl_49_banck_rei definition
  public
  final
  create public .

  public section.

    methods validate_account importing iv_card            type string
                                       iv_amount          type i
                                       iv_savinds_account type abap_bool optional
                             changing  cv_log             type string
                             raising   zcx_47_expired_card_rei
                                       resumable(zcx_48_insuffi_balance_rei).

  protected section.
  private section.
endclass.



class zcl_49_banck_rei implementation.
  method validate_account.

    "cv_log = |{ cv_log }...Check card validaty{ cl_abap_char_utilities=>newline }|. "%_NEWLINE
    cv_log = |{ cv_log }...Check card validaty{ %_newline }|.


*- Validación de la Tarjeta

    if  iv_card eq '1111 2222 3333 4444'.
      raise exception type zcx_47_expired_card_rei
        exporting
          textid = zcx_47_expired_card_rei=>expire.
    endif.

*- Validación del importe
    cv_log = |{ cv_log }...Check account bakance{ %_newline }|.

    if iv_amount gt 50.

      if iv_savinds_account eq abap_true.
        cv_log = |{ cv_log }...Resunable exception Insufficient Balance{ %_newline }|.
        raise resumable exception type zcx_48_insuffi_balance_rei
          exporting
            textid = zcx_48_insuffi_balance_rei=>insuff_balance.
      else.
        cv_log = |{ cv_log }...Exception Insufficient Balance{ %_newline }|.
        raise exception type zcx_48_insuffi_balance_rei
          exporting
            textid = zcx_48_insuffi_balance_rei=>insuff_balance.
      endif.

    endif.

  endmethod.

endclass.
