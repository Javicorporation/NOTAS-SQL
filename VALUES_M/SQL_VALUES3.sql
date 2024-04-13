-------------------------------------------------------------------------------------|
-- Ejercicio 2 : Funciones de agregacion con where
-- ***********
-- Ejercicio
-- Utilizando la tabla empleados, calcula el promedio de los sueldos de todas las personas que ganan más de 50,000
SELECT AVG(sueldo) FROM empleados WHERE sueldo > 50000;



-------------------------------------------------------------------------------------|
--Ejercicio 3 : Funciones de agregacion con where
-- ***********
-- Ejercicio
-- De la siguiente tabla empleados
-- Calcula cuantas personas trabajan en el área de marketing
-- Tip: Utiliza COUNT(*)
SELECT COUNT(*) FROM empleados WHERE DEPARTAMENTO = 'Marketing';



-------------------------------------------------------------------------------------|
-- Ejercicio 4 : Funciones de agregacion con where
-- ***********
-- Ejercicio
-- Dada la siguiente tabla empleados
-- Calcula cuantas personas trabajan en total en las areas de finanzas y marketing
SELECT COUNT(*) FROM empleados WHERE DEPARTAMENTO IN ('Finanzas','Marketing');



-------------------------------------------------------------------------------------|
-- Conteo con condiciones con string
-- ***********
-- Ejercicio
-- Se tiene la tabla usuarios con la siguiente información:
-- Cuenta la cantidad de usuarios cuyo nombre termina con la letra 'a' en la tabla de usuarios.
SELECT COUNT(*) FROM usuarios WHERE NOMBRE LIKE '%a';