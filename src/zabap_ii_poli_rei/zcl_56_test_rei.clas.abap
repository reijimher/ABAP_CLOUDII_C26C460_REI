class zcl_56_test_rei definition
  public
  final
  create public
  for testing
  duration short
  risk level harmless. "dangerous - critical

  public section.

*Relation Unit Test
   "! @testing zcx_47_expired_card_rei
    methods factorial_test for testing.

  protected section.
  private section.

   class-methods: class_setup,
                  class_teardows.

    methods: setup,
             teardown.

    data mo_cut type ref to zcl_55_business_pro_rei. "CUT - Class Under Test
endclass.



class zcl_56_test_rei implementation.
  method factorial_test.

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

    cl_abap_unit_assert=>assert_equals(
      exporting
        act                  = lv_favtorial_ut
        exp                  = 24 ).

  endmethod.

  method setup.
    mo_cut = new zcl_55_business_pro_rei(  ).
  endmethod.

  method teardown.
    clear mo_cut.
  endmethod.

  method class_setup.

  endmethod.

  method class_teardows.

  endmethod.

endclass.
