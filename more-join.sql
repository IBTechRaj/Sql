
SELECT id, title
FROM movie
WHERE yr=1962;

select yr from movie where title = 'Citizen Kane';

select id, title , yr from movie where
title like 'Star Trek%';

select id from actor where name = 'Glenn Close' ;

select id from movie where title =  'Casablanca';

SELECT name
FROM actor
JOIN casting
ON id = actorid
WHERE movieid = 11768;

SELECT name
FROM actor
JOIN casting
ON id = actorid
JOIN movie
ON movieid = movie.id
WHERE title = 'Alien';

SELECT title
FROM movie
JOIN casting
ON movie.id = movieid
JOIN actor
ON actorid = actor.id
WHERE name = 'Harrison Ford';

SELECT title
FROM movie
JOIN casting
ON movie.id = movieid
JOIN actor
ON actorid = actor.id
WHERE name = 'Harrison Ford' AND ord != 1;

SELECT title, name
FROM movie
JOIN casting
ON movie.id = movieid
JOIN actor
ON actorid = actor.id
WHERE yr = 1962 AND ord = 1;


SELECT title, name
FROM movie
JOIN casting
ON movieid=movie.id AND ord=1
JOIN actor
ON actorid=actor.id
WHERE movie.id IN (
	SELECT movieid FROM casting
	WHERE actorid IN (
		SELECT id FROM actor
		WHERE name = 'Julie Andrews'));


SELECT title, name
FROM movie
JOIN casting
ON movieid=movie.id AND ord=1
JOIN actor
ON actorid=actor.id
WHERE movie.id IN (
	SELECT movieid FROM casting
	WHERE actorid IN (
		SELECT id FROM actor
		WHERE name = 'Julie Andrews'));

SELECT  name
FROM actor
JOIN casting
ON id = actorid AND ord = 1
GROUP BY  name
HAVING COUNT(movieid) >= 30;

SELECT title, COUNT(actorid) AS actors
FROM movie
JOIN casting
ON id = movieid AND yr = 1978
GROUP BY title 
ORDER BY actors DESC, title;

sELECT name
FROM actor 
JOIN casting 
ON id = actorid
WHERE movieid IN (SELECT movieid
	FROM actor JOIN casting ON id = actorid
	WHERE name = 'Art Garfunkel')
AND name != 'Art Garfunkel';
