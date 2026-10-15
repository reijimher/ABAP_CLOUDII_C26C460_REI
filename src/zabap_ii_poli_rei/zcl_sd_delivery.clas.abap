class zcl_sd_delivery definition
  public
  final
  create public .

  public section.

data: ATR_A type string.
    interfaces zif_invoice_result.

  protected section.
  private section.

    class-data lv_delivery type vbeln.

endclass.



class zcl_sd_delivery implementation.
  method zif_invoice_result~generate_result.

    me->lv_delivery = iv_doc.
    rv_json = '2 - Delivery Document'.

  endmethod.

endclass.
