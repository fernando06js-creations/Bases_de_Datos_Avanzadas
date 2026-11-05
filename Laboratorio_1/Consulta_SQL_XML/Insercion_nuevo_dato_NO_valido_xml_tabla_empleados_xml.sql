DECLARE
   v_xml XMLTYPE;
BEGIN

   v_xml := XMLTYPE('
<Empleado>
   <nombre>Fernando</nombre>
   <salario>cinco mil</salario>
</Empleado>');

   IF v_xml.isSchemaValid('empleados.xsd') = 1 THEN
      INSERT INTO empleados_xml
      VALUES (2, v_xml);
   ELSE
      raise_application_error(
         -20001,
         'XML invalido respecto al esquema XSD'
      );
   END IF;

END;
/