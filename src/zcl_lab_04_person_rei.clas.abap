class zcl_lab_04_person_rei definition
  public
  final
  create public .

  public section.

    methods: age_get  importing      v1_age   type i,
             age_set returning value(rv_age)  type i.
  protected section.
  private section.

    data: age type i.


endclass.



class zcl_lab_04_person_rei implementation.
  method age_get.
    age = v1_age.
  endmethod.

  method age_set.
    rv_age = age.
  endmethod.

endclass.
