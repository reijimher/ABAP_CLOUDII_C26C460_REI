class zcl_lab_02_product_rei definition
  public
  final
  create public .

  public section.

    methods: set_product      importing iv_product type matnr,
      set_creationdate importing iv_creation_date type zdate.

  protected section.
  private section.
    data: product       type matnr,
          creation_date type zdate.
endclass.



class zcl_lab_02_product_rei implementation.
  method set_creationdate.
      creation_date = iv_creation_date.
  endmethod.

  method set_product.
    product = iv_product.
  endmethod.

endclass.
