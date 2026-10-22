class zcx_51_exception_rei definition
  public
  inheriting from cx_static_check
  final
  create public .

  public section.

    methods: set_reiner importing iv_name type string,
      get_reiner returning value(ev_name) type string.

  protected section.
  private section.

    class-data lv_name type string.

endclass.



class zcx_51_exception_rei implementation.
  method set_reiner.

    lv_name = iv_name.

  endmethod.

  method get_reiner.
    ev_name = lv_name.
  endmethod.

endclass.
