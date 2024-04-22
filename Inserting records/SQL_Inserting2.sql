-------------------------------------------------------------------------------------|
-- Añadir un registro especificando columnas
--  A la hora de insertar datos es posible mencionar específicamente las columnas que se van a insertar, en lugar de mencionar todos los valores en el orden en que se definen en la tabla.
--  Se pide insertar un nuevo producto con los siguientes datos, pero especificando las columnas
-- id: 7
-- nombre: Bolso
-- Precio: 1000
-- Stock: 10
INSERT INTO productos (id, precio, nombre, stock) VALUES (7, 1000,'Bolso', 10);
-- Una ventaja de este método es que no es necesario ingresar los valores en el mismo orden en que se definen en la tabla.
-- *****
-- Ejercicio
--  Se tiene la tabla usuarios:
--  Prueba agregando los siguientes datos a la tabla usuarios, puedes notar que tienen el orden alterado en relación a la tabla.
--  id: 7
--  apellido: Sánchez
--  nombre: Lucía
--  telefono: 333-3333
--  email: luciasanchez@outlook.com
INSERT INTO usuarios (id, apellido, nombre, telefono, email)VALUES(7,'Sánchez', 'Lucía','333-3333','luciasanchez@outlook.com');




-------------------------------------------------------------------------------------|
--Añadir un registro especificando solo algunas columnas
--  Otro beneficio de especificar las columnas al momento de insertar datos es que se insertarán valores nulos en las columnas no mencionadas automáticamente.
-- su sintaxis seria
INSERT INTO productos (nombre, precio) VALUES ('Gorro', 1000);
-- Mas adelante aprenderemos que algunas columnas pueden tener restricciones que no permiten valores nulos.
-- *****
-- Ejercicio
-- Inserta un nuevo item en la tabla productos con los siguientes datos:
-- stock: 10
-- nombre: Bolso
INSERT INTO productos(nombre, stock) VALUES('Bolso',10);



-------------------------------------------------------------------------------------|
--Añadir fecha de hoy a un registro
--  Si queremos insertar la fecha actual al momento de crear un registro, podemos utilizar la función CURRENT_DATE para obtenerla.
INSERT INTO usuarios (nombre, fecha_creacion) VALUES ('Gonzalo', CURRENT_DATE);
-- *****
-- Ejercicio
-- Si tenemos la tabla productos, inserta un nuevo producto con los siguientes datos:
-- nombre: Bolso
-- stock: 10
-- fecha: CURRENT_DATE
INSERT INTO productos (nombre, stock, fecha)VALUES('Bolso', 10, CURRENT_DATE);



-------------------------------------------------------------------------------------|
--Añadiendo fecha y hora al insertar
-- Si queremos insertar una fecha cualquiera al momento de crear un registro, simplemente debemos hacerlo especificando la fecha en el formato esperado.
-- El formato de fecha es: YYYY-MM-DD, o sea año-mes-día, donde el año es de 4 dígitos, el mes es de 2 dígitos y el día es de 2 dígitos.
INSERT INTO usuarios (nombre, fecha_creacion) VALUES ('Gonzalo', '2021-01-01');
-- *****
-- Ejercicio
-- Se tiene la tabla productos:
--  Inserta un nuevo producto con los siguientes datos:
-- nombre: Bolso
-- stock: 10
-- fecha: fecha_con_formato
--  La fecha del producto debe ser del primero de enero del 2023.
INSERT INTO productos (nombre, stock, fecha)VALUES('Bolso', 10, '2023-01-01');


