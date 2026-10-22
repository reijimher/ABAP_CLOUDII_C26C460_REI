class zcl_62_factory_rei definition
  public
  final
  create public .

  public section.

    methods get_shape importing iv_shape_type        type string
                      returning value(ro_shape_type) type ref to zif_11_geometric_figure_rei.


  protected section.
  private section.
endclass.



class zcl_62_factory_rei implementation.
  method get_shape.

    case iv_shape_type.
      when 'CICLE'.
        ro_shape_type = new zcl_59_cicle_rei(  ).
      when 'SQUARE'.
        ro_shape_type = new zcl_60_SQUARE_rei(  ).
      when 'TRIANGLE'.
        ro_shape_type = new zcl_61_triangle_rei(  ).
    endcase.

  endmethod.

endclass.
