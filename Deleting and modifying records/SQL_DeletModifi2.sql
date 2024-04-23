-------------------------------------------------------------------------------------|
--Editar todos los registros utilizando where
-- Si queremos editar solamente algunas filas de nuestra tabla, podemos utilizar UPDATE en conjunto con WHERE. 
-- De esta forma solo se modificarán los registros que cumplan con la condición especificada.
UPDATE nombre_tabla SET nombre_columna = nuevo_valor WHERE condicion;
-- Supongamos que gestionamos una tabla llamada empleados que contiene información sobre los empleados de una empresa. 
-- Entre las columnas se encuentran id_empleado, nombre, salario y departamento. 
-- Si deseamos aumentar el salario en un 15% solamente para los empleados que trabajan en el departamento de "Ventas", 
-- podríamos emplear la instrucción UPDATE junto con WHERE de la siguiente manera:
UPDATE empleados SET salario = salario * 1.15 WHERE departamento = 'Ventas';
-- Es importante ser precavido al elegir la condición de filtrado para tus filas. De esta manera, te aseguras de no alterar accidentalmente datos equivocados.
-- *****
-- Ejercicio
-- Se tiene una tabla usuarios con los siguientes datos:
-- Asignales el telefono 123-456 al usuario con id 4.
UPDATE usuarios SET telefono = '123-456' WHERE id = 4;


-------------------------------------------------------------------------------------|
--Editar múltiples columnas
-- En SQL es posible editar múltiples columnas de un registro utilizando la cláusula SET. 
-- Para lograrlo, debemos especificar el nombre de cada columna que queremos modificar, seguido del nuevo valor que queremos asignarle.
UPDATE tabla 
  SET 
    columna1 = 'nuevo_valor',
    columna2 = 'nuevo_valor',
    columna3 = 'nuevo_valor'
  WHERE 
    condicion;
--
UPDATE usuarios 
  SET 
    nombre = 'Juan', 
    apellido = 'Pérez'
  WHERE 
    id = 1;
-- También es posible escribir la consulta en una sola línea, pero es recomendable utilizar saltos de línea para mejorar la legibilidad del código.
-- *****
-- Ejercicio
-- Edita el post con id 1 para que tenga el título "Aprendiendo SQL" y el contenido "SQL es un lenguaje de programación para gestionar bases de datos relacionales".
UPDATE posts SET
 titulo = 'Aprendiendo SQL',
 contenido = 'SQL es un lenguaje de programación para gestionar bases de datos relacionales'
 WHERE id = 1;