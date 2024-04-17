-------------------------------------------------------------------------------------|
-- Subconsultas y where parte 3
--  Se tiene la siguiente tabla notas:
-- *****
-- Ejercicio
--  Selecciona todos los registros superiores al promedio de nota.
SELECT * FROM notas WHERE notas > (SELECT AVG(notas) FROM notas);



-------------------------------------------------------------------------------------|
-- Subconsultas con IN
--  El operador IN es un operador muy útil en subconsultas. 
--  Para entenderlo, primero probaremos una consulta sencilla utilizandolo directamente sin subconsultas.
--  Queremos seleccionar todos los códigos de Argentina, Brasil, Chile o Colombia. 
--  Una forma de abordar el problema sería combinar todas las opciones con where y múltiples operadores or. 
--  Otra opción es utilizando el operador IN de la siguiente manera:
SELECT * 
FROM paises 
WHERE pais IN ('Argentina', 'Brasil', 'Chile', 'Colombia')
--  De la misma forma podemos hacer una consulta como la siguiente:
SELECT *
FROM table
WHERE columna IN (SELECT * from otra_tabla)
-- Operador IN con subconsultas
--  Se tiene la siguiente tabla de estudiantes
--  Se nos pide mostrar los nombres de todas las personas que tengan un promedio de notas menor que 50.
--  Seleccionamos los ids de la tabla notas con promedio_notas <= 50
--  Seleccionamos los nombres de de la tabla estudiantes cuyo id esté dentro de la subconsulta anterior.
SELECT nombre from estudiantes
WHERE estudiante_id IN (SELECT estudiante_id from notas where promedio_notas <= 50)
-- *****
-- Ejercicio
--  Se tiene una tabla estudiantes con un código y un nombre
--  Y se tiene una tabla promedios con el código del estudiante y su promedio de notas.
--  Muestra los nombres de todos los estudiantes que tengan un promedio de notas sobre 50
-- Tip 1: No necesitas agrupar ni promediar ni contar Tip 2: Hay más de una forma de resolver este ejercicio, 
--  no te adelantes a joins e intenta resolverlo utilizando subqueries
SELECT nombre 
FROM estudiantes 
WHERE estudiante_id 
IN(SELECT estudiante_id FROM promedios WHERE promedio_notas > 50);



-------------------------------------------------------------------------------------|
-- Subconsultas con IN parte 2
-- *****
-- Ejercicio
--  Se tiene la tabla libros
--  Y se tiene la tabla valoraciones
--  Crea una consulta que muestre todos los títulos con valoración_promedio > 4. La columna resultante debe llamarse nombres_seleccionados.
SELECT libros.nombre AS nombres_seleccionados
FROM libros
JOIN valoraciones ON libros.libro_id = valoraciones.libro_id
WHERE valoraciones.valoracion_promedio > 4;