-------------------------------------------------------------------------------------|
-- Para transformar un string a mayúsculas en SQLITE, MySQL o PostgreSQL podemos utilizar la función UPPER().
-- esta funcion nos permite tranformar a mayuscula los dato de la columna que elijas, (Ojo solo modifica la forma en que se muestra, no modifica el dato).
SELECT UPPER(nombre) FROM usuarios;
-- Al utilizar funciones de este tipo, será frecuente que renombremos la columna utilizando un alias.
SELECT UPPER(nombre) as nombre_en_mayus FROM usuarios;
--
-- *********************************
-- Ejercicio
-- Se tiene una tabla de usuarios con las columnas nombre, apellido, email y teléfono.
-- Selecciona los emails de la tabla usuarios con el alias email_upper. Todos los emails deben ser mostrados en mayúsculas.
SELECT UPPER(EMAIL) AS email_upper FROM usuarios;



-------------------------------------------------------------------------------------|
-- Trasformando un string a minúsculas
-- Para transformar un string a minuscula en SQLITE, MySQL o PostgreSQL podemos utilizar la función LOWE().
-- esta funcion nos permite tranformar a mayuscula los dato de la columna que elijas, (Ojo solo modifica la forma en que se muestra, no modifica el dato).
SELECT LOWER(nombre) AS nombre_minusculas FROM productos;
-- *********************************
-- Ejercicio
-- Se tiene una tabla de usuarios con los campos id, nombre, e email. 
-- El campo email es de tipo texto y contiene algunas mayúsculas, lo que puede ocasionar errores en la base de datos.
-- Selecciona los emails de la tabla usuarios con el alias email_lower. Todos los emails deben ser mostrados en minúsculas.
SELECT LOWER(email) AS email_lower FROM usuarios;



-------------------------------------------------------------------------------------|
-- Quitando espacios en blanco de un string
-- si queremos eliminar los espacios de un String podemos utilizar la funcion TRIM().
-- si tenemos una tabla de productos con una columna 'nombre' que contiene espacios en blanco 
-- al inicio y final de cada nombre, podemos utilizar la siguiente consulta para quitar esos espacios:
SELECT TRIM(nombre) FROM productos;
-- *********************************
-- Ejercicio
-- Se tiene una tabla de usuarios con las columnas nombre, apellido, email y teléfono. 
-- Los nombres y correos poseen espacios en blanco tanto al inicio como al final de su valor. 
-- Utiliza la función TRIM() para seleccionar los nombres e emails y quitar los espacios en blanco.
SELECT TRIM(nombre), TRIM(email) FROM usuarios;



-------------------------------------------------------------------------------------|
-- podemos utilizar la función LENGTH() para obtener la longitud de una cadena de caracteres.
-- la siguiente consulta nos devolveria la columna nombre y otra columna col la longitud del nombre(podria utilizar un alisa lambien(AS))
SELECT nombre, LENGTH(nombre) FROM usuarios;
-- *********************************
-- Ejercicio
-- Selecciona el largo del apellido de todos los usuarios en la tabla usuarios.
SELECT LENGTH(apellido) FROM usuarios;



-------------------------------------------------------------------------------------|
-- Obteniendo el nombre mas largo de la tabla
-- si queremos seleccionar el largo del nombre más corto de la tabla usuarios, la consulta quedaría así:
SELECT LENGTH(nombre) as largo_nombre FROM usuarios ORDER BY LENGTH(nombre) LIMIT 1 ;
-- si queremos obtener el largo del nombre más largo, invertiremos el orden de la selección.
SELECT LENGTH(nombre) as largo_nombre FROM usuarios ORDER BY LENGTH(nombre) DESC LIMIT 1 ;
-- *********************************
-- Ejercicio
-- Se tiene una tabla usuarios con las columnas nombre, apellido, email y teléfono.
-- Utiliza lo aprendido para seleccionar el largo de los 3 correos más largos de la tabla. 
-- La columna resultante debe mostrar sólo el largo (cantidad de caracteres) de estos correos.
SELECT LENGTH(email) FROM usuarios ORDER BY LENGTH(email) DESC LIMIT 3;
