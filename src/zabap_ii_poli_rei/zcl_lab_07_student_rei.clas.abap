class zcl_lab_07_student_rei definition
  public
  final
  create public .

  public section.

    data: birth_date type zdate read-only.

    methods set_birth_date importing vi_birth_date type zdate.

  protected section.
  private section.
endclass.



class zcl_lab_07_student_rei implementation.

  method set_birth_date.
    birth_date = vi_birth_date.
  endmethod.

endclass.
