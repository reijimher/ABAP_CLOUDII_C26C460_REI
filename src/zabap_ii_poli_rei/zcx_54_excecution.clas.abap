class zcx_54_excecution definition
  public
  final
  create public .

  public section.

    methods raise_exception_1 importing oi_previous   type ref to cx_root optional
                                        iv_first_name type string optional
                              exporting ev_first_name type string
                              returning value(rv_name) type string
                              raising   zcx_51_exception_rei.

    methods raise_exception_2 importing oi_previous type ref to cx_root optional
                              raising   zcx_52_exception2_rei.

    methods raise_exception_3 importing oi_previous type ref to cx_root optional
                              raising   zcx_53_exception3_rei.

  protected section.
  private section.
endclass.



class zcx_54_excecution implementation.

  method raise_exception_1.
    data(lo_name) = new zcx_51_exception_rei(  ).

    lo_name->set_reiner( iv_name = iv_first_name ).
    ev_first_name = lo_name->get_reiner(  ).
    rv_name = lo_name->get_reiner(  ).

    raise exception type zcx_51_exception_rei
      exporting
        previous = oi_previous.



  endmethod.

  method raise_exception_2.
    raise exception type zcx_52_exception2_rei
      exporting
        previous = oi_previous.

  endmethod.

  method raise_exception_3.
    raise exception type zcx_53_exception3_rei
      exporting
        previous = oi_previous.


  endmethod.

endclass.
