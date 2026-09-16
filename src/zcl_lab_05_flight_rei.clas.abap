class zcl_lab_05_flight_rei definition
  public
  final
  create public .

  public section.

    methods fiend_flight importing vi_AirlineID        type /dmo/carrier_id
                                   vi_ConnectionID     type /DMO/CONNECTION_ID
                         returning value(rv_abap_bool) type abap_bool.
  protected section.
  private section.
endclass.



class zcl_lab_05_flight_rei implementation.

  method fiend_flight.
    select single from /DMO/I_Flight
                  fields AirlineID    as air,
                         ConnectionID as c_id
                  where AirlineID    eq @vi_AirlineID and
                        ConnectionID eq @vi_ConnectionID
                 into @data(lv_valor).

*-Se utiliza la FM xsdbool para convertir una expresión lógica (TRUE/FALSE) a un valor de tipo abap_boo

    rv_abap_bool = xsdbool( sy-subrc = 0 ).

  endmethod.

endclass.
