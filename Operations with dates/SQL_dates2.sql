-------------------------------------------------------------------------------------|
-- Extracción del mes
-- Podemos extraer el mes de una fecha de manera similar a la extracción del año, utilizando nuevamente la función strftime.
-- si deseamos agregar una columna que indique únicamente el mes de la venta, podemos utilizar la siguiente consulta:
SELECT strftime('%m', columna) FROM tabla
-- En este caso, para obtener el mes, pasamos %m como argumento a la función strftime.
-- *********************************
-- Ejercicio
-- Dada la tabla ventas previamente presentada con las columnas monto y fecha_venta, crea una consulta que muestre una tabla con el monto, 
-- el mes de la venta y el año de la venta, en ese mismo orden. 
-- La columna para el mes de la venta debe llamarse mes_venta y aquella para el año de la venta debe llamarse año_venta
SELECT monto, strftime('%m',fecha_venta) AS mes_venta, strftime('%Y',fecha_venta) AS año_venta FROM ventas;



-------------------------------------------------------------------------------------|
-- Extracción del mes y año
-- Para extraer tanto el mes como el año de una fecha en una sola columna, puedes utilizar la función strftime('%m-%Y'). 
-- Esto te permitirá obtener un resultado en el formato "mes-año". Veamos un ejemplo utilizando una tabla de ventas:
-- *********************************
-- Ejercicio
-- Dada la tabla ventas con las columnas monto y fecha_venta, crea una consulta que muestre las siguientes dos columnas:
-- Monto
-- El mes y año de la fecha de venta. Esta columna debe llamarse mes_año
SELECT monto, strftime('%m-%Y',fecha_venta) AS mes_año FROM ventas;




-------------------------------------------------------------------------------------|
-- Extracciones y where
-- ahora para selecionar un año especifico en la fecha de la venta
--Nos piden mostrar todas las ventas del año 2012. 
-- Para esto utilizaremos la función strftime para extraer el año de las fechas, y luego filtraremos por el año indicado:
SELECT * FROM ventas WHERE strftime('%Y', fecha_venta) = '2012';
-- *********************************
-- Ejercicio
-- Dada una tabla ventas con las columnas monto y fecha_venta, selecciona toda la información de las ventas del 2015
SELECT * FROM ventas WHERE strftime('%Y', fecha_venta) = '2015';


