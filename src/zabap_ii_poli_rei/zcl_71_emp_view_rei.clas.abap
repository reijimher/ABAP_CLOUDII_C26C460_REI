class zcl_71_emp_view_rei definition
  public
  final
  create public .

  public section.
    methods dispaly_employe importing iv_name type string
                                      iv_role type string
                                      io_out  type ref to if_oo_adt_classrun_out.
  protected section.
  private section.
endclass.



class zcl_71_emp_view_rei implementation.
  method dispaly_employe.
    io_out->write( |Employe Name:{ iv_name }---Employe Role:{ iv_role } | ).
  endmethod.

endclass.
