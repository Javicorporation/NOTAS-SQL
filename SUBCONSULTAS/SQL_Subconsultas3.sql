-------------------------------------------------------------------------------------|
-- Subconsultas con IN parte 3
-- *****
-- Ejercicio
--  Se tiene una tabla de pacientes
--  Se tiene una tabla de consultas
--  Se pide obtener los nombres de todos los pacientes que tuvieron su última consulta antes del 16 de mayo de 2023. 
--  La columna se debe llamar nombres_pacientes.
SELECT p.NOMBRE AS nombres_pacientes
FROM pacientes AS p
WHERE p.PACIENTE_ID IN (
    SELECT c.PACIENTE_ID
    FROM consultas AS c
    WHERE c.FECHA_CONSULTA < '2023-05-16'
    GROUP BY c.PACIENTE_ID
    HAVING MAX(c.FECHA_CONSULTA) < '2023-05-16'
);



-------------------------------------------------------------------------------------|
-- Subconsultas en el FROM
--  Las subconsultas, también conocidas como "subqueries", nos permiten utilizar los resultados de una consulta dentro de otra consulta. 
--  En los ejercicios anteriores utilizamos las subconsultas dentro de la claúsula WHERE, pero también es posible utilizarlas dentro de otras claúsulas. 
--  En este ejercicio abordaremos como utilizarla dentro de FROM
--  Una subconsulta en el FROM tiene la siguiente forma.
SELECT * 
    FROM (
        SELECT * FROM tabla1
)
--  En este caso no parece tan útil ya que simplemente estamos seleccionando lo mismo, pero veamos un caso donde si sería necesario.
--  Se tiene la tabla ventas que tiene el código de vendedor y el monto de cada venta realizada. Nos piden saber cuanto es el promedio total vendido
--  Para esto primero necesitamos sumar los montos por vendedor y luego sobre estos resultados sacamos el promedio de las ventas.
SELECT AVG(total_venta) as promedio_ventas
FROM (
    SELECT empleado_id, SUM(monto) as total_venta
    FROM ventas
    GROUP BY empleado_id
) 
--  ¿Cómo llegamos a esto?
--  Si queremos saber los promedios, primero tenemos que saber los totales, para eso necesitamos sumar por empleado.
SELECT empleado_id, SUM(monto) as total_venta
FROM ventas
GROUP BY empleado_id
--  El código anterior nos generará los siguientes resultados.
--  Luego sacamos el promedio de los montos de esta nueva tabla.
SELECT AVG(total_venta) as promedio_ventas
FROM (
    SELECT empleado_id, SUM(monto) as total_venta
    FROM ventas
    GROUP BY empleado_id
) 
--  Este tipo de ejercicio suele ser un poco mas complejo de pensar y escribir y requiere de cierta práctica dominar, 
--  por lo mismo el primer ejercicio consistirá en escribir el mismo query. 
--  Intenta hacerlo sin mirar la respuesta.
-- *****
-- Ejercicio
--  Se tiene la tabla ventas que tiene el código de vendedor y el monto de la venta. 
--  Nos piden saber cuanto es el promedio total vendido. 
--  El resultado debe estar en la columna promedio_ventas
SELECT AVG(total_venta) AS promedio_ventas
FROM (
    SELECT empleado_id, SUM(monto) AS total_venta
    FROM ventas 
    GROUP BY empleado_id
);



-------------------------------------------------------------------------------------|
-- Subconsultas en el FROM parte2
-- *****
-- Ejercicio
--  Se tiene la tabla goles que registra los goles logrados por cada jugador en distintos partidos.
--  Nos piden una consulta para calcular el promedio total de goles.
SELECT AVG(total_goles) AS promedio_goles
FROM (
    SELECT SUM(GOLES) AS total_goles
    FROM goles
    GROUP BY JUGADOR_ID
) AS subconsulta;