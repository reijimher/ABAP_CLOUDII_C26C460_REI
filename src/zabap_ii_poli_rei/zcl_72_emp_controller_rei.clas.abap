class zcl_72_emp_controller_rei definition
  public
  final
  create public .

  public section.

    methods: set_model importing       io_model   type ref to zcl_70_emp_model_rei,
      get_model returning value(rv_model)  type ref to zcl_70_emp_model_rei,

      set_view importing       io_view    type ref to zcl_71_emp_view_rei,
      get_view returning value(rv_viewl)  type ref to zcl_71_emp_view_rei.

  protected section.
  private section.

    data: model type ref to zcl_70_emp_model_rei,
          view  type ref to zcl_71_emp_view_rei.

endclass.



class zcl_72_emp_controller_rei implementation.
  method set_model.
    me->model = io_model.
  endmethod.

  method get_model.
    rv_model = me->model.
  endmethod.



  method set_view.
    me->view = io_view.
  endmethod.

  method get_view.
    rv_viewl = me->view.
  endmethod.

endclass.
