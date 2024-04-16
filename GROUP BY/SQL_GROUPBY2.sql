-------------------------------------------------------------------------------------|
--  En este ejercicio agruparemos y sumaremos. 
--  La lógica de la consulta es la misma previamente mencionada, solo cambia la funcion de agrupacion a utilizar.
--  Si queremos calcular cuanto ha gastado cada cliente, podemos realizar la siguiente consulta
SELECT Cliente, SUM(Monto) AS Monto_Total FROM pedidos GROUP BY Cliente;
-- *****
-- Ejercicio
--  Utilizando la siguiente tabla ventas de una empresa, crea una consulta que muestre cuanto se vendió en total por cada cateogría. 
--  Las columnas de la consulta deben llamarse categoria y monto_total
SELECT categoria , sum(monto) AS monto_total FROM ventas GROUP BY categoria;



-------------------------------------------------------------------------------------|
--  Agrupar y promediar
--  Previamente aprendimos que AVG nos permite calcular el promedio de los elementos de una columna en una tabla. 
-- En este ejercicio lo utilizaremos para calcular promedios por grupo.
SELECT grupo, AVG(columna) FROM tabla GROUP by grupo
-- *****
-- Ejercicio
--  Dada la siguiente tabla de estudiantes
--  Encuentra el promedio de notas de cada estudiante. Las columnas deben tener el nombre de Nombre_Completo y Promedio_Notas respectivamente.
--  Este ejercicio tiene un supuesto importante: que no hay dos estudiantes con el mismo nombre y apellido. 
--  Discutiremos este tipo de supuestos más adelante cuando revisemos el concepto de integridad.
SELECT Nombre_Completo, AVG(nota) AS promedio_notas FROM estudiantes GROUP BY Nombre_Completo;



-------------------------------------------------------------------------------------|
-- Máximo por grupo
--  En este ejercicio combinaremos la función de agregación MAX() con group by para poder obtener el monto mas alto de cada grupo. 
--  La sintaxis de la consulta será igual a las vistas previamente, es decir:
SELECT grupo, MAX(columna) FROM tabla GROUP by grupo
-- *****
-- Ejercicio
--  Dada la siguiente tabla de ventas:
--  Crea una consulta para calcular el monto mas alto por cada categoría. 
--  La tabla resultante debe tener dos columnas: categoria y monto_mas_alto.
SELECT categoria, MAX(MONTO) AS monto_mas_alto FROM ventas GROUP BY categoria ;