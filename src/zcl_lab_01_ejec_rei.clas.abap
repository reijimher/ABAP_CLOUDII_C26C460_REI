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

*-Definición de instancias
    data(lo_age)    = new zcl_lab_04_person_rei(  ).
    data(lo_flight) = new zcl_lab_05_flight_rei(  ).

*- Proceso que muestra mi edad
    lo_age->age_get( v1_age = my_age_get ).

    out->write( lo_age->age_set( ) ).

*- Proceso que muestra si esxiten los dartos en /DMO/FLIGHT

    lo_flight->fiend_flight(
      exporting
        vi_airlineid    = lv_lo_flight
        vi_connectionid = connectionid
      receiving
        rv_abap_bool    = data(lv_abap_bool) ).

    if lv_abap_bool is not initial.
      out->write( 'El vuelo existe' ).
    else.
      out->write( 'No se encontrado datos' ).
    endif.
  endmethod.

endclass.
