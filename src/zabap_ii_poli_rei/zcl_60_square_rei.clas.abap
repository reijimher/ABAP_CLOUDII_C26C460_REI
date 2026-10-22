class zcl_60_square_rei definition
  public
  final
  create public .

  public section.

    interfaces zif_11_geometric_figure_rei.
    aliases draw_shape for zif_11_geometric_figure_rei~draw_shape.

  protected section.
  private section.
endclass.



class zcl_60_square_rei implementation.
  method draw_shape.
    rv_shape = 'Proceso de negocio SQUARE'.
  endmethod.

endclass.
