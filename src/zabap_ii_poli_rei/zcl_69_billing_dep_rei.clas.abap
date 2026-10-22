class zcl_69_billing_dep_rei definition inheriting from zcl_67_observer_rei
  public
  final
  create public .

  public section.

    data state type string.

    methods: on_modified_state redefinition.
  protected section.
  private section.
endclass.



class zcl_69_billing_dep_rei implementation.
  method on_modified_state.
    me->state = |2- Billing departament 50 Producct de:{ ev_new_state } |.
  endmethod.

endclass.
