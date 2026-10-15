class zcl_03_access_rei definition
  public
  final
  create public .

  public section.

    methods constructor.

    methods on_blocked_entrace for event blocked_entrace
      of zcl_02_building_rei
      importing ev_entry.

    class-data table_bloked_entry type table of string.

  protected section.
  private section.
endclass.



class zcl_03_access_rei implementation.

  method on_blocked_entrace.

    append |{ ev_entry } entry blocked| to table_bloked_entry.

  endmethod.

  method constructor.
    set handler me->on_blocked_entrace for all instances.
  endmethod.

endclass.
