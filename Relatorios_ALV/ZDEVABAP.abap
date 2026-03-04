

REPORT ZDEVABAP_001.

TABLES: t001. " Tabela standard do SAP (Empresas)

DATA: lt_empresas TYPE TABLE OF t001,
      lo_alv      TYPE REF TO cl_salv_table.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  SELECT-OPTIONS: s_bukrs FOR t001-bukrs.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.

  SELECT *
    FROM t001
    INTO TABLE @lt_empresas
    WHERE bukrs IN @s_bukrs.

  IF sy-subrc = 0.

    TRY.
        cl_salv_table=>factory(
          IMPORTING
            r_salv_table = lo_alv
          CHANGING
            t_table      = lt_empresas ).

        lo_alv->display( ).

      CATCH cx_salv_msg.
        WRITE: / 'Erro ao gerar o relatório ALV.'.
    ENDTRY.

  ELSE.
    MESSAGE 'Nenhuma empresa encontrada para o filtro informado.' TYPE 'I'.
  ENDIF.