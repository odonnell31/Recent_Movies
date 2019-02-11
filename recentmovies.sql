/*
  recent_movies.sql
*/

DROP TABLE IF EXISTS recentmovies;

CREATE TABLE recentmovies
(
  movie varchar(100) NOT NULL,
  cameryn int NULL,
  freddie int NULL,
  peaches int NULL,
  phil int NULL,
  pheobe int NULL
);

SELECT * FROM recentmovies;

LOAD DATA INFILE 'movies.csv' 
INTO TABLE recentmovies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(movie, cameryn, freddie, peaches, phil, pheobe)
;

SELECT * FROM recentmovies;
#SELECT COUNT(*) FROM recentmovies;