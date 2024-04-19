-------------------------------------------------------------------------------------|
-- Introducción a la cláusula unión de SQL
--  El operador UNION en SQL se utiliza para combinar el resultado de dos o más SELECT en un solo conjunto de resultados.
--  La sintaxis básica de UNION es la siguiente:
SELECT columna1, columna2
FROM tabla1 
UNION SELECT columna1, columna2
FROM tabla2; 
--  Las columnas que se seleccionan en los SELECT deben tener los mismos nombres de columna, secuencia y tipos de datos.
-- *****
-- Ejercicio
--  Dadas las tablas estudiantes
--  y profesores
--  Escribe una consulta SQL que use UNION para combinar los nombres de ambas tablas. 
--  La columna resultante debe llamarse 'nombres'.
SELECT nombre AS nombres
FROM estudiantes
UNION SELECT nombre 
FROM profesores;



-------------------------------------------------------------------------------------|
-- Eliminar duplicados con union
--  El operador UNION se utiliza para combinar los resultados de dos o más consultas SELECT en un solo conjunto de resultados. 
--  La principal característica de UNION es que elimina las filas duplicadas del resultado final.
-- *****
-- Ejercicio
--  Se tiene la tabla usuarios con la siguiente información:
--  Y la tabla clientes con la siguiente información:
--  Crea una consulta que nos muestre cada correo una única vez. La columna mostrada debe llamarse correos_unicos
SELECT email AS correos_unicos
FROM usuarios
UNION SELECT email
from Clientes GROUP BY email;



-------------------------------------------------------------------------------------|
-- Union vs Union all
--  En los ejercicios anteriores aprendimos que el operador UNION se utiliza para combinar los resultados de dos o más consultas SELECT en un solo conjunto de resultados, 
--  eliminando las filas duplicadas.
--  Si queremos obtener las filas duplicadas en el resultado, utilizaremos el operador UNION ALL.
--  Por ejemplo, si tenemos dos tablas, 'tabla1' y 'tabla2', con los siguientes datos:
--  Observa que Juan está en ambas tablas.
--  Podemos combinar ambas tablas utilizando UNION ALL de la siguiente forma:
SELECT * FROM tabla1 UNION ALL SELECT * FROM tabla2;
-- *****
-- Ejercicio
--  Dadas las siguientes tablas empleados1 y empleados2
--  Crea una consulta que combine ambas tablas incluyendo las filas duplicadas.
SELECT *
FROM empleados1
UNION ALL SELECT *
FROM empleados2;