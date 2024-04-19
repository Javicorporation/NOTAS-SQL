-------------------------------------------------------------------------------------|
-- Añadir un registro en una tabla
--  Con SQL podemos ingresar datos nuevos a tablas existentes. Para lograrlo utilizaremos la instrucción INSERT .
--  La instrucción INSERT la acompañaremos de las palabra clave INTO para especificar en qué tabla queremos insertar un valor y VALUES para especificar los valores que queremos insertar.
--  Por ejemplo. Si tenemos una tabla llamada productos con las columnas id, nombre y precio, podemos agregar un nuevo producto a la tabla usando utilizando:
INSERT INTO productos VALUES (1, 'Camiseta', 2000);
--  Para cada columna en la tabla debemos ingresar los valores correspondientes en el mismo orden en que se definen en la sentencia. 
--  Debemos utilizar comillas simples para valores de tipo de datos de texto.
-- *****
-- Ejercicio
--  Dada la tabla usuarios con las columnas id, nombre, apellido, email y telefono:
--  Crea un nuevo usuario con los siguientes datos:
-- id: 7
-- nombre: Lucía
-- apellido: Sánchez
-- email: luciasanchez@outlook.com
-- telefono: 555-5555
INSERT INTO usuarios VAlUES(7, 'Lucía', 'Sánchez', 'luciasanchez@outlook.com','555-5555');



-------------------------------------------------------------------------------------|
-- Añadir un registro en una tabla parte 2
-- *****
-- Ejercicio
--  Se tiene la tabla productos:
--  Inserta un nuevo producto con los siguientes datos:
-- id: 7
-- nombre: Bolso
-- Precio: 1000
-- Stock: 10
INSERT INTO productos VALUES(7,'Bolso', 1000, 10);



-------------------------------------------------------------------------------------|
-- Especificando valores nulos
--  A la hora de insertar datos, si hay un valor que no conocemos, o es un valor que no queremos especificar, podemos ingresar un valor nulo.
--  Ejemplo: Se tiene la tabla productos:
--  Podemos ingresar solo el id y nombre con:
INSERT INTO productos VALUES (1, 'Camiseta', NULL, NULL);
-- *****
-- Ejercicio
--  Se tiene la tabla productos:
--  Inserta un nuevo producto con los siguientes datos:
-- id: 7
-- nombre: Bolso
-- Precio: 1000
INSERT INTO productos VALUES(7,'Bolso', 1000, NULL);