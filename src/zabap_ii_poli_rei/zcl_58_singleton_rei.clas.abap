class zcl_58_singleton_rei definition
  public
  final
  create private .

  public section.

    data mv_time type zsyst_uzeit.


    methods constructor.
    class-methods get_instance
      returning value(ro_instance) type ref to zcl_58_singleton_rei.

  protected section.
  private section.

    class-data mo_instance type ref to zcl_58_singleton_rei.

endclass.



class zcl_58_singleton_rei implementation.
  method get_instance.
    if mo_instance is not bound.
      mo_instance = new #(  ).
    endif.

    ro_instance = mo_instance.

  endmethod.

  method constructor.
    me->mv_time = cl_abap_context_info=>get_system_time( ).
  endmethod.

endclass.
