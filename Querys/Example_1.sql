CREATE DATABASE mydb;
CREATE SCHEMA myschema;

SHOW search_path;
SET search_path TO myschema;

CREATE TABLE peliculas(
    id serial,
    titulo varchar(40) UNIQUE ,
    anio date CONSTRAINT anio_2020 CHECK ( anio >= DATE'2020-01-01' AND anio <= DATE'2020-12-31'),
    genero varchar(10) NOT NULL,
    CONSTRAINT pk_id_titulo PRIMARY KEY (id,titulo)
);

INSERT INTO peliculas(titulo,anio,genero)
VALUES ('Spiderman','2020-01-18','Acción'),
       ('El hombre invisible', '2020-02-12','Acción'),
       ('Dr Strange', '2020-03-27', 'Acción'),
       ('Avengers', '2020-04-12', 'Acción'),
       ('Xmen', '2020-05-11', 'Acción'),
       ('ThunderCats', '2020-06-12', 'Acción'),
       ('La viuda negra', '2020-07-14', 'Acción'),
       ('Los nuevos heroes', '2020-08-13', 'Acción'),
       ('The boys', '2020-09-21', 'Acción'),
       ('Doom', '2020-10-29', 'Acción')
;

INSERT INTO peliculas(titulo, anio, genero) VALUES ('Lads','2021-06-12','Acción');

SELECT * FROM peliculas;

UPDATE peliculas set genero='Ciencia Ficción' where id=6;
UPDATE peliculas set anio='2021-08-12' where id=6;
UPDATE peliculas set genero='Drama', anio='2020-12-31' where id=6;

SELECT * FROM peliculas;

CREATE TABLE otraspelis (LIKE peliculas INCLUDING DEFAULTS INCLUDING CONSTRAINTS);

SELECT * FROM otraspelis;

ALTER TABLE otraspelis RENAME TO peliculas_terror;

INSERT INTO peliculas_terror SELECT * FROM peliculas where genero <> 'Terror';
UPDATE peliculas_terror set genero='Terror', anio='2020-12-31' where id=10;
SELECT * FROM peliculas_terror;

DELETE FROM peliculas_terror WHERE genero = 'Terror';

SELECT * FROM peliculas_terror;