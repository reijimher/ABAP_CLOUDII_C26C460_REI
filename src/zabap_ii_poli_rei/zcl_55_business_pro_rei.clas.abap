class zcl_55_business_pro_rei definition
  public
  final
  create public .

  public section.

    methods get_factorial importing iv_nunmber   type i
                          exporting ev_favtorial type i.

  protected section.
  private section.
endclass.



class zcl_55_business_pro_rei implementation.

  method get_factorial.

    check iv_nunmber gt 0.
    data(lv_number) = iv_nunmber.


*factorial of 4 = 1x2x3x4 = 24

    ev_favtorial = 1.

    while lv_number ne 0.

    ev_favtorial = ev_favtorial * lv_number.
    lv_number -= 1. " esto es igual que colocar lv_number = lv_number - 1.

    endwhile.


  endmethod.

endclass.
