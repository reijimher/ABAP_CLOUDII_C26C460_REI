class zcl_lab_13_view_rei definition
  public
  create public .

  public section.

    methods constructor importing iv_view_type type string.

  protected section.

    data: mv_VIEW_TYPE type string,
          mv_box       type string.


endclass.



class zcl_lab_13_view_rei implementation.
  method constructor.
    mv_VIEW_TYPE = iv_view_type.
  endmethod.

endclass.
