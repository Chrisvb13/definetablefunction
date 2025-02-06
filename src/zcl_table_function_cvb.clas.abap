CLASS zcl_table_function_cvb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .
    CLASS-METHODS get_paciente FOR TABLE FUNCTION zdefine_table_function_cvb.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_table_function_cvb IMPLEMENTATION.

  METHOD get_paciente BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT OPTIONS READ-ONLY USING zpacientes_cvb.

    RETURN select
            client,
            nombre_paciente,
            apellido_paciente,
            poblacion,
            email_paciente
         from zpacientes_cvb
         where provincia = p_provincia;

  ENDMETHOD.


  ENDCLASS.
