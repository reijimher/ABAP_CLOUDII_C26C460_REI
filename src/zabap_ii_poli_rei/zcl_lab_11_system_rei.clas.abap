class zcl_lab_11_system_rei definition
  public

  create public .

  public section.

    data architecture type string value '64BITS'.

    methods get_architecture exporting ev_architeture type string.


  protected section.
  private section.
endclass.



class zcl_lab_11_system_rei implementation.
  method get_architecture.
    ev_architeture = me->architecture.
  endmethod.

endclass.
