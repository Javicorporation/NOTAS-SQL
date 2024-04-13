-------------------------------------------------------------------------------------|
-- Promedio de una columna
-- Hasta el momento hemos estudiado tres funciones de agregación:
MAX()
MIN()
SUM()
-- En este ejercicio aprenderemos a calcular promedios con la función de agregación AVG(). 
-- El nombre de la función viene del término en inglés average
SELECT AVG(columna) FROM tabla;
-- ***********
-- Ejercicio
-- Utilizando la tabla empleados, encuentra el promedio de todos los sueldos.
SELECT AVG(sueldo) FROM empleados;



-------------------------------------------------------------------------------------|
-- Contando elementos en una tabla
-- Hasta el momento hemos estudiado cuatro funciones de agregación:
MAX()
MIN()
SUM()
AVG()
-- Ahora introduciremos la función de agregación COUNT(). Con esta podemos contar la cantidad de registros dentro de una tabla.
SELECT COUNT(*) FROM tabla;
-- ***********
-- Ejercicio
-- Encuentra la cantidad de registros (cantidad de filas) que tiene la tabla empleados.
SELECT COUNT(*) FROM empleados;



-------------------------------------------------------------------------------------|
-- Ejercicio 1 : Funciones de agregacion con where
-- Las funciones de agregación se pueden combinar con las claúsulas previamente estudiadas. 
-- Simplemente tenemos que respetar el orden establecido de las claúsulas.
-- A la hora de extraer datos de base de datos será muy común que utilicemos las funciones de agregación en conjunto con where.
SELECT AVG(columna1) FROM tabla WHERE columna2 < valor
-- ***********
-- Ejercicio
-- Utilizando la tabla empleados, calcula la suma de sueldos de todas las personas mayores a 27 años.
SELECT SUM(sueldo) FROM empleados WHERE EDAD > 27;