DECLARE
BEGIN

   DBMS_OUTPUT.PUT_LINE(
      'INICIO DE TRANSACCION'
   );

   INSERT INTO DEPARTMENTS2
   VALUES
   (
      304,
      'SEGURIDAD',
      103,
      1700
   );

   COMMIT;

   DBMS_OUTPUT.PUT_LINE(
      'FIN DE TRANSACCION'
   );

END;
/