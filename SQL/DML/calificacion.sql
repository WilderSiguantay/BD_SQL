------CONSULTA 1-----
/*Realizar un stored procedure que devuelva la tabla de posiciones en cualquier
momento. Como parámetro debe recibir la temporada (id o año) y tener dos
parámetros excluyentes, el número de jornada y la fecha. Si recibe la fecha calcula
la tabla a la fecha indicada aun así no haya terminado la jornada, y si recibe la
jornada debe traer las posiciones hasta esa jornada. Si ambos están vacíos toma
como si fuera el final de temporada. */

--POR FECHA //LA JORNADA TIENE QUE IR 0
SET AUTOPRINT ON;
variable CURSORMEMORIA  REFCURSOR;
execute CONSULTA1(:CURSORMEMORIA, 2019,0 ,'27/10/2019');

--POR JORNADA
SET AUTOPRINT ON;
variable CURSORMEMORIA  REFCURSOR;
execute CONSULTA1(:CURSORMEMORIA, 2019,10 ,'');


-----CONSULTA 2 ---------
/* Vista que muestre los primeros 4 lugares de los últimos 40 años (TOP 10) columnas,
puesto 1, puntos 1, puesto 2, puntos 2, puesto 3, puntos 3, puesto 4, puntos 4. La
vista tendrá entonces un total de 40 filas. */

SELECT * FROM CONSULTA2;

------CONSULTA 3 ---------
/*Consulta que muestre los equipos que ha ganado la liga más veces en los últimos 20
años (TOP 5)*/

SELECT * FROM CONSULTA3;

------CONSULTA 4 ---------
/*Realizar una stored procedure que muestre que equipos descendieron y no
aparecen en la temporada que se envíe por parámetro.
*/
SET AUTOPRINT ON;
SET serveroutput ON
variable CURSORMEMORIA  REFCURSOR;
execute CONSULTA_4(:CURSORMEMORIA, 2019);


-----------------CONSULTA 5 ----------------------
--Realizar una vista que devuelva las victimas favoritas de un equipo, en otras
--palabras, a quien han derrotado más veces. 
SELECT * FROM CONSULTA_5;

----------------CONSULTA 6---------------------
/*Realizar un stored procedure que reciba el equipo (id o nombre) y que devuelva las
posiciones que ha ocupado en cada una de las temporadas, goles y puntos.
*/
SET AUTOPRINT ON;
SET serveroutput ON
variable CURSORMEMORIA  REFCURSOR;
execute CONSULTA_6(:CURSORMEMORIA, 'Barcelona');


-----------------CONSULTA 7---------------------
/*Responder ¿Cuál ha sido la victoria más abultada de los últimos 40 años? Partido,
equipos y marcador.
*/
SELECT * FROM CONSULTA_7;

----------------CONSULTA 8 -----------------------
/*Realizar un stored procedure que la temporada (id o año) y que devuelva el historial
de los equipos que han ocupado el primer puesto de la liga de inicio a fin de
temporada, con fechas y puntos. 
*/

SET serveroutput ON
execute CONSULTA_8(1979);


------------------CONSULTA 9----------------------
--Realizar un stored procedure que la temporada (id o año) y que devuelva el historial
--de los equipos que han ocupado el último puesto de la liga de inicio a fin de
--temporada, con fechas y puntos. 

SET serveroutput ON
execute CONSULTA_9(1979);

----------------CONSULTA 10 --------------------
--Vista que muestre, cuántos goles se anotaron en cada temporada, que equipo anoto
--más, que equipo anoto menos.
SELECT * FROM CONSULTA_10;

------------- CONSULTA 11-----------------------
/*Consulta que muestre, al quipo con más victorias, más derrotas y más empates. */
SELECT * FROM CONSULTA_11 ORDER BY GANADOS DESC;

--------------------CONSULTA 12----------------
/*Un grupo de stored procedures que efectué una simulación con la pueda calcular
nuevamente los datos de todas las consultas anteriores. Debe ser capaz de modificar
resultados, ingresando los parámetros de año, jornada, resultado de visita y local. Y
un stored procedure que al ejecutarlo retorne todo a su estado original como si no
hubiera hecho ningún cambio por medio de la simulación. */

--CREAR BACKUP DE ORIGINAL
EXEC BACKUP_TABLA;


---MODIFICAR PARTIDO
SET serveroutput ON
EXEC consulta_12(2019,10,'Barcelona', 3, 'Real Madrid', 3);


----CONSULTAR PARTIDO MODIFICADO

SELECT * FROM PARTIDO
WHERE PARTIDO.ID_PARTIDO = 71166;

-----VERIFICAR TABLA DE POSICIONES FINAL Y VERIFICAR CAMBIOS
SET AUTOPRINT ON;
variable CURSORMEMORIA  REFCURSOR;
execute CONSULTA1(:CURSORMEMORIA, 2019,38 ,'');


-----COMPARAR DATOS
SELECT TEMPORAL_BACKUP.*, 'ELIMINADOS' estatus
    FROM TEMPORAL_BACKUP
    WHERE NOT EXISTS ( SELECT * FROM PARTIDO
    WHERE
    TEMPORAL_BACKUP.FECHA = PARTIDO.FECHA AND
    TEMPORAL_BACKUP.EQ_LOCAL = PARTIDO.EQ_LOCAL AND
    TEMPORAL_BACKUP.VISITANTE = PARTIDO.VISITANTE AND
    TEMPORAL_BACKUP.GOLES_LOCAL = PARTIDO.GOLES_LOCAL AND
    TEMPORAL_BACKUP.GOLES_VISITA = PARTIDO.GOLES_VISITA
    )
    
SELECT PARTIDO.*, 'ELIMINADOS' estatus
    FROM PARTIDO
    WHERE NOT EXISTS ( SELECT * FROM TEMPORAL_BACKUP
    WHERE
    PARTIDO.FECHA = TEMPORAL_BACKUP.FECHA AND
    PARTIDO.EQ_LOCAL = TEMPORAL_BACKUP.EQ_LOCAL AND
    PARTIDO.VISITANTE = TEMPORAL_BACKUP.VISITANTE AND
    PARTIDO.GOLES_LOCAL = TEMPORAL_BACKUP.GOLES_LOCAL AND
    PARTIDO.GOLES_VISITA = TEMPORAL_BACKUP.GOLES_VISITA
    )

----RESTAURAR BASE A DATOS ORIGINALES
EXEC RESTAURAR_ORIGINAL;

