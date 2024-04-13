-------------------------------------------------------------------------------------|
-- El mayor valor de una columna
-- En SQL hay funciones que nos permiten ejecutar operaciones sobre un conjunto de resultados. 
-- Estas reciben el nombre de funciones de agregación.
-- En este ejercicio trabajaremos con la función MAX() la cual nos permite encontrar el valor más alto del campo que especifiquemos.
-- Una consulta con la función max se ve de la siguiente forma:
SELECT MAX(columna) FROM tabla
SELECT MAX(salario) FROM empleados;
--Cuando usamos funciones de agregación, no podemos seleccionar directamente otros elementos de la misma tabla. 
-- Por ejemplo, 
SELECT email, MAX(salario) FROM empleados; 
-- arrojaría error ya que estaríamos seleccionando email junto a la función. 
-- Pero no te preocupes, ya que aprenderemos cómo hacerlo apropiadamente cuando veamos la cláusula group by más adelante.
-- ***********
-- Ejercicio
-- Utilizando los mismos datos previos selecciona la mayor edad de la tabla empleados
-- Tip: Aunque en SQL es válido escribir tanto MAX (columna) como MAX(columna), el corrector de ejercicios considerará la primera opción como incorrecta debido al espacio adicional. 
-- Por lo tanto, escribe la función sin espacios.
SELECT MAX(edad) FROM empleados;



-------------------------------------------------------------------------------------|
-- El menor valor de una columna
-- Otra función de agregación frecuentemente utilizada es MIN(). 
-- Esta función toma como argumento el nombre de la columna y devuelve el valor más pequeño en esa columna.
SELECT MIN(columna) FROM tabla
-- ***********
-- Ejercicio
-- Utilizando la tabla empleados, encuentra el menor sueldo presente.
SELECT MIN(sueldo) FROM empleados;



-------------------------------------------------------------------------------------|
-- Suma de elementos en una columna
-- Hasta el momento hemos estudiado dos funciones de agregación:
MAX()
MIN()
-- En este ejercicio introduciremos la función de agregación SUM(). Con esta podemos sumar todos los elementos de una columna.
SELECT SUM(columna) FROM tabla
-- Es importante tener en cuenta que la columna sobre la cual se aplica la función SUM() debe contener valores numéricos, 
-- de lo contrario, la consulta puede generar un error o un resultado inesperado.
-- ***********
-- Ejercicio
-- Utilizando la tabla empleados, encuentra la suma de todos los sueldos.
SELECT SUM(sueldo) FROM empleados;
