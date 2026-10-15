class zcl_lab_01_ejec_rei definition
  public
  final
  create public .

  public section.

    constants: my_age_get   type i value 55,
               lv_lo_flight type c length 3 value  'SQ',
               connectionid type n length 4 value 0001.

    interfaces if_oo_adt_classrun.

  protected section.
  private section.
endclass.



class zcl_lab_01_ejec_rei implementation.

  method if_oo_adt_classrun~main.

*-Estructura global referenciada al tipo de datos definido en la clase zcl_lab_06_elements_rei
    data ls_elem_objects type  zcl_lab_06_elements_rei=>ty_elem_objects.

*-5.  Métodos de instancia y métodos estáticos

    data(lo_age)     = new zcl_lab_04_person_rei(  ).

***- Proceso que muestra mi edad
    lo_age->age_get( v1_age = my_age_get ).
    out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
    out->write( |My age is: { lo_age->age_set( )  } |  ).
    out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).

*-6. Métodos funcionales

    data(lo_flight)  = new zcl_lab_05_flight_rei(  ).

****- Proceso que muestra si esxiten los datos en /DMO/FLIGHT

    lo_flight->fiend_flight(
      exporting
        vi_airlineid    = lv_lo_flight
        vi_connectionid = connectionid
      receiving
        rv_abap_bool    = data(lv_abap_bool) ).

    if lv_abap_bool is not initial.
      out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
      out->write( 'Data Found in the FLIGHT database' ).
      out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
    else.
      out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
      out->write( 'Data not found' ).
      out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
    endif.


*-7.  Resolución de tipos de datos en clases

    data(lo_element) = new zcl_lab_06_elements_rei(  ).

**- Ejecución para mostrar el contenido de la estructura MS_OBJECT a través de la referencia de la clase en la consola

    lo_element->set_object(
      importing
        ms_object = ls_elem_objects
    ).

***-Mostrar el contenido de la estructura MS_OBJECT a través de la referencia de la clase en la consola

    out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
    out->write( |Class: { ls_elem_objects-class } Instance: { ls_elem_objects-instance } Reference: { ls_elem_objects-reference } | ).
    out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).


*-8. Constantes en clases
***- Mostrar valores de las constantes definidas en la clase zcl_lab_06_elements_rei

    out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
    out->write( |Valor 1: { lo_element->gv_valor1 } Valor 2: { lo_element->gv_valor2 } Valor 3: { lo_element->gv_valor3 } Valor 4: { lo_element->gv_valor4 }| ).
    out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).


*- 9.   READ-ONLY Restringir Acceso Escritura

    data(lo_student) = new zcl_lab_07_student_rei(  ).

*- Actualización con el methodo

    data lv_birth_date type zdate value '19710605'.

    lo_student->set_birth_date( vi_birth_date = lv_birth_date ).

    out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
    out->write( lo_student->birth_date ).
    out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).

*- Actualizar el valor del atributo utilizando la referencia, el separador para los componentes de instancia y el nombre del atributo

    "    lo_student->birth_date = '19741011'.

*-10.   Parámetro opcional

    data: lv_date       type zdate  value '20261231',
          lv_first_name type string value 'Reiner Rafael',
          lv_last_name  type string value 'Jiménez Hernández',
          lv_surname    type string value 'REIJIMHER'.




    zcl_lab_08_work_record_rei=>open_new_record(
      iv_date       =   lv_date
      iv_first_name =   lv_first_name
      iv_last_name  =   lv_last_name
      iv_surname    =   lv_surname
    ).

*- 11.  Autorreferencia

    data: lv_iban_get type string value '01012-24568-8549-0001',
          lv_iban_set type string.

    data(lo_account) = new zcl_lab_09_account_rei(  ).

*- GET IBAN
    lo_account->m_get( iv_iban = lv_iban_get ).

*-SET IBAN
    lv_iban_set = lo_account->m_set(  ).

*- Print Value IBAN
    if lv_iban_set is initial.
      out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
      out->write( 'No IBAM number' ).
      out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
    else.
      out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
      out->write( |IBAN number: { lv_iban_set } |  ).
      out->write( |-------------------------------------------------------------------------------------------------------------------------------------------| ).
    endif.


  endmethod.

endclass.
