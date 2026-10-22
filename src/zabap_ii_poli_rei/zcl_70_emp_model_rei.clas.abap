class zcl_70_emp_model_rei definition
  public
  final
  create public .

  public section.

    methods constructor importing iv_name type string
                                  iv_role type string.

    methods set_name importing iv_name type string.
    methods get_name returning value(rv_name) type string.

    methods set_role importing iv_role type string.
    methods get_role returning value(rv_role) type string.

  protected section.
  private section.
    data: name type string,
          role type string.

endclass.



class zcl_70_emp_model_rei implementation.
  method constructor.
    me->name = iv_name.
    me->role = iv_role.
  endmethod.

  method get_name.
    rv_name = me->name.

  endmethod.

  method get_role.
    rv_role   = me->role.
  endmethod.

  method set_name.
    me->name = iv_name.
  endmethod.

  method set_role.
    me->role = iv_role.
  endmethod.

endclass.
