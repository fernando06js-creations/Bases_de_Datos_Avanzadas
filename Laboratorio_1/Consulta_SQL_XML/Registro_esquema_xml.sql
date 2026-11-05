BEGIN

   DBMS_XMLSCHEMA.registerSchema(

      schemaURL => 'empleados.xsd',

      schemadoc => XMLTYPE(q'~

<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">

    <xs:element name="Empresa">

        <xs:complexType>

            <xs:sequence>

                <xs:element name="Empleado"
                            maxOccurs="unbounded">

                    <xs:complexType>

                        <xs:sequence>

                            <xs:element name="nombre"
                                        type="xs:string"/>

                            <xs:element name="apellido"
                                        type="xs:string"/>

                            <xs:element name="departamento"
                                        type="xs:string"/>

                            <xs:element name="salario"
                                        type="xs:decimal"/>

                        </xs:sequence>

                        <xs:attribute
                            name="id"
                            type="xs:integer"
                            use="required"/>

                    </xs:complexType>

                </xs:element>

            </xs:sequence>

        </xs:complexType>

    </xs:element>

</xs:schema>
~'),

      local => TRUE,
      genTypes => FALSE,
      genTables => FALSE

   );

END;
/