-------------------------------------------------------------------------------------|
-- Contar los valores distintos
-- Si queremos contar los valores distintos en una columna de una tabla, 
-- podemos combinar las funciones COUNT y DISTINCT de la siguiente manera:COUNT(DISTINCT columna)
-- Podemos contar la cantidad de departamentos únicos de la empresa con:
SELECT COUNT(DISTINCT Departamento) FROM Empleados;
-- ***********
-- Ejercicio
-- Se tiene la tabla usuarios con la siguiente información:
-- Crea una consulta que muestre los teléfonos únicos de la tabla. La columna mostrada debe llamarse telefonos_unicos
SELECT COUNT(DISTINCT TELEFONO) AS telefonos_unicos FROM usuarios;



-------------------------------------------------------------------------------------|
-- Contando correos únicos
-- ***********
-- Ejercicio
-- Dada la siguiente tabla de usuarios
-- Crea una consulta para contestar cuantos correos únicos existen en la tabla. La columna resultante debe llamarse correos_cant
SELECT COUNT(DISTINCT CORREO) AS correos_cant FROM usuarios;



-------------------------------------------------------------------------------------|
-- Distinct con múltiples columnas
--  Podemos usar DISTINCT con más de una columna para obtener combinaciones únicas de esas columnas. 
--  Supongamos que tienes una tabla llamada empleados con las columnas departamento y puesto.
--  Luego podemos obtener todas las combinaciones únicas de Departamento y Puesto utilizando la siguiente consulta:
SELECT DISTINCT departamento, puesto FROM empleados;
-- ***********
-- Ejercicio
-- Para la siguiente tabla "productos" deseamos obtener todas las combinaciones únicas de "Categoria" y "Precio"
SELECT DISTINCT  categoria, precio FROM productos;
