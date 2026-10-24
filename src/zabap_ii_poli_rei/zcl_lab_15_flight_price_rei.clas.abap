class zcl_lab_15_flight_price_rei definition
  public
  create public .

  public section.

    data mt_flights type standard table of /dmo/flight.

    methods: add_price importing is_flights type /dmo/flight.

  protected section.
  private section.
endclass.



class zcl_lab_15_flight_price_rei implementation.
  method add_price.


*select fROM /dmo/flight
*         fields *
*         where currency_code eq 'EUR'
*         into table @data(ls_flihts).

    append is_flights to mt_flights.

  endmethod.

endclass.
