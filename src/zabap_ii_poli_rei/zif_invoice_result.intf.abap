interface zif_invoice_result
  public .

*  class-data lv_gdoc type vbeln.

  methods generate_result
    importing iv_doc         type vbeln optional
    returning value(rv_json) type string.

endinterface.
