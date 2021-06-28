-- Bases de Datos 2
--   Proyecto 1
--   Wilder Emmanuel Siguantay Gonzalez - 201113769
--   Script de creacion de usuarios y base de datos

--ELIMINAR TABLESPACES
DROP TABLESPACE LALIGA INCLUDING CONTENTS AND DATAFILES CASCADE CONSTRAINTS;
--ELIMINAR USUARIO OWNER
DROP USER LALIGA CASCADE;


--CREAR TABLESPACE
CREATE TABLESPACE LALIGA DATAFILE  'LALIGA.dbf' SIZE 250M AUTOEXTEND ON  MAXSIZE 2000M;

CREATE USER LALIGA
IDENTIFIED BY LALIGA
DEFAULT TABLESPACE LALIGA;

GRANT ALL PRIVILEGES TO LALIGA;

--BORRAR TABLAS Y SECUENCIAS
DROP PROCEDURE llenar_base;

DROP SEQUENCE equipo_id_equipo_seq;
DROP SEQUENCE jornada_id_jornada_seq;
DROP SEQUENCE partido_id_partido_seq;
DROP SEQUENCE temporada_id_temporada_seq;


DROP TABLE EQUIPO CASCADE CONSTRAINTS;
DROP TABLE JORNADA CASCADE CONSTRAINTS;
DROP TABLE PARTIDO CASCADE CONSTRAINTS;
DROP TABLE TEMPORADA CASCADE CONSTRAINTS;
DROP TABLE TEMPORAL CASCADE CONSTRAINTS;



CREATE TABLE equipo (
    id_equipo       INTEGER NOT NULL,
    nombre_equipo   VARCHAR2(30),
    fundacion       VARCHAR2(6)
);

ALTER TABLE equipo ADD CONSTRAINT equipo_pk PRIMARY KEY ( id_equipo );

CREATE TABLE jornada (
    id_jornada               INTEGER NOT NULL,
    no_jornada               INTEGER NOT NULL,
    temporada_id_temporada   INTEGER NOT NULL
);

ALTER TABLE jornada ADD CONSTRAINT jornada_pk PRIMARY KEY ( id_jornada );

CREATE TABLE partido (
    id_partido           INTEGER NOT NULL,
    goles_local          INTEGER,
    goles_visita         INTEGER,
    pts_local            INTEGER,
    pts_visitante        INTEGER,
    eq_local             INTEGER NOT NULL,
    visitante            INTEGER NOT NULL,
    fecha                DATE,
    jornada_id_jornada   INTEGER NOT NULL
);

ALTER TABLE partido ADD CONSTRAINT partido_pk PRIMARY KEY ( id_partido );

CREATE TABLE temporada (
    id_temporada    INTEGER NOT NULL,
    año_inicio      INTEGER NOT NULL,
    año_finaliza    INTEGER NOT NULL,
    edicion         INTEGER,
    no_equipos      INTEGER,
    pts_ganador     INTEGER,
    pts_empate      INTEGER,
    observaciones   VARCHAR2(2000)
);

ALTER TABLE temporada ADD CONSTRAINT temporada_pk PRIMARY KEY ( id_temporada );

ALTER TABLE partido
    ADD CONSTRAINT equipo_local FOREIGN KEY ( eq_local )
        REFERENCES equipo ( id_equipo );

ALTER TABLE partido
    ADD CONSTRAINT equipo_visita FOREIGN KEY ( visitante )
        REFERENCES equipo ( id_equipo );

ALTER TABLE jornada
    ADD CONSTRAINT jornada_temporada_fk FOREIGN KEY ( temporada_id_temporada )
        REFERENCES temporada ( id_temporada );

ALTER TABLE partido
    ADD CONSTRAINT partido_jornada_fk FOREIGN KEY ( jornada_id_jornada )
        REFERENCES jornada ( id_jornada );

CREATE SEQUENCE equipo_id_equipo_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER equipo_id_equipo_trg BEFORE
    INSERT ON equipo
    FOR EACH ROW
    WHEN ( new.id_equipo IS NULL )
BEGIN
    :new.id_equipo := equipo_id_equipo_seq.nextval;
END;
/

CREATE SEQUENCE jornada_id_jornada_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER jornada_id_jornada_trg BEFORE
    INSERT ON jornada
    FOR EACH ROW
    WHEN ( new.id_jornada IS NULL )
BEGIN
    :new.id_jornada := jornada_id_jornada_seq.nextval;
END;
/

CREATE SEQUENCE partido_id_partido_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER partido_id_partido_trg BEFORE
    INSERT ON partido
    FOR EACH ROW
    WHEN ( new.id_partido IS NULL )
BEGIN
    :new.id_partido := partido_id_partido_seq.nextval;
END;
/

CREATE SEQUENCE temporada_id_temporada_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER temporada_id_temporada_trg BEFORE
    INSERT ON temporada
    FOR EACH ROW
    WHEN ( new.id_temporada IS NULL )
BEGIN
    :new.id_temporada := temporada_id_temporada_seq.nextval;
END;
/





-------------------------------
------TABLA TEMPORAL-----------
-------------------------------
CREATE TABLE TEMPORAL(
FECHA DATE,
EQUIPOLOCAL VARCHAR(30),
GOLESLOCAL VARCHAR(2),
GOLESVISITA VARCHAR(2),
VISITANTE VARCHAR(30),
JORNADA INT,
INICIO_ANIO VARCHAR(5),
FIN_ANIO VARCHAR(5)
);

----------------------------
/*TABLA PARA BACKUP*/

CREATE TABLE TEMPORAL_BACKUP(
    id_partido           INTEGER,
    goles_local          INTEGER,
    goles_visita         INTEGER,
    pts_local            INTEGER,
    pts_visitante        INTEGER,
    eq_local             INTEGER,
    visitante            INTEGER,
    fecha                DATE,
    jornada_id_jornada   INTEGER
);


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              8
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           4
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          4
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
