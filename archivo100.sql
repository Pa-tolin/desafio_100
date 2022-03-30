--Punto 1
CREATE DATABASE peliculas_db;

--Punto 2
CREATE TABLE peliculas(id_peliculas INT, pelicula VARCHAR(100), estreno INT, director VARCHAR(30), PRIMARY KEY(id_peliculas));
\copy peliculas FROM 'C:\Users\pojie\OneDrive\Escritorio\desafio_100\peliculas.csv' csv header;

CREATE TABLE reparto(id_reparto INT, actor VARCHAR(30));
\copy reparto FROM 'C:\Users\pojie\OneDrive\Escritorio\desafio_100\reparto.csv' csv header;

--Punto 3
SELECT id_peliculas FROM peliculas WHERE pelicula='Titanic';

--Punto 4
SELECT actor FROM reparto WHERE id_reparto IN (SELECT id_peliculas FROM peliculas WHERE pelicula ='Titanic');

--Punto 5
SELECT count(id_reparto) FROM reparto WHERE actor='Harrison Ford';

--Punto 6
SELECT * FROM peliculas WHERE estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;

--Punto 7
SELECT length(pelicula) AS longitud_titulo FROM peliculas;

--punto 8
SELECT MAX(LENGTH (pelicula)) FROM peliculas;