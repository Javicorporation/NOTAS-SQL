-------------------------------------------------------------------------------------|
-- Clausula "ORDER BY"
-- La clausula ORDER BY se utiliza para organizar una consulta segun una o mas columnas, ya que por defecto el los datos numerico se 
-- ordenan de menor a mayor (ascendente).
SELECT * FROM productos ORDER BY precio;
-- esta clausa tiene esta orden
SELECT
FROM
ORDER BY
-- Los resultados tiene un orden que dependerá del tipo de dato: 
-- los números se ordenan de menor a mayor.
-- los textos alfabéticamente.
-- las fechas cronológicamente.
-- *********************************
-- Ejercicio
-- Tenemos que ordena los registros de la tabla usuarios por el campo 'nombre'
SELECT * FROM usuarios ORDER BY nombre;



-------------------------------------------------------------------------------------|
-- Orden de filas ASC explicito, asc = ascendente.
-- con ORDER BY se puede especificar el resultado  ya sea en ascendente (ASC) o descendente (DESC).
-- si no indicamos el orden del resultado por defento se nos mostrara de menor a mayor.
SELECT * FROM productos ORDER BY precio ASC;
-- si no especificamos con ASC como en esta consulta, obtendremos el mismo resultado que utilizandolo, pero para buenas practicas USALO.
SELECT * FROM productos ORDER BY precio;
-- *********************************
-- Ejercicio
-- Se tiene una tabla usuarios con los campos id, nombre, apellido, email y teléfono. 
-- Se te pide ordenar los registros de la tabla 'usuarios' por el campo 'nombre' en orden ascendente.
SELECT * FROM usuarios ORDER BY nombre ASC;



-------------------------------------------------------------------------------------|
-- Ordenando filas desc
-- con ORDER BY por defecto el resultado se muestra de forma ascendente
-- para especificar que se muestre de forma descendente utilizamos "DESC"
SELECT * FROM productos ORDER BY precio DESC;
-- *********************************
-- Ejercicio
-- tenemos una tabla productos con los campos id, nombre, precio y stock. 
-- Muestra como resultado sólo los precios de la tabla 'productos' ordenados de forma descendente.
SELECT PRECIO FROM productos ORDER BY PRECIO DESC;



-------------------------------------------------------------------------------------|
-- Combinaciones de orden asc y desc
-- Existe una forma de hacer varias peticione individuales ya sea que antes estes utilizando un WHERE, ordena columnas ya sea en ascendente (ASC) o descendente (DESC)
SELECT * FROM productos WHERE precio > 100 ORDER BY precio DESC, nombre ASC; 
-- *********************************
-- Ejercicio
-- Elige todos los registros de la tabla 'productos', ordénalos primero por 'stock' de forma descendente y luego por 'color' de forma ascendente.
SELECT * FROM productos ORDER BY STOCK DESC, COLOR ASC;



-------------------------------------------------------------------------------------|
-- Ordenando con nulos al final
-- Se generan ocaciones en los que se necesita ordenar los valores nulos, ya sea traelos al principio o enviarlos al final
-- para esto existen clausulas que posemos usar ORDER BY:
-- Con "NULLS FIRST" se muestran los nulos primeros y con "NULLS LAST" se muestran al final
SELECT * FROM tabla ORDER BY campo NULLS FIRST
-- *********************************
-- Ejercicio
-- Ordena las filas de la tabla productos en función del precio de forma ascendente. 
-- Asegúrate de que las filas con valores nulos en la columna 'precio' aparezcan al final de la lista ordenada.
SELECT * FROM productos ORDER BY PRECIO NULLS LAST;



-------------------------------------------------------------------------------------|
-- Combinaciones de orden
-- En alguna ocaciones vamos a querer ordenar varias columnas ya sea de forma ASC o DESC.
-- lo podemos hacer de esta manera
SELECT * FROM productos ORDER BY stock ASC, color ASC
-- *********************************
-- Ejercicio
-- Selecciona una lista de todos los empleados ordenados por su salario y por su nombre.
SELECT * FROM empleados ORDER BY SALARIO ASC, NOMBRE ASC;