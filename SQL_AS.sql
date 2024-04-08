--AS sirve para establecer un alias a una columna seleccionada para asi tener una mejor comprencion
SELECT col1 AS col_nombre1 FROM tabla;

-- en este caso tenemos una tabla llamada "usuario" de la cual vamos a cambiar el nombre de la columna "nombre" a "usuarios"
SELECT nombre AS cliente FROM usuarios;

--
--
-- Asignando alias a varias columnas con "AS" --

-- para poder cambiar el alias a varias columnas es importante saber que cada columna es individual elalias (aunque es obvio XD)
-- ya que cada columna lleva su AS  los cuales se separan por una ",".
SELECT col1 AS col_nombre1, col2 AS col_nombre2 FROM tabla;

-- en este caso necesitamos cambia el nombre de la columna 'nombre' a 'nombre_usuario' y 
-- el nombre de la columna 'apellido' a 'apellido_usuario' en la tabla usuarios.
SELECT nombre AS NOMBRE_USUARIO, apellido AS APELLIDO_USUARIO FROM usuarios;

--
--
-- Asignando un alias con AS y comillas dobles --

-- En SQL, podemos utilizar la cláusula AS junto con comillas dobles para cambiar el nombre de una columna en los resultados de una consulta
-- esto es util cuando quieres especificar el uso de las tildes o espacios
SELECT nombre_completo, sueldo AS "Salario de Empleados" FROM empleados;
-- en este caso queremos seleccionar el nombre y el email de los usuarios de la tabla usuarios, y asigna el nombre 'Correo electrónico' a la columna 'email'.
-- toma en cuenta las tildes y el espacion
SELECT nombre, email AS "CORREO ELECTRÓNICO" FROM usuarios;

