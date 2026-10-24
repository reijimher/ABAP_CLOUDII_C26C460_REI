class zcl_lab_06_elements_rei definition
  public
  final
  create public .

  public section.

*-Declaración de Structura
    types:
      begin of ty_elem_objects,
        class     type string,
        instance  type string,
        reference type string,
      end of ty_elem_objects.

constants: gv_valor1 type string value 'Prueba # 1',
           gv_valor2 type string value 'Prueba # 2',
           gv_valor3 type string value 'Prueba # 3',
           gv_valor4 type string value 'Prueba # 4'.

*- Se crea el método SET_OBJECT
    methods set_object exporting ms_object type ty_elem_objects.

  protected section.
  private section.
endclass.



class zcl_lab_06_elements_rei implementation.

  method set_object.
    ms_object = value #(
                class     = 'Cl_Prueba'
                instance  = 'LO_Prueba'
                reference = 'REF_TO_OBJECT' ).
  endmethod.

endclass.
