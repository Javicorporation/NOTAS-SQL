-------------------------------------------------------------------------------------|
--Nuestra primera tabla
-- Hasta este punto, hemos aprendido cómo realizar consultas en tablas predefinidas, e incluso cómo insertar datos a las tablas, pero ¿cómo creamos nuestras propias tablas?
-- Para crear una tabla en SQL, se utiliza la sentencia CREATE TABLE de la siguiente forma:
CREATE TABLE nombre_tabla (nombre_columna1 tipo_de_dato) 
-- Esta sentencia permite definir la estructura de la tabla, incluyendo el nombre de las columnas y sus tipos de datos. 
-- Veamos un ejemplo de cómo crear una tabla de productos que incluye diferentes tipos de datos para las columnas:
CREATE TABLE productos (nombre TEXT);
-- Luego, una vez creada la tabla, podemos insertar datos tal como aprendimos en ejercicios anteriores:
INSERT INTO productos values   ('Ipad Pro 2022'),  ('Iphone 13 Pro Max'),  ('Macbook Pro 2023');
-- *****
-- Ejercicio
-- Crea una tabla llamada alumnos que almacene una columan nombre de tipo texto
-- Inserta un registro dentro de la tabla creada utilizado los siguientes datos:
-- nombre: Lucía
-- Pista: Para poder ingresar las dos queries requeridas, recuerda añadir punto y coma al final de cada una.
CREATE TABLE alumnos(nombre text);
INSERT INTO alumnos values('Lucía');



-------------------------------------------------------------------------------------|
--Una tabla con múltiples columnas
-- Al momento de crear una tabla podemos especificar múltiples columnas, cada una con su nombre y tipo de dato. 
-- Por ejemplo, si queremos crear una tabla de productos que incluya el nombre, descripción y precio de cada producto, podemos hacerlo de la siguiente forma:
CREATE TABLE productos (nombre TEXT, descripcion TEXT, precio INT);
-- *****
-- Ejercicio
-- Crea una tabla llamada alumnos con las siguientes columnas:
-- Inserta un registro dentro de la tabla creada utilizado los siguientes datos:
-- nombre: Lucía
-- apellido: Sánchez
-- telefono: 12345678
-- Pista: para poder ingresar las dos queries requeridas, recuerda añadir punto y coma al final de cada una.
CREATE TABLE alumnos(nombre text, apellido text, telefono text);
INSERT INTO alumnos VALUES ('Lucía','Sánchez','12345678');



-------------------------------------------------------------------------------------|
--Tablas con distintos tipos de datos
-- Adicionalmente a los datos de tipo Texto podemos utilizar otros tipos de datos, en este ejercicio abordaremos los 3 siguientes tipos.
-- INTEGER para almacenar números enteros
-- BOOLEAN para almacenar valores de verdadero o falso
-- DATE para almacenar fechas
-- *****
-- Ejercicio
--Crea una tabla llamada usuarios con las siguientes columnas:
-- Luego inserta un registro dentro de la tabla creada utilizado los siguientes datos:
-- nombre: Lucía
-- apellido: Sánchez
-- edad: 25
-- activo: true
-- nacimiento: 1996-01-01
-- Pista: para poder ingresar las dos queries requeridas, recuerda añadir punto y coma al final de cada una.
CREATE TABLE usuarios(nombre text, apellido text, edad int, activo boolean, nacimiento date);
INSERT INTO usuarios VALUES('Lucía','Sánchez',25, true, '1996-01-01');