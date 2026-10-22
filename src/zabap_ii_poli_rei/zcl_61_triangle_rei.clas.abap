class zcl_61_triangle_rei definition
  public
  final
  create public .

  public section.

    interfaces zif_11_geometric_figure_rei.
    aliases draw_shape for zif_11_geometric_figure_rei~draw_shape.

  protected section.
  private section.
endclass.



class zcl_61_triangle_rei implementation.
  method draw_shape.
    rv_shape = 'Proceso de negocio TRIANGLE'.
  endmethod.

endclass.
