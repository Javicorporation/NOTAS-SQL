-------------------------------------------------------------------------------------|
-- Having y promedio
-- *****
-- Ejercicio
--  Se tiene la siguiente tabla notas:
--  Crea una consulta para determinar cuales son los estudiantes que aprobaron. 
--  El criterio de aprobación es promedio de notas >= 50.
--  Las columnas a mostrar deben ser email y promedio_notas.
SELECT email AS EMAIL, AVG(notas) AS promedio_notas FROM notas GROUP BY email HAVING AVG(notas)>= 50;



-------------------------------------------------------------------------------------|
-- Having y order
--  Una vez que hemos agrupado datos utilizando la cláusula GROUP BY, es común que necesitemos ordenar esos grupos según algún criterio específico. 
--  Por lo general, queremos ordenar los grupos en función de alguna métrica agregada, 
--  como la suma, el conteo, el promedio, etc. Para hacer esto, usamos la cláusula ORDER BY junto con las funciones de agregación.
--  El orden de las clausulas en una consulta debe ser el siguiente:
-- *****
-- Ejercicio
--  Dada la siguiente tabla ventas, escribe una consulta SQL para obtener los productos que se han vendido en una cantidad total mayor a 1000, 
--  ordenados en orden descendente de cantidad vendida.
--  La tabla resultante debe tener dos columnas: 'producto' y 'cantidad_total'.
SELECT PRODUCTO, SUM(cantidad) AS cantidad_total 
FROM ventas 
GROUP BY(producto) 
HAVING SUM(cantidad) > 1000 
ORDER BY cantidad_total DESC;



-------------------------------------------------------------------------------------|
-- Having y order 2
-- *****
-- Ejercicio
--   Supongamos que tienes una tabla de empleados con los siguientes datos:
--   Tu tarea es escribir una consulta SQL que devuelva los departamentos cuyo salario promedio es mayor a 3000, ordenados de mayor a menor salario promedio. 
--   Los resultados deben mostrar el nombre del departamento y el salario promedio, con los nombres de las columnas como Departamento y Salario_Promedio respectivamente.
SELECT Departamento, AVG(Salario) AS Salario_Promedio
FROM empleados
GROUP BY Departamento
HAVING AVG(Salario) > 3000
ORDER BY Salario_Promedio DESC;