-------------------------------------------------------------------------------------|
-- Ordenando todos los datos y la funcion
-- Para esto podemos hacer una consulta como la siguiente:
SELECT email FROM usuarios ORDER BY LENGTH(email) DESC LIMIT 1;
-- Además, es posible que se nos solicite seleccionar todos los campos del usuario cuyo correo sea el más largo. 
-- Para lograrlo, podemos utilizar la siguiente consulta:
SELECT * FROM usuarios ORDER BY LENGTH(email) DESC LIMIT 1;
-- Esta consulta nos devolverá todas las filas de la tabla "usuarios" donde la longitud del correo electrónico sea igual a la longitud máxima encontrada en toda la tabla.
-- Asimismo, podrían requerir que seleccionemos todos los campos de la tabla y, además, incluir el largo del correo electrónico. 
-- La idea es similar, simplemente agregamos la función al SELECT:
SELECT *, LENGTH(email) as largo_email FROM usuarios ORDER BY LENGTH(email) DESC LIMIT 1;
-- *********************************
-- Ejercicio
-- Se tiene una tabla usuarios con las columnas nombre, apellido, email y teléfono.
-- Utiliza lo aprendido para seleccionar los 3 correos más largos de la tabla. 
-- El resultado debe mostrar dos columnas: una con los emails y otra con sus largos respectivos.
SELECT email, LENGTH(email) FROM usuarios ORDER BY LENGTH(email) DESC LIMIT 3;



-------------------------------------------------------------------------------------|
--si tenemos una columna con un nombre y otra con un apellido, podemos generar una única columna con el nombre y apellido. 
-- A esto se le llama concatenar y utilizaremos el operador ||
-- Un ejemplo de consulta con concatenación sería la siguiente:

SELECT nombre || ' ' || apellido AS nombre_completo FROM empleados;

-- En esta consulta, estamos concatenando el nombre y el apellido de cada empleado, separados por un espacio, y utilizando el alias 'nombre_completo' para la nueva columna creada.
-- *********************************
-- Ejercicio
-- Supongamos que tienes una tabla llamada productos con los campos 'producto', 'marca' y 'precio'. 
-- Selecciona una lista de todos los productos con su nombre, seguido de un guion ("-"), y su marca. 
-- Asigna el alias 'marca_producto' a la columna creada.
SELECT producto ||'-'|| marca AS marca_producto FROM productos;



-------------------------------------------------------------------------------------|
-- Seleccionando caracteres de un string con SUBSTR
-- si queremos seleccionar uan determinada cantidad de caracctes en una columna podemos utilizar la funcion "SUBSRT" 
SUBSTR( string, inicio, largo )
-- en esta sintaxis se muestra que la funcion necesita de 3 parametros
-- 1. es la columna a elegir sus caracteres
-- 2. desde donde iniciara la presentacion
-- 3. es el valor asta donde se presentaran los caracteres.
-- SELECT SUBSTR(nombre, 1, 1) AS primera_letra FROM productos; 
-- Es importante recordar que algunas funciones tienen distintos nombres dependiendo del motor de base de datos. 
-- Por ejemplo, para lograr este mismo objetivo en PostgreSQL, deberíamos usar la función LEFT() y en MYSQL seria SUBSTRING()
-- *********************************
-- Ejercicio
-- Se tiene una tabla usuarios con las columnas id, nombre, apellido, email y teléfono. 
-- Utiliza la función SUBSTR para seleccionar las tres primeras letras del apellido de cada usuario en la tabla 'usuarios'. 
-- Asigna el nombre 'primeras_letras' a la columna creada.
SELECT SUBSTR (apellido, 1, 3) AS primeras_letras FROM usuarios;



-------------------------------------------------------------------------------------|
-- Seleccionando caracteres
-- *********************************
-- Ejercicio
-- Se tiene una tabla de usuarios con las columnas nombre y apellido. 
-- Utilizando la función SUBSTR(), selecciona 3 caracteres del apellido de María, partiendo desde el segundo caracter. 
-- Asigna el alias 'tres_caracteres_del_apellido' a la columna creada.
SELECT SUBSTR(apellido,2,3) AS tres_caracteres_del_apellido FROM usuarios LIMIT 1;



-------------------------------------------------------------------------------------|
-- Combinando funciones
-- Esta consulta selecciona los correos electrónicos de la tabla "usuarios", 
-- los convierte a minúsculas y elimina cualquier espacio en blanco adicional alrededor de ellos. 
-- El resultado será una lista de correos electrónicos "limpios" y en minúsculas.
SELECT LOWER(TRIM(email)) as email_limpios from usuarios;
-- *********************************
-- Ejercicio
-- Se tiene una tabla de usuarios con las columnas nombre, apellido, email y teléfono. 
-- Los nombres, apellidos y correos poseen espacios en blanco tanto al inicio como al final y algunos de ellos tienen mayúsculas.
-- Utiliza lo aprendido para seleccionar los nombres, emails y apellidos, limpiando cada uno de estos campos. 
-- Para que el resultado sea correcto debes ocupar los alias nombre_limpio, apellido_limpio e email_limpio respectivamente.
SELECT LOWER(TRIM(nombre)) AS nombre_limpio, LOWER(TRIM(apellido)) as apellido_limpio, LOWER(TRIM(email)) as email_limpio FROM usuarios;