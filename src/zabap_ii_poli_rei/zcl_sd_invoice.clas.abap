class zcl_sd_invoice definition
  public
  final
  create public .

  public section.

    interfaces  zif_invoice_result.

  protected section.
  private section.

    data lv_invoice type vbeln.
endclass.



class zcl_sd_invoice implementation.
  method zif_invoice_result~generate_result.

    lv_invoice = iv_doc.
    rv_json = '3 - Facturación Realizada'.
  endmethod.

endclass.
