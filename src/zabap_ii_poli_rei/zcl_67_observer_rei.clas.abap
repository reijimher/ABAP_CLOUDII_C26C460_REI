class zcl_67_observer_rei definition abstract
  public
   create public .

  public section.

  methods on_modified_state abstract
          for event modifield_state of zcl_66_processes_rei
          importing ev_new_state.

  protected section.
  private section.
endclass.



class zcl_67_observer_rei implementation.
endclass.
