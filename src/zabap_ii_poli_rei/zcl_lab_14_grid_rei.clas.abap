class zcl_lab_14_grid_rei definition inheriting from zcl_lab_13_view_rei
  public
  final
  create public .

  public section.

    data: gv_out_vie_type type string,
          gv_out_box      type string.

    methods constructor
      importing
        iv_view_type type string
        iv_box       type string.

endclass.

class zcl_lab_14_grid_rei implementation.

  method constructor.


    call method super->constructor
      exporting
        iv_view_type = iv_view_type.

    me->mv_box = iv_box.


    me->gv_out_vie_type = me->mv_view_type.
    me->gv_out_box      = me->mv_box.


  endmethod.

endclass.
