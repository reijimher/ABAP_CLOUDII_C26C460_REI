class zcl_sd_order definition
  public
  final
  create public .

  public section.

data: ATR_B type ref to zcl_sd_delivery.

    class-data: lv_order type vbeln,
                lv_msj   type string value '1 - Documento encontrado'.


    interfaces zif_invoice_result.

  protected section.

  private section.



endclass.



class zcl_sd_order implementation.

  method zif_invoice_result~generate_result.
    me->lv_order = iv_doc.
    rv_json = lv_msj.
  endmethod.

endclass.
