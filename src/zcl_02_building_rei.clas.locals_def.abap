*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section


types: begin of ty_first,
          comp1 type string,
          comp2 type string,
          comp3 type string,
          comp4 type string,
      end of ty_first.


interface LIF_FIRST.

        data: lt_first type standard table of ty_first.
        data ls_first type ty_first.
endinterface.

class lcl_helper definition.

public section.

data ms_struct type ty_first.


endclass.
