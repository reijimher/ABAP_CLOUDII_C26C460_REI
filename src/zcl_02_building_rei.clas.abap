class zcl_02_building_rei definition
  public
  final
  create public.
*  global friends zcl_01_exe.

  public section.

    events blocked_entrace exporting value(ev_entry) type string.

    methods close_entry.

    data entry type string.

  protected section.
  private section.

  class-data lv_prueba type string.

endclass.



class zcl_02_building_rei implementation.
  method close_entry.

    data(lo_first) = new lcl_helper(  ).

    raise event blocked_entrace exporting ev_entry = me->entry.

    lo_first->ms_struct-comp1 = 'Prueba de '.

  endmethod.

endclass.
