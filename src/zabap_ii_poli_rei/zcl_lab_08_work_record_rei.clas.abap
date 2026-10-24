class zcl_lab_08_work_record_rei definition
  public
  final
  create public .

  public section.

    class-methods open_new_record importing iv_date       type zdate
                                            iv_first_name type string
                                            iv_last_name  type string
                                            iv_surname    type string.


  protected section.
  private section.

    class-data: date       type zdate,
                first_name type string,
                last_name  type string,
                surname    type string.
endclass.



class zcl_lab_08_work_record_rei implementation.
  method open_new_record.

    date       = iv_date.
    first_name = iv_first_name.
    last_name  = iv_last_name.
    surname    = iv_surname.

  endmethod.

endclass.
