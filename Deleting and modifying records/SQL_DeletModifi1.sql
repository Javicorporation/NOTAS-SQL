-------------------------------------------------------------------------------------|
--Borrar todos los registros de una tabla
--  En SQL, la cláusula DELETE se utiliza para eliminar registros de una tabla. 
--  Cuando se ejecuta la instrucción DELETE FROM nombre_tabla, se eliminan todos los registros de la tabla especificada.
--  Es importante tener en cuenta que esta operación es irreversible y eliminará permanentemente los datos de la tabla, por lo que debes tener mucho cuidado al usar esta instrucción.
-- *****
-- Ejercicio
-- Borra todos los datos de la tabla 'productos'.
DELETE FROM productos;



-------------------------------------------------------------------------------------|
--Borrar un registro con where
--  La sentencia DELETE se utiliza para eliminar datos de una tabla. 
--  Si queremos eliminar filas específicas en lugar de todos los datos de la tabla, podemos usar la cláusula WHERE junto con la sentencia DELETE. 
--  Esto nos permite especificar una condición para determinar qué filas se eliminarán.
--  si tenemos una tabla de productos y queremos eliminar solo aquellos productos cuyo precio sea igual a 1000, podemos usar la siguiente consulta:
DELETE FROM productos WHERE precio = 1000
-- *****
-- Ejercicio
-- Dada la tabla usuarios con los siguientes datos:
-- Borra el usuario cuyo id sea igual a 2.
DELETE FROM usuarios WHERE id = 2;



-------------------------------------------------------------------------------------|
--Editar registros
-- La sentencia UPDATE se utiliza para realizar modificaciones en datos ya existentes de una tabla.
-- Se utiliza de la siguiente forma
UPDATE nombre_tabla SET nombre_columna = nuevo_valor
-- Supongamos que tenemos una tabla ventas con una columna llamada "total". 
-- Si queremos aumentar en un 10% el total de todas las ventas registradas en la tabla, podemos hacerlo de la siguiente manera:
UPDATE ventas SET total = total * 1.10;
-- La instrucción UPDATE afecta todas las filas de la tabla, ya que no hemos utilizado la cláusula WHERE para establecer una condición de filtro.
-- *****
-- Ejercicio
-- Se tiene una tabla usuarios con los siguientes datos:
-- Edita la columna "registrado" para que todos los usuarios tengan el valor TRUE
UPDATE usuarios SET registrado = TRUE;