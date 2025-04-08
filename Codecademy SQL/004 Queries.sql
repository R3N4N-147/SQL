SELECT * FROM movies;

-- Queries 6

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

-- Queries 7

SELECT * 
FROM movies 
WHERE name LIKE 'The %';

-- Queries 8

SELECT name
FROM movies 
WHERE imdb_rating IS NULL;


-- Queries 9

SELECT *
FROM movies
WHERE name BETWEEN 'D' AND 'G';


SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;

-- Queries 10

SELECT * 
FROM movies
WHERE year BETWEEN 1970 AND 1979
  AND imdb_rating > 8;

SELECT * 
FROM movies
WHERE year < 1985
  AND genre = 'horror';

-- Queries 11

SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';

SELECT *
FROM movies
WHERE genre = 'romance'
   OR genre = 'comedy';

-- Queries 12

SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

-- Queries 13


SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

-- Queries 14

SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy' THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;

-- Queries 15

SELECT name,
 CASE
  WHEN genre = 'romance' AND year > 1990 THEN 'Chocolate time'
  WHEN genre = 'comedy' OR 'Action' THEN 'Power time'
  ELSE 'Not in the scale'
 END AS 'Popcorn!'
FROM movies
ORDER BY imdb_rating DESC
LIMIT 15;






