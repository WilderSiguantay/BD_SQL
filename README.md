# BD_SQL
 Proyecto BD2 USAC

## Enunciado
Se ha solicitado cargar la información relacionada a la Liga Española de Futbol, para la primera 
división, del sitio https://www.bdfutbol.com descargar la información con el método que sea 
de su conveniencia https://www.bdfutbol.com/en/t/t.html, desde la temporada 1979-80 (Spain -
First Division), utilizar esta data para crear un modelo relacional que represente la información de la 
Liga. 

### Se solicita
 - Diagrama Entidad Relación del modelo usado para la carga de datos
 -  Extraer los datos del sitio mencionado y cargar los mismos a una base de datos relacional de 
su elección utilizando su modelo propuesto.
#### Con la información de los partidos de la Liga Española de los últimos 40 años. Deben  analizar, y realizar las siguientes consultas:

- Realizar un stored procedure que devuelva la tabla de posiciones en cualquier 
momento. Como parámetro debe recibir la temporada (id o año) y tener dos 
parámetros excluyentes, el número de jornada y la fecha. Si recibe la fecha calcula 
la tabla a la fecha indicada aun así no haya terminado la jornada, y si recibe la 
jornada debe traer las posiciones hasta esa jornada. Si ambos están vacíos toma 
como si fuera el final de temporada. 
- Vista que muestre los primeros 4 lugares de los últimos 40 años (TOP 10) columnas, 
puesto 1, puntos 1, puesto 2, puntos 2, puesto 3, puntos 3, puesto 4, puntos 4. La 
vista tendrá entonces un total de 40 filas. 
- Consulta que muestre los equipos que ha ganado la liga más veces en los últimos 20 
años (TOP 5)
- Realizar una stored procedure que muestre que equipos descendieron y no 
aparecen en la temporada que se envíe por parámetro.
- Realizar una vista que devuelva las victimas favoritas de un equipo, en otras 
palabras, a quien han derrotado más veces. 
- Realizar un stored procedure que reciba el equipo (id o nombre) y que devuelva las 
posiciones que ha ocupado en cada una de las temporadas, goles y puntos.
- Responder ¿Cuál ha sido la victoria más abultada de los últimos 40 años? Partido, 
equipos y marcador.
- Realizar un stored procedure que la temporada (id o año) y que devuelva el historial 
de los equipos que han ocupado el primer puesto de la liga de inicio a fin de 
temporada, con fechas y puntos. 
- Realizar un stored procedure que la temporada (id o año) y que devuelva el historial 
de los equipos que han ocupado el último puesto de la liga de inicio a fin de 
temporada, con fechas y puntos.
- Vista que muestre, cuántos goles se anotaron en cada temporada, que equipo anoto 
más, que equipo anoto menos.
- Consulta que muestre, al quipo con más victorias, más derrotas y más empates. 
- Un grupo de stored procedures que efectué una simulación con la pueda calcular 
nuevamente los datos de todas las consultas anteriores. Debe ser capaz de modificar 
resultados, ingresando los parámetros de año, jornada, resultado de visita y local. Y 
un stored procedure que al ejecutarlo retorne todo a su estado original como si no 
hubiera hecho ningún cambio por medio de la simulación. 
- El tiempo de ejecución de cada consulta no debe exceder 1 minuto.
