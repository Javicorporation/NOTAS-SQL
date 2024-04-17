-------------------------------------------------------------------------------------|
-- Ejercitando funciones de agregación con fechas
-- *****
-- Ejercicio
--  Se tiene una tabla llamada inscripciones con distintas fechas de inscripciones de un usuario a un sitio web.
--  Cuenta cuántos usuarios se registraron cada mes. Las columnas resultantes deben llamarse "mes" y "cantidad_usuarios".
--  Tip: Utiliza la función strftime con %m.
SELECT STRFTIME('%m',fecha_inscripcion) AS mes, COUNT(*) AS cantidad_usuarios FROM inscripciones GROUP BY strftime('%m',fecha_inscripcion) GROUP BY mes;



-------------------------------------------------------------------------------------|
-- Agrupando sin indicar el nombre de las columnas
--  Cuando se trata de agrupar datos en una consulta SQL, existe una forma de evitar la redundancia de la cláusula SELECT. 
--  Por ejemplo, considera la siguiente consulta:

SELECT strftime("%Y", fecha_venta) AS año, SUM(monto) FROM ventas GROUP BY strftime("%Y", fecha_venta)
--  Puedes simplificarla de la siguiente manera:
SELECT strftime("%Y", fecha_venta) AS año, SUM(monto) FROM ventas GROUP BY 1
--  Esta notación se interpreta como "agrupa por el primer criterio". También es posible aplicar esta sintaxis en la cláusula ORDER BY:
SELECT strftime("%Y", fecha_venta) AS año, SUM(monto) FROM ventas GROUP BY 1 ORDER BY 1
--  De esta manera, puedes lograr la misma agrupación y ordenamiento sin repetir la expresión de la cláusula SELECT.
-- *****
-- Ejercicio
--  Dada la siguiente tabla de usuarios
--  Crea una consulta que nos muestre cada correo una única vez acompañado del número de veces que se repite. 
--  Las columnas deben llevar los nombres "correo" y "repeticiones", respectivamente, y deben estar ordenadas alfabéticamente.
SELECT correo, COUNT(correo) AS repeticiones FROM usuarios GROUP BY CORREO;



-------------------------------------------------------------------------------------|
-- Agrupando por múltiples columnas
--  En SQL es posible agrupar por múltiples columnas utilizando la siguiente sintaxis:
SELECT columna1, columna2, funcion_agrupado(columna3) FROM tabla GROUP BY columna1, columna2
--  Y como aprendimos en el ejercicio anterior, también podemos escribir la consulta de la siguiente manera:
SELECT columna1, columna2, funcion_agrupado(columna3) FROM tabla GROUP BY 1, 2
-- *****
-- Ejercicio
--  Tenemos la siguiente tabla estudiantes
--  Calcula el promedio de cada estudiante en cada materia. Las columnas deben llamarse correo, materia y promedio_notas
SELECT correo, materia, AVG(nota) AS promedio_notas FROM estudiantes GROUP BY correo, materia;