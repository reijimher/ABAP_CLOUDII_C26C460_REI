class zcl_63_play_rei definition abstract
  public
  create public .

  public section.
  protected section.

    data player_counter type i.

    methods initialize_game abstract.
    methods creat_game abstract importing iv_player type i.
    methods end_game abstract returning value(rv_finalized) type abap_bool.
    methods prient_winner abstract.

    methods play final importing iv_players type i.


  private section.
endclass.



class zcl_63_play_rei implementation.

  method play.

    data lv_player type i.
    clear me->player_counter.

    me->player_counter = iv_players.
    me->initialize_game(  ).

    while me->end_game(  ) ne abap_false.

      me->creat_game( lv_player ).
      lv_player += 1.

    endwhile.

    me->prient_winner(  ).

  endmethod.

endclass.
