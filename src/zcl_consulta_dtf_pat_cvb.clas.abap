CLASS zcl_consulta_dtf_pat_cvb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_consulta_dtf_pat_cvb IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_dtf TYPE TABLE OF zdefine_table_function_cvb,
          ls_dtf TYPE zdefine_table_function_cvb.

    SELECT * FROM zdefine_table_function_cvb( p_provincia = 'MADRID' )
    INTO TABLE @lt_dtf.

    LOOP AT lt_dtf INTO ls_dtf.
      out->write( 'paciente de la provincia Madrid' ).
      out->write( ls_dtf-poblacion ).
      out->write( ls_dtf-apellido_paciente ).
      out->write( ls_dtf-nombre_paciente ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
