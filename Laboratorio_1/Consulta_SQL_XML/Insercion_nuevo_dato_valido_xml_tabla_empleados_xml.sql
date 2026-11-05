INSERT INTO empleados_xml
VALUES(

1,

XMLTYPE(

'<Empleado id="300">

   <nombre>Fernando</nombre>
   <apellido>Asis</apellido>
   <departamento>IT</departamento>
   <salario>5000</salario>

</Empleado>'

)

);