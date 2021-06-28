--------------------------------------------------------
-- Archivo creado  - s�bado-octubre-10-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TEMPORADA
--------------------------------------------------------

  CREATE TABLE "LALIGA"."TEMPORADA" 
   (	"ID_TEMPORADA" NUMBER(*,0), 
	"A�O_INICIO" NUMBER(*,0), 
	"A�O_FINALIZA" NUMBER(*,0), 
	"EDICION" NUMBER(*,0), 
	"NO_EQUIPOS" NUMBER(*,0), 
	"PTS_GANADOR" NUMBER(*,0), 
	"PTS_EMPATE" NUMBER(*,0), 
	"OBSERVACIONES" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LALIGA" ;
REM INSERTING into LALIGA.TEMPORADA
SET DEFINE OFF;
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (1,1979,1980,49,18,2,1,'[El partido contra el M�laga de la jornada 27 se le dio por ganado por incomparecencia del rival.][El Salamanca fue sancionado con dos puntos por ama�o en el partido contra el M�laga de la jornada 31.][Tres puntos menos por no presentarse en el partido contra el Almer�a]');
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (2,1980,1981,50,18,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (3,1981,1982,51,18,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (4,1982,1983,52,18,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (5,1983,1984,53,18,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (6,1984,1985,54,18,2,1,'La temporada estuvo marcada por una huelga de futbolistas, convocada por la AFE (Asociaci�n de Futbolistas Espa�oles), que oblig� a los equipos a alinear a jugadores no profesionales -juveniles y�amateurs- en la segunda jornada, mientras que la tercera fue aplazada.');
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (7,1985,1986,55,18,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (8,1986,1987,56,18,2,1,'Esta competici�n se separ� en dos fases. En la primera fase (34 jornadas) se definieron tres grupos de 6 equipos (A, B y C). En la segunda fase (10 jornadas) los equipos de cada grupo jugaron una nueva liguilla donde los del grupo A se disputaron el t�tulo, los del B el derecho a participar en un triangular con el campe�n de Copa y el de Liga para disputarse la Copa de la Liga (que finalmente no se disput�) y los del C se jugaban no caer en las 3 �ltimas posiciones de descenso, aunque durante el transcurso del mismo se acord� ampliar la Primera Divisi�n a 20 equipos, por lo que s�lo bajar�a el colista. El C�diz denunci� el cambio de reglas durante la competici�n, el recurso fue aceptado y finalmente se anunci� un triangular entre ellos para que dos de ellos mantuvieran la categor�a.');
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (9,1987,1988,57,20,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (10,1988,1989,58,20,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (11,1989,1990,59,20,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (12,1990,1991,60,20,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (13,1991,1992,61,20,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (14,1992,1993,62,20,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (15,1993,1994,63,20,2,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (16,1994,1995,64,20,2,1,'Al finalizar la temporada, el Sevilla y el Celta fueron descendidos a Segunda B por no cumplir un tr�mite burocr�tico. Para reemplazarlos se recuper� al Albacete (que hab�a descendido en la promoci�n) y al Valladolid. Finalmente, Sevilla y Celta fueron indultados y la Primera Divisi�n se ampli� a 22 equipos');
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (17,1995,1996,65,22,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (18,1996,1997,66,22,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (19,1997,1998,67,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (20,1998,1999,68,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (21,1999,2000,69,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (22,2000,2001,70,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (23,2001,2002,71,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (24,2002,2003,72,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (25,2003,2004,73,20,3,1,'Racing de Santander Un punto menos por haber alineado simult�neamente a cuatro jugadores extracomunitarios en el partido contra el Osasuna de la jornada 16');
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (26,2004,2005,74,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (27,2005,2006,75,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (28,2006,2007,76,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (29,2007,2008,77,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (30,2008,2009,78,20,3,1,'El Athletic Club se clasifica para la UEFA por haber sido subcampe�n de Copa');
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (31,2009,2010,79,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (32,2010,2011,80,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (33,2011,2012,81,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (34,2012,2013,82,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (35,2013,2014,83,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (36,2014,2015,84,20,3,1,'El Almer�a fue sancionado con 3 puntos menos, por impago de un jugador');
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (37,2015,2016,85,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (38,2016,2017,86,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (39,2017,2018,87,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (40,2018,2019,88,20,3,1,null);
Insert into LALIGA.TEMPORADA (ID_TEMPORADA,"A�O_INICIO","A�O_FINALIZA",EDICION,NO_EQUIPOS,PTS_GANADOR,PTS_EMPATE,OBSERVACIONES) values (41,2019,2020,89,20,3,1,null);
--------------------------------------------------------
--  DDL for Index TEMPORADA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LALIGA"."TEMPORADA_PK" ON "LALIGA"."TEMPORADA" ("ID_TEMPORADA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LALIGA" ;
--------------------------------------------------------
--  DDL for Trigger TEMPORADA_ID_TEMPORADA_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LALIGA"."TEMPORADA_ID_TEMPORADA_TRG" BEFORE
    INSERT ON temporada
    FOR EACH ROW
     WHEN ( new.id_temporada IS NULL ) BEGIN
    :new.id_temporada := temporada_id_temporada_seq.nextval;
END;

/
ALTER TRIGGER "LALIGA"."TEMPORADA_ID_TEMPORADA_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table TEMPORADA
--------------------------------------------------------

  ALTER TABLE "LALIGA"."TEMPORADA" MODIFY ("ID_TEMPORADA" NOT NULL ENABLE);
  ALTER TABLE "LALIGA"."TEMPORADA" MODIFY ("A�O_INICIO" NOT NULL ENABLE);
  ALTER TABLE "LALIGA"."TEMPORADA" MODIFY ("A�O_FINALIZA" NOT NULL ENABLE);
  ALTER TABLE "LALIGA"."TEMPORADA" ADD CONSTRAINT "TEMPORADA_PK" PRIMARY KEY ("ID_TEMPORADA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "LALIGA"  ENABLE;