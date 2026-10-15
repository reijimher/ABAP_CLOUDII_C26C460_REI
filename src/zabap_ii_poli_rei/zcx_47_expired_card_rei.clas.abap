class zcx_47_expired_card_rei definition
  public
  inheriting from cx_static_check
  final
  create public .

  public section.

    interfaces if_t100_message .
    interfaces if_t100_dyn_msg .

    constants:
      begin of expire,
        msgid type symsgid value 'ZMC_REI',
        msgno type symsgno value '001',
        attr1 type scx_attrname value 'MV_MSGV1',
        attr2 type scx_attrname value 'MV_MSGV2',
        attr3 type scx_attrname value 'MV_MSGV3',
        attr4 type scx_attrname value 'MV_MSGV4',
      end of expire.

    data: MV_MSGV1 type string,
          MV_MSGV2 type string,
          MV_MSGV3 type string,
          MV_MSGV4 type string.

    methods constructor
      importing
        !textid   like if_t100_message=>t100key optional
        !previous like previous optional
        mv_msg1   type string  optional
        mv_msg2   type string optional
        mv_msg3   type string optional
        mv_msg4   type string optional.

  protected section.
  private section.
endclass.



class zcx_47_expired_card_rei implementation.


  method constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor(
    previous = previous
    ).
    clear me->textid.
    if textid is initial.
      if_t100_message~t100key = if_t100_message=>default_textid.
    else.
      if_t100_message~t100key = textid.
    endif.

    me->mv_msgv1 = mv_msg1.
    me->mv_msgv2 = mv_msg2.
    me->mv_msgv3 = mv_msg3.
    me->mv_msgv4 = mv_msg4.


  endmethod.
endclass.
