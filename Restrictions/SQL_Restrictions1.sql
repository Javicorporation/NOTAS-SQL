-------------------------------------------------------------------------------------|
--Introducción a restricciones
-- Al crear tablas, podemos añadir restricciones (En inglés constraints) a las columnas para evitar que se ingresen datos que no cumplan ciertas condiciones.
-- En este ejercicio, aprenderemos a usar la restricción NOT NULL, que impide valores nulos en una columna. Por ejemplo, al crear una tabla de personas con nombre y apellido, podemos hacer que el nombre sea obligatorio (no nulo) y el apellido opcional.
-- Para lograrlo crearemos la tabla de la siguiente forma:
CREATE TABLE personas (
    nombre TEXT NOT NULL,
    apellido TEXT
)
-- Para agregar una restricción simplemente debemos especificarla junto con la columna.
-- Para indicar las restricciones utilizaremos una columna adicional llamada Constraints en nuestros diagramas.
-- *****
-- Ejercicio
-- Crea una nueva tabla llamada empleados con las siguientes columnas:
-- Luego ingresa los siguientes datos
-- nombre: Pedro
-- apellido: Pérez
-- Puedes probar un insert sin un nombre para observar el error.
CREATE TABLE empleados 
(nombre TEXT NOT NULL, 
apellido TEXT);
INSERT INTO empleados VALUES('Pedro','Pérez');



-------------------------------------------------------------------------------------|
--Agregar una restricción a una tabla existente
-- queremos agregarle la restricción NOT NULL a la columna nombre. El problema es que en SQLite no podemos agregar restricciones directamente a una tabla existente.
-- En otros motores de bases de datos como PostgreSQL o MySQL si es posible agregar restricciones a tablas existentes.
-- Lo que tenemos que hacer es.
-- Crear una nueva tabla con la restricción.
-- Copiar los datos de la tabla original a la nueva tabla.
-- Borrar la tabla original.
-- Renombrar la nueva tabla con el nombre de la tabla original.
/* 1. Creamos la nueva tabla con la restricción */
CREATE TABLE personas2 (
    nombre TEXT NOT NULL,
    apellido TEXT
);
/* 2. Copiamos los datos de la tabla original a la nueva tabla */
INSERT INTO personas2 (nombre, apellido)
    SELECT nombre, apellido
    FROM personas;
/* 3. Borramos la tabla original */
DROP TABLE personas;
/* 4. Renombramos la nueva tabla con el nombre de la tabla original */
ALTER TABLE personas2 RENAME TO personas;
-- *****
-- Ejercicio
-- Se tiene una tabla llamada patentes con las siguientes columnas:
-- Se pide agregar una restricción de not null a la columna patente.
CREATE TABLE patentes2(
    patente TEXT NOT NULL
);
INSERT INTO patentes2(patente)
    SELECT patente FROM patentes;
;
DROP TABLE patentes;
ALTER TABLE patentes2 RENAME TO patentes;



-------------------------------------------------------------------------------------|
--Borrar una restricción
-- En SQLite borrar una restricción tiene las mismas limitaciones que modificarla y el procedimiento es similar.
-- Crear una nueva tabla sin la restricción.
-- Copiar los datos de la tabla original a la nueva tabla.
-- Borrar la tabla original.
-- Renombrar la nueva tabla con el nombre de la tabla original.
-- Para el ejemplo tendremos una tabla llamada temperaturas con la siguiente estructura:
-- COLUMNA	TIPO DE DATO	RESTRICCIONES
-- temperatura	REAL	NOT NULL
/* 1. Creamos la nueva tabla sin la restricción */
CREATE TABLE temperaturas2 (
    temperatura REAL 
);
/* 2. Copiamos los datos de la tabla original a la nueva tabla */
INSERT INTO temperaturas2 (temperatura)
    SELECT temperatura
    FROM temperaturas;

/* 3. Borramos la tabla original */
DROP TABLE temperaturas;
/* 4. Renombramos la nueva tabla con el nombre de la tabla original */
ALTER TABLE temperaturas2 RENAME TO temperaturas;
-- *****
-- Ejercicio
-- Se tiene una tabla llamada personas con las siguientes columnas:
-- COLUMNA	TIPO DE DATO	RESTRICCIONES
-- nombre	TEXT	NOT NULL
-- apellido	TEXT	NOT NULL
-- edad	INTEGER	
-- Se pide borrar la restricción de not null de las columnas nombre y apellido.
CREATE TABLE personas2 (
    nombre text,
    apellido text,
    edad integer
);
INSERT INTO personas2 (nombre, apellido, edad)
SELECT * FROM personas
;
DROP TABLE personas;
ALTER TABLE personas2 RENAME TO personas;