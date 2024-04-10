-------------------------------------------------------------------------------------|
-- limitando la cantidad de resultados
-- cuando queremos limitar la cantidad de resultados a mostrar a la peticion.
-- esto es util cuando solo queremos ver una cantida de resultados 
-- un ejemplo seria si queremos obtener solo los 6 primeros registros de la tabla, podemos usar la clausula "LIMIT"
SELECT * FROM usuario LIMIT 5
-- Esto devolverá sólo los primeros 5 registros de la tabla.
-- La claúsula LIMIT se agrega al final de la consulta, por ejemplo
SELECT * FROM usuario WHERE campo > 10 ORDER BY campo2 LIMIT 5
-- *********************************
-- Ejercicio
-- Selecciona los primeros 3 usuarios de la tabla de usuarios según el id.
SELECT * FROM usuarios LIMIT 3;



-------------------------------------------------------------------------------------|
-- Obtener los primeros alumnos con mejor nota
-- En SQL, la combinación de las cláusulas ORDER BY y LIMIT nos permite obtener el valor o valores máximos de una columna en una tabla.
-- Una vez que hemos ordenado los registros, podemos utilizar la cláusula LIMIT para limitar la cantidad de resultados obtenidos.
-- corresponderán a los tres alumnos con las mejores notas en la tabla 'notas'
SELECT * FROM notas ORDER BY nota DESC LIMIT 3 
-- *********************************
-- Ejercicio
-- Se tiene una tabla de puntajes con las columnas id y puntaje. 
-- Utiliza lo aprendido para obtener el puntaje más alto de la tabla utilizando ORDER BY y LIMIT
SELECT PUNTAJE FROM puntajes ORDER BY puntaje DESC LIMIT 1;



-------------------------------------------------------------------------------------|
-- Ejercicio
-- Obtener el nombre del concierto con más entradas vendidas.
-- Se tiene una base de datos con la tabla conciertos en la cual se almacena información sobre cada concierto, 
-- incluyendo el nombre del concierto y la cantidad de entradas vendidas. 
-- Los datos dentro de la base de datos corresponden a la siguiente tabla.
-- Encuentra el nombre del concierto que ha vendido la mayor cantidad de entradas (utiliza ORDER BY y LIMIT).
SELECT NOMBRE_CONCIERTO,ENTRADAS_VENDIDAS FROM conciertos ORDER BY ENTRADAS_VENDIDAS DESC LIMIT 1;