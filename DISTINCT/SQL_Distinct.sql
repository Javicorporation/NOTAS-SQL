-------------------------------------------------------------------------------------|
-- Seleccionar filtrando datos repetidos
-- En SQL el keyword DISTINCT nos permite filtrar los resultados repetidos de una consulta.
-- Supongamos que tenemos la siguiente tabla llamada colores
-- Nos piden crear una consulta que nos muestre cada color una única vez. Para esto utilizaremos la siguiente consulta
SELECT DISTINCT color AS color_unico FROM colores;
-- ***********
-- Ejercicio
-- Prueba en el editor la misma instrucción aprendida para ver cual sería el resultado de la consulta.
SELECT DISTINCT color AS color_unico FROM colores;



-------------------------------------------------------------------------------------|
-- Seleccionando correos únicos
-- ***********
-- Ejercicio
-- Dada la tabla de usuarios
-- Crea una consulta que nos muestre cada correo una única vez. La columa mostrada debe llamarse correo_unico
SELECT DISTINCT(correo) AS correo_unico FROM usuarios;



-------------------------------------------------------------------------------------|
-- Seleccionar distintos años
-- Se tiene la tabla ventas con la siguiente información:
-- Se nos ha solicitado crear una consulta que muestre los años en los que se han realizado transacciones, excluyendo repeticiones.
-- Como ya aprendimos en ejercicios anteriores, para obtener el año a partir de la fecha de venta, podemos utilizar el siguiente código:
SELECT strftime('%Y', fecha_venta) as año_venta FROM ventas
-- Sin embargo, para asegurarnos de obtener años únicos, podemos agregar la cláusula DISTINCT a nuestra consulta de la siguiente manera:
SELECT DISTINCT strftime('%Y', fecha_venta) as año_unico FROM ventas
-- ***********
-- Ejercicio
-- Utilizando la misma tabla de ventas previamente utilizada, selecciona todos los meses distintos, asignándole a la columna el alias "mes_unico".
SELECT DISTINCT strftime('%m', fecha_venta) AS mes_unico FROM ventas;