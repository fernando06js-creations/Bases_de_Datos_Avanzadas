SELECT XMLELEMENT(
       "Empresa",
       XMLAGG(
         XMLELEMENT(
            "Empleado",
            XMLATTRIBUTES(
               e.employee_id AS "id"
            ),
            XMLFOREST(
               e.first_name AS "nombre",
               e.last_name AS "apellido",
               d.department_name AS "departamento",
               e.salary AS "salario"
            )
         )
       )
)
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;