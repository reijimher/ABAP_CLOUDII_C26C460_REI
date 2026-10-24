class zcl_lab_09_account_rei definition
  public
  final
  create public .

  public section.

    methods: m_get importing iv_iban type string,
             m_set returning value(ev_iban) type string.


  protected section.
  private section.

    data: iban type string.

endclass.



class zcl_lab_09_account_rei implementation.
  method m_get.
    me->iban = iv_iban.
  endmethod.

  method m_set.
    ev_iban = me->iban.
  endmethod.

endclass.
