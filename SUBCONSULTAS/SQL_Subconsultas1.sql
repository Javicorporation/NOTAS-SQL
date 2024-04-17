-------------------------------------------------------------------------------------|
-- Introduccion a subconsultas
--  Las subconsultas, también conocidas como "subqueries", nos permiten utilizar los resultados de una consulta dentro de otra consulta.
--  Se nos pide seleccionar a todas las personas que ganan sobre el promedio.
--  Este tipo de preguntas podemos contestarlas utilizando subconsultas.
--  La idea para contestar esto es la siguiente.
--  Calculamos el promedio 
SELECT avg(sueldo) FROM empleados
--  Seleccionamos todos los empleados cuyo sueldo es mayor a la consulta anterior. 
SELECT * FROM empleados WHERE sueldo > (SELECT AVG(sueldo) FROM empleados)
-- *****
-- Ejercicio
--  Utilizando los mismos datos de la tabla empleados, selecciona todos los registros cuyo sueldo sea menor o igual al promedio.
SELECT * FROM empleados WHERE sueldo <=(SELECT avg(sueldo) FROM empleados);



-------------------------------------------------------------------------------------|
-- Subconsultas y where parte 1
--  Dentro de las subconsultas, podemos utilizar las mismas cláusulas que hemos aprendido hasta ahora, como la cláusula WHERE. 
--  Esto significa que podemos aplicar la cláusula WHERE tanto dentro de la subconsulta como fuera de ella.
-- *****
-- Ejercicio
--  Dada la siguiente tabla empleados
--  Selecciona toda la información de los registros que sean mayores al promedio del departamento de finanzas.
-- Tip:
--  Se pide el promedio exclusivamente del departamento de finanzas por lo que no hay necesidad de agrupar los datos.
--  Para este tipo de problema usualmente hay más de una solución.
SELECT * FROM empleados WHERE(sueldo) > (SELECT AVG(sueldo) FROM empleados WHERE departamento = "Finanzas");



-------------------------------------------------------------------------------------|
-- Subconsultas y where parte 2
-- *****
-- Ejercicio
--  Utilizando los datos de la tabla empleados, 
--  selecciona todos los empleados cuyo sueldo sea mayor al empleado que tiene el mayor sueldo del departamento de finanzas.
SELECT * FROM empleados WHERE sueldo > (SELECT MAX(sueldo) FROM empleados WHERE departamento = 'Finanzas');