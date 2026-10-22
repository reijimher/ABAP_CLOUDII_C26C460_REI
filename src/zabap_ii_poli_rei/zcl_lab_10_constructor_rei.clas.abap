class zcl_lab_10_constructor_rei definition
  public
  final
  create public .

  public section.

    class-data log type string.

    methods constructor.
    class-methods class_constructor.

  protected section.
  private section.


endclass.

class zcl_lab_10_constructor_rei implementation.
  method class_constructor.
    if log is initial.
      log = |First execution-->{ log }-'Running a static constructor methodo'|.
    endif.
  endmethod.


  method constructor.
    if log is initial.
      log = |First execution-->{ log }-'Running a instance constructor methodo'|.
    else.
      log = | { log }.....Second execution-->'Running a instance constructor methodo'|.
    endif.
  endmethod.

endclass.
