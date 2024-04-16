-------------------------------------------------------------------------------------|
-- Agrupando valores con GROUP BY
--  La cláusula GROUP BY es una poderosa herramienta en SQL que se utiliza para agrupar filas con valores idénticos 
--  en una o varias columnas específicas, permitiendo realizar operaciones de agregación en cada grupo.
--  Podemos seleccionar los elementos únicos utilizando GROUP BY de la siguiente forma:
SELECT color as color_unico FROM colores GROUP BY color
-- ***********
-- Ejercicio
--  Dada la siguiente tabla de usuarios
--  Crea una consulta que nos muestre cada correo una única vez. La columa mostrada debe llamarse correo_unico
SELECT correo AS correo_unico FROM usuarios GROUP BY correo;


-------------------------------------------------------------------------------------|
-- Agrupar y contar
--  GROUP BY es comúnmente utilizada junto con funciones de agregación como COUNT, MAX, MIN, SUM y AVG 
--  para obtener información resumida de un conjunto de datos.
--  Queremos saber cuantas veces aparece cada color. Esto lo podemos lograr combinando GROUP BY y la función de agregación COUNT
SELECT color, COUNT(color) as Repeticiones FROM colores GROUP BY color
-- ***********
-- Ejercicio
--  Dada la siguiente tabla de usuarios
--  Crea una consulta que nos muestre cada correo una única vez junto a la cantidad de repeticiones. 
--  Las columnas deben llamarse correo y repeticiones.
SELECT correo, COUNT(correo) AS repeticiones FROM usuarios GROUP BY correo;



-------------------------------------------------------------------------------------|
--  Ejercitando agrupar y contar
-- ***********
-- Ejercicio
--  Dada la siguiente tabla empleados
--  Se pide contar cuantas personas trabajan en cada departamento. 
-- Las columnas resultantes deben llamarse departamento y cantidad_empleados
SELECT departamento, COUNT(departamento) AS cantidad_empleados FROM empleados GROUP BY departamento;