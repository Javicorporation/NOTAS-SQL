-------------------------------------------------------------------------------------|
-- Introducción a Having
--  En SQL, la cláusula GROUP BY nos permite agrupar datos. Si queremos filtrar la información obtenida utilizaremos HAVING.
--  HAVING se emplea para filtrar los resultados de una consulta que involucra funciones agregadas.  
--  HAVING permite aplicar condiciones de filtrado a los resultados de funciones como COUNT, MAX, MIN, SUM y AVG 
--  después de que se han agrupado los datos con la cláusula GROUP BY.
--  Nos piden crear un reporte mostrando los meses y la cantidad de inscritos, pero solo donde hayan 2 o más inscritos.
SELECT strftime("%m", Fecha_Inscripcion) AS mes, COUNT(Fecha_Inscripcion) cantidad_usuarios 
FROM inscripciones 
GROUP BY strftime("%m", Fecha_Inscripcion)
HAVING cantidad_usuarios >= 2
--  En esta consulta, primero utilizamos GROUP BY para agrupar por mes. 
--  Luego, utilizamos la función de agregación COUNT(Fecha_Inscripcion) para contar la cantidad de inscritos.
--  Después de haber agrupado los datos y calculado el total de inscritos, aplicamos la cláusula HAVING para filtrar los resultados.
-- *****
-- Ejercicio
--  Crea un reporte mostrando los meses y la cantidad de inscritos pero solo donde haya 1 inscrito. 
--  Las columnas deben llamarse mes y cantidad_usuarios respectivamente.
SELECT strftime('%m', fecha_inscripcion) AS mes, COUNT(fecha_inscripcion) cantidad_usuarios
FROM inscripciones
GROUP BY strftime('%m', fecha_inscripcion) HAVING  cantidad_usuarios = 1;



-------------------------------------------------------------------------------------|
-- Buscando duplicados
--  Uno de los usos mas recurrentes de HAVING es buscar duplicados. Por ejemplo, dada una tabla de correos ver cuales están más de 1 vez.
-- *****
-- Ejercicio
--  Se tiene la tabla correos_corporativos
--  Muestra los correos que aparezcan en más de una ocasión. 
--  La tabla resultante debe tener dos columnas: una llamada correo, y otra llamada cuenta_correos que muestra la cantidad de repeticiones correspondiente a cada correo.
SELECT CORREO AS correo, COUNT(CORREO) AS cuenta_correos FROM correos_corporativos GROUP BY CORREO HAVING COUNT(CORREO) > 1;



-------------------------------------------------------------------------------------|
-- Having y cuenta
-- *****
-- Ejercicio
--  Dada la siguiente tabla empleados
--  Crea una consulta que muestre la cantidad de usuarios y el departamento en donde haya más de un empleado. 
--  Las columnas deben llamarse cantidad_de_usuarios y departamento, respectivamente.
SELECT COUNT(*) AS cantidad_de_usuarios, departamento AS departamento FROM empleados GROUP BY departamento HAVING COUNT(*)>1;