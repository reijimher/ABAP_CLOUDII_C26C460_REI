*"* use this source file for your ABAP unit test classes
class ltcl_business_process definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      factorial_local_test for testing raising cx_static_check.

    class-methods: class_setup,
      class_teardows.

    methods: setup,
      teardown.

    data mo_cut type ref to zcl_55_business_pro_rei. "CUT - Class Under Test
endclass.


class ltcl_business_process implementation.

  method factorial_local_test.

*Given
    data(lv_number_ut) = 4.
    data lv_favtorial_ut type i.

*When
    mo_cut->get_factorial(
      exporting
        iv_nunmber   = 4
      importing
        ev_favtorial = lv_favtorial_ut
    ).

*then

    if cl_abap_unit_assert=>assert_equals(
      exporting
        act                  = lv_favtorial_ut
        exp                  = 24 ) eq abap_true.

      cl_abap_unit_assert=>fail( 'Implement your first test here' ).
    endif.

  endmethod.

  method class_setup.

  endmethod.

  method class_teardows.

  endmethod.

  method setup.
    mo_cut = new zcl_55_business_pro_rei(  ).
  endmethod.

  method teardown.
    clear mo_cut.
  endmethod.

endclass.
