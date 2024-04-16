-------------------------------------------------------------------------------------|
-- Mínimo por grupo
--  n este ejercicio combinaremos la función MIN() con GROUP BY para poder obtener el monto mas bajo de cada grupo.
--  La sintaxis de la consulta será igual a las vistas previamente, es decir:
SELECT grupo, MIN(columna) FROM tabla GROUP by grupo
-- *****
-- Ejercicio
--  Dada la tabla ventas
--  Crea una consulta para calcular el monto más bajo por cada categoría. 
--  La tabla resultante debe tener dos columnas: categoria y monto_mas_bajo.
SELECT categoria, MIN(monto) AS monto_mas_bajo FROM ventas GROUP BY categoria;



-------------------------------------------------------------------------------------|
-- Funciones de agregación y fechas
--  A la hora de construir informes, frecuentemente necesitaremos entregar información agrupada en un periodo de tiempo. 
--  Para lograr esto utilizaremos una combinación de GROUP BY con la función strftime.
--  Tenemos la tabla "ventas" con la siguiente información:
--  Se nos solicita determinar el monto total de ventas por año. 
--  Para resolverlo tenemos que agrupar por fecha y sumar los montos de la siguiente forma:
SELECT SUM(monto), strftime("%Y", fecha_venta) AS año FROM ventas GROUP BY strftime("%Y", fecha_venta)
-- *****
-- Ejercicio
--  Utilizando esta nueva tabla de ventas.
--  Calcula el total de ventas por mes. El nombre de las columnas resultantes será "suma_ventas" y "mes" respectivamente.
--  Pista: utiliza la función strftime con %m.
SELECT sum(monto) AS suma_ventas, strftime("%m", fecha_venta) AS mes FROM ventas GROUP BY strftime("%m", fecha_venta);
