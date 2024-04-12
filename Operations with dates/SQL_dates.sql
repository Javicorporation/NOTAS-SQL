-------------------------------------------------------------------------------------|
-- Con la función DATE() podemos obtener la fecha de hoy. Por ejemplo, la podemos utilizar en la claúsula WHERE para obtener todos lo registros de hoy.
SELECT * FROM usuarios WHERE fecha_registro = DATE();
-- También es posible indicar explícitamente a la función que la fecha deseada es la de hoy. Ejemplo:
SELECT * FROM usuarios WHERE fecha_registro = DATE('now');
-- Todo lo que hemos aprendido de SQL hasta ahora sirve en todos los motores de base de datos como SQLITE, PostgreSQL o MySQL. 
-- Esta función es un caso especial ya que recibe distintos nombres en cada uno de los motores. 
-- Por ejemplo, en MySQL se utiliza CURDATE(), y en Microsoft SQL Server se utiliza GETDATE() 
-- A la hora de buscar documentación es importante dejar claro que motor se está ocupando. 
-- *********************************
-- Ejercicio
-- Se tiene una tabla llamada tareas con las siguientes columnas: 
-- "id" (identificador único), "descripcion" (descripción de la tarea) y "fecha_limite" (fecha límite para completar la tarea).
-- Obtén la descripción de todas las tareas que tengan fecha_limite igual a la fecha actual .
SELECT descripcion FROM tareas WHERE fecha_limite = DATE('now');



-------------------------------------------------------------------------------------|
-- Obteniendo la fecha de mañana
-- EN SQL es posible sumar fechas para obtener fechas futuras. 
-- En SQLite lo podemos lograr pasando un segundo argumento a la función DATE. 
-- Esto suena complicado pero es mas sencillo de lo que parece:
DATE('now', '1 day')
-- En este ejemplo, estamos sumando 1 día a la fecha de hoy (now). 
-- Si queremos sumar más días, por ejemplo 5 días, utilizaremos DATE('now', '5 day').
-- También es posible sumar semanas y meses con:
-- 2 Semanas: 
DATE('now', '2 week') 3 Meses: DATE('now', '3 month')
-- En una consulta esto se vería de la siguiente forma:
SELECT * FROM tabla where fecha > DATE('now', '2 week')
-- Al sumar el intervalo de tiempo, el sistema calculará automáticamente la fecha correcta.
-- *********************************
-- Ejercicio
-- Se tiene una tabla de tareas con los campos id, descripcion y fecha_limite. 
-- Se pide seleccionar todos los campos de las tareas que tienen como fecha límite el día de mañana.
SELECT * FROM tareas WHERE fecha_limite = DATE('now','1 day');



-------------------------------------------------------------------------------------|
-- Obteniendo la fecha de ayer
-- Así como es posible sumar fechas, también es posible restarlas:
DATE('now', '-1 day') DATE('now', '-1 week')
-- Es importante aclarar que cuando no especificamos el signo, se asume que es positivo, esto quiere decir que
DATE('now', '1 day')
-- es lo mismo que
DATE('now', '+1 day')
-- *********************************
-- Ejercicio
-- Supongamos que tenemos una tabla llamada ganancias con las columnas "id" (identificador único), "fecha" (fecha de registro) y "monto" (ganancia del día).
-- Muestra el monto correspondiente al día de ayer.
SELECT monto FROM ganancias WHERE fecha = DATE('now','-1 day');



-------------------------------------------------------------------------------------|
-- Extracción del año
-- si queremos extraer solo el año de la fecha de venta de un articulo
-- podemos usar strftime('%Y', fechaventa)
-- pero esto nos mostraria una columana con un nombre por defecto, asi que debe ir de la mano con un alias
SELECT *, strftime('%Y', fechaventa) as año_venta FROM ventas

-- *********************************
-- Ejercicio
-- Dada una tabla ventas con las columnas monto y fecha_venta, crea una consulta que muestre únicamente el monto y el año de la venta. 
-- La columna que muestre el año de la venta debe llamarse año_venta
SELECT monto, strftime('%Y',fecha_venta) AS año_venta FROM ventas;

