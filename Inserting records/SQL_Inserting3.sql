-------------------------------------------------------------------------------------|
-- Añadir un registro especificando columnas
-- Podemos ingresar varios registros en una tabla en una sola sentencia INSERT. Para lograrlo, debemos especificar los valores de cada registro separados por comas.
-- si tenemos una tabla llamada ventas con las columnas producto, cantidad y precio, podemos agregar varios registros a la tabla usando:
INSERT INTO ventas VALUES ('Camiseta', 5, 2000), ('Pantalón', 3, 1500), ('Zapatos', 2, 3000);
-- *****
-- Ejercicio
-- Inserta los siguientes registros en la tabla ventas:
INSERT INTO ventas VALUES ('Gorro',5,1000),('Camiseta',10,500),('Pantalón',8,1500);



-------------------------------------------------------------------------------------|
--Crear un registro con un campo autoincremental
--  En una base de datos SQL, es posible agilizar el proceso de inserción de datos en una tabla mediante el uso de un campo autoincremental. 
--  Este tipo de campo es especialmente útil cuando se trata de gestionar identificadores únicos, como por ejemplo el campo "id" de una tabla. 
--  La característica de autoincremento se logra empleando la cláusula AUTOINCREMENT en la definición del campo.
--  Para ilustrar este proceso, consideremos una tabla llamada "empleados" con tres columnas: "id" (autoincremental), "nombre" y "apellido". Esta es la forma en que se crea la tabla:
CREATE TABLE empleados (id INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT,apellido TEXT);
--  Aquí, hemos definido la columna "id" como un campo autoincremental utilizando la cláusula AUTOINCREMENT, 
--  lo que asegura que se generará automáticamente un valor único y creciente para cada nuevo registro.
--  Supongamos que deseamos insertar un nuevo empleado en esta tabla. Podemos utilizar la siguiente consulta SQL:
INSERT INTO empleados (nombre, apellido) VALUES ('John', 'Doe');
--  Al ejecutar esta consulta, se creará un nuevo empleado en la tabla "empleados". 
--  La columna "id" se incrementará automáticamente, mientras que los valores proporcionados para "nombre" y "apellido" serán almacenados en las columnas correspondientes. 
--  Esto garantiza que cada nuevo empleado tendrá un identificador único y que el proceso de inserción sea más eficiente.
-- *****
-- Ejercicio
-- Dada la tabla empleados con las columnas id, nombre y apellido, crea un nuevo empleado con el nombre "Jane" y el apellido "Smith".
INSERT INTO empleados(nombre, apellido)VALUES('Jane','Smith');



-------------------------------------------------------------------------------------|
--Añadir un registro asumiendo un valor por defecto
-- Al crear una tabla en SQL, puedes asignar valores predeterminados a sus columnas. 
--  Esto implica que al insertar nuevos datos, si no se proporciona un valor específico para una columna, se usará automáticamente el valor por defecto asignado.
--  Supongamos que queremos crear una tabla llamada "Productos" con las siguientes columnas:
--  ID (identificador único del producto)
--  Nombre (nombre del producto)
--  Precio (precio del producto, con un valor por defecto de 10)
CREATE TABLE Productos (ID INTEGER PRIMARY KEY AUTOINCREMENT, Nombre TEXT, Precio INTEGER DEFAULT 10);
--  Si insertamos un nuevo producto sólo con el nombre, se utilizará automáticamente el valor por defecto del precio:
INSERT INTO Productos (Nombre) VALUES ('Ejemplo Producto');
--  En este caso, el producto se insertará con el valor 10 en la columna Precio.
--  Si deseamos insertar un producto con un precio diferente, simplemente proporcionamos el valor correspondiente:
INSERT INTO Productos (Nombre, Precio) VALUES ('Otro Producto', 25);
-- *****
-- Ejercicio
--  Dada la tabla usuarios con las columnas id, nombre, apellido, email y telefono, crea un nuevo usuario con los valores:
-- nombre: Lucía
-- apellido: Sánchez
-- email: luciasanchez@outlook.com
-- La columna telefono tendrá el valor por defecto 111-1111
INSERT INTO usuarios (nombre, apellido,email)VALUES('Lucía','Sánchez','luciasanchez@outlook.com');