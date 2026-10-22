*"* use this source file for your ABAP unit test classes
class ltcl_test_inj definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      get_custumer_test for testing raising cx_static_check.

    class-methods class_setup.
    class-methods class_taardown.

    methods setup.
    methods teardows.

    data mo_cut type ref to zcl_57_test_inj_rei.

endclass.


class ltcl_test_inj implementation.

  method get_custumer_test.
    cl_abap_unit_assert=>fail( 'Implement your first test here' ).
  endmethod.

  method class_setup.

  endmethod.

  method class_taardown.

  endmethod.

  method setup.
    me->mo_cut = new zcl_57_test_inj_rei(  ).
  endmethod.

  method teardows.
    clear me->mo_cut.
  endmethod.

endclass.
