-------------------------------------------------------------------------------------|
--Tipos reales
-- Hasta el momento hemos visto los siguientes tipos de datos:
-- TEXT para almacenar texto
-- INTEGER para almacenar números enteros
-- BOOLEAN para almacenar valores de verdadero o falso
-- DATE para almacenar fechas
-- En este ejercicio veremos el tipo de dato REAL, que permite almacenar números con decimales.
-- *****
-- Ejercicio
-- Crea una tabla llamada temperaturas con la columna temperatura_celsius:
-- Luego inserta los siguientes registros:
-- Importante. Para ingresar la parte decimal de los números, utiliza el punto (.) como separador decimal
CREATE TABLE temperaturas ( temperatura_celsius real);
INSERT INTO temperaturas VALUES(23.4),(26.5),(27.1);



-------------------------------------------------------------------------------------|
--Borrar un tabla
-- En SQL podemos utilizar el comando DROP TABLE para eliminar una tabla.
-- si queremos eliminar la tabla temperaturas que creamos en el ejercicio anterior, podemos hacerlo con la siguiente query:
DROP TABLE temperaturas;
-- Si intentamos hacer un SELECT de la tabla temperaturas luego de eliminarla, obtendremos un error.
-- *****
-- Ejercicio
-- En este ejercicio tendremos una tabla con datos que no nos interesan, deberemos borrarla, crearla de nuevo y poblarla con los datos pedidos.
-- Borra la tabla temperaturas y vuelve a crearla con las siguientes columnas:
-- Luego, inserta los siguientes registros:
-- Importante: para poder ingresar las queries requeridas, recuerda añadir punto y coma al final de cada una.
DROP TABLE temperaturas;
CREATE TABLE temperaturas(ciudad text, temperatura real, fecha date);
INSERT INTO temperaturas VALUES('Buenos Aires',20.0,'2024-01-01'),('Buenos Aires',21.0,'2024-01-02'),('Santiago',22.0,'2024-01-01'),('Santiago',23.0,'2024-01-02');



-------------------------------------------------------------------------------------|
--Actualizar una tabla
-- En este ejercicio aprenderemos a añadir una columna a una tabla existente. Para ello, utilizaremos la sentencia ALTER TABLE, que nos permite modificar la definición de una tabla.
-- La sintaxis para lograrlo es la siguiente:
ALTER TABLE nombre_tabla ADD COLUMN nombre_columna tipo_dato;
-- donde tenemos que especificar el nombre de la tabla existente, el nombre de la columna nueva y el tipo de dato que utilizaremos.
-- si tenemos la tabla personas con las columnas nombre y apellido, y queremos agregar la columna edad de tipo INTEGER, podemos hacerlo de la siguiente manera:
ALTER TABLE personas ADD COLUMN edad INTEGER;
-- *****
-- Ejercicio
-- En este ejercicio, vamos a modificar la tabla productos para agregar la columna descripcion de tipo TEXT.
-- Actualmente la tabla productos tiene las siguientes columnas:
-- Luego de crearla deberás insertar los siguientes registros:
-- Importante: para poder ingresar las queries requeridas, recuerda añadir punto y coma al final de cada una.
ALTER TABLE productos ADD COLUMN descripcion text;
INSERT INTO productos VALUES('Camisa', 1000.00,'Camisa de manga corta'),('Pantalón',2000.00,'Pantalón de mezclilla'),('Camisa XL',1000.00,'Camisa de manga larga');