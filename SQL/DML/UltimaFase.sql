
/*HAY DOS FORMAS DE HACER EL BACKUP, UNA ES REALIZAR BACKUP DE SOLO 
EL TABLESPACE EN DONDE ESTÁ NUESTRA BASE DE DATOS
O HACER UN BACKUP COMPLETO DE TODA LA BASE DE DATOS, PARA
REALIZAR EL BACKUP COMPLETO HAY VARIAS OPCIONES, PODEMOS HACERLO EN CALIENTE 
O EN FRIO, Y TAMBIEN PODEMOS REALIZAR UNA BACKUP INCREMENTAL DE NIVEL 0 O 1*/
--AHORA NOS CONECTAMOS CON TARGET A RMAN


---------------------------------------------------------------------------------
/*Tambien podemos realizar un BACKUP unicamente de nuestro tablespace LALIGA */
---------------------------------------------------------------------------------

--NOS CONECTAMOS A LA BASE DE DATOS
rman target sys@orclpdb

--REALIZAMOS EL BACKUP DE SOLO NUESTRO TABLESPACE
BACKUP TABLESPACE LALIGA;

---BACKUP INCREMENTAL
rman target /
backup incremental level 0 database;


--------------------------------------------------------------------------------
/*TRUNCAR BITACORA DE TRANSACCIONES */
-------------------------------------------------------------------------------
--VERIFICAMOS NUESTROS ARCHIVOS DE LOG
Select file_name from dba_data_files; 

select name from v$controlfile; 

Select * from v$logfile;

ALTER DATABASE CLEAR LOGFILE GROUP 3;



---VERIFICAR FRAGMENTACION EN TABLAS
set pages 50000 lines 32767
select owner,table_name,round((blocks*8),2)||'kb' "Tamanio fragmentado", round((num_rows*avg_row_len/1024),2)||'kb' "Tamanio Actual", round((blocks*8),2)-round((num_rows*avg_row_len/1024),2)||'kb',
((round((blocks*8),2)-round((num_rows*avg_row_len/1024),2))/round((blocks*8),2))*100 -10 "espacio reclamable % " from dba_tables where table_name ='EQUIPO' AND OWNER LIKE 'LALIGA'
/set pages 50000 lines 32767
select owner,table_name,round((blocks*8),2)||'kb' "Tamanio fragmentado", round((num_rows*avg_row_len/1024),2)||'kb' "Tamanio Actual", round((blocks*8),2)-round((num_rows*avg_row_len/1024),2)||'kb',
((round((blocks*8),2)-round((num_rows*avg_row_len/1024),2))/round((blocks*8),2))*100 -10 "espacio reclamable % " from dba_tables where table_name ='PARTIDO' AND OWNER LIKE 'LALIGA'
/set pages 50000 lines 32767
select owner,table_name,round((blocks*8),2)||'kb' "Tamanio fragmentado", round((num_rows*avg_row_len/1024),2)||'kb' "Tamanio Actual", round((blocks*8),2)-round((num_rows*avg_row_len/1024),2)||'kb',
((round((blocks*8),2)-round((num_rows*avg_row_len/1024),2))/round((blocks*8),2))*100 -10 "espacio reclamable % " from dba_tables where table_name ='JORNADA' AND OWNER LIKE 'LALIGA'
/set pages 50000 lines 32767
select owner,table_name,round((blocks*8),2)||'kb' "Tamanio fragmentado", round((num_rows*avg_row_len/1024),2)||'kb' "Tamanio Actual", round((blocks*8),2)-round((num_rows*avg_row_len/1024),2)||'kb',
((round((blocks*8),2)-round((num_rows*avg_row_len/1024),2))/round((blocks*8),2))*100 -10 "espacio reclamable % " from dba_tables where table_name ='TEMPORADA' AND OWNER LIKE 'LALIGA'
/set pages 50000 lines 32767
select owner,table_name,round((blocks*8),2)||'kb' "Tamanio fragmentado", round((num_rows*avg_row_len/1024),2)||'kb' "Tamanio Actual", round((blocks*8),2)-round((num_rows*avg_row_len/1024),2)||'kb',
((round((blocks*8),2)-round((num_rows*avg_row_len/1024),2))/round((blocks*8),2))*100 -10 "espacio reclamable % " from dba_tables where table_name ='TEMPORAL' AND OWNER LIKE 'LALIGA'
/set pages 50000 lines 32767
select owner,table_name,round((blocks*8),2)||'kb' "Tamanio fragmentado", round((num_rows*avg_row_len/1024),2)||'kb' "Tamanio Actual", round((blocks*8),2)-round((num_rows*avg_row_len/1024),2)||'kb',
((round((blocks*8),2)-round((num_rows*avg_row_len/1024),2))/round((blocks*8),2))*100 -10 "espacio reclamable " from dba_tables where table_name ='TEMPORAL_BACKUP' AND OWNER LIKE 'LALIGA'
/



---------------COLLATION DE TABLA Y COLUMNAS

SELECT column_id,
       column_name,
       collation
FROM   user_tab_columns
WHERE  table_name = 'EQUIPO'
ORDER BY column_id;

SELECT column_id,
       column_name,
       collation
FROM   user_tab_columns
WHERE  table_name = 'JORNADA'
ORDER BY column_id;

SELECT column_id,
       column_name,
       collation
FROM   user_tab_columns
WHERE  table_name = 'PARTIDO'
ORDER BY column_id;

SELECT column_id,
       column_name,
       collation
FROM   user_tab_columns
WHERE  table_name = 'TEMPORADA'
ORDER BY column_id;

SELECT column_id,
       column_name,
       collation
FROM   user_tab_columns
WHERE  table_name = 'TEMPORAL'
ORDER BY column_id;

SELECT column_id,
       column_name,
       collation
FROM   user_tab_columns
WHERE  table_name = 'TEMPORAL_BACKUP'
ORDER BY column_id;

SHOW PARAMETER NLS_COMP;
