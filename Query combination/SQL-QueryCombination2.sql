-------------------------------------------------------------------------------------|
-- Introducción a intersección
--  El operador INTERSECT se utiliza para combinar dos SELECT y devolver los resultados que se encuentran en ambas consultas.
--  ejemplo
SELECT nombre FROM clientes1 INTERSECT SELECT nombre FROM clientes2
-- *****
-- Ejercicio
--  Dadas las siguientes tablas, lista1 y lista2, encuentra los clientes que están en ambas listas.
SELECT cliente
FROM lista1
INTERSECT SELECT cliente
FROM lista2;



-------------------------------------------------------------------------------------|
-- El operador Except
--  El operador EXCEPT en SQL se utiliza para devolver todas las filas en la primera consulta que no están presentes en la segunda consulta. 
--  En otras palabras, EXCEPT devuelve solo las filas, que son parte de la primera consulta pero no de la segunda consulta.
--  Por ejemplo, si tenemos dos tablas, 'Tabla1' y 'Tabla2', que contienen los siguientes datos:
--  Podemos usar EXCEPT para encontrar los nombres que están en 'Tabla1' pero no en 'Tabla2' con la siguiente consulta:
SELECT nombre FROM Tabla1 EXCEPT SELECT nombre FROM Tabla2;
-- *****
-- Ejercicio
--  Dadas las siguientes tablas, 'empleados' y 'gerentes', que contienen los siguientes datos:
-- empleados
-- gerentes
--  Crea una consulta que muestre los nombres de los empleados que no son gerentes.
SELECT nombre
FROM empleados
EXCEPT SELECT nombre
FROM gerentes;


