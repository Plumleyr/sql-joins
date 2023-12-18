1. SELECT id, title
 FROM movie
 WHERE yr=1962
 2. SELECT yr
FROM movie
WHERE title LIKE 'Citizen Kane'
3. SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'
ORDER BY yr
4. SELECT id 
FROM actor
WHERE name LIKE 'Glenn Close'
5. SELECT id
FROM movie
WHERE title LIKE 'Casablanca'
6. SELECT name
FROM casting
JOIN actor
ON actorid = id
WHERE movieid = 11768
7. SELECT name
FROM casting
JOIN actor
ON casting.actorid = actor.id
JOIN movie
ON casting.movieid = movie.id
WHERE title LIKE 'Alien'
8. SELECT title
FROM casting
JOIN movie
ON casting.movieid = movie.id
JOIN actor
ON casting.actorid = actor.id
WHERE name LIKE 'Harrison Ford'
9. SELECT title
FROM casting
JOIN movie
ON casting.movieid = movie.id
JOIN actor
ON casting.actorid = actor.id
WHERE name LIKE 'Harrison Ford' AND ord <> 1
10. SELECT title, name
FROM casting
JOIN movie
ON casting.movieid = movie.id
JOIN actor
ON casting.actorid = actor.id
WHERE ord = 1 AND yr = 1962
11. SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 1
ORDER BY COUNT(title) DESC 
LIMIT 2
12. SELECT title, name
FROM casting
JOIN movie
ON (movieid = id AND ord = 1)
JOIN actor
ON actorid = actor.id
WHERE movieid IN(
SELECT movieid FROM casting
WHERE actorid IN (
  SELECT id FROM actor
  WHERE name='Julie Andrews'))
GROUP BY title
13. SELECT name
FROM casting
JOIN movie
ON movieid = movie.id
JOIN actor
ON actorid = actor.id
WHERE ord = 1
GROUP BY name
HAVING COUNT(title) >= 15
14. SELECT title, COUNT(actorid)
FROM casting
JOIN movie
ON (movieid = movie.id AND yr = 1978)
JOIN actor
ON actorid = actor.id
GROUP BY title
ORDER BY COUNT(actorid) DESC, title
15. SELECT name
FROM casting
JOIN movie
ON movieid = movie.id
JOIN actor
ON (actorid = actor.id AND name <> 'Art Garfunkel')
WHERE movieid IN(
SELECT movieid FROM casting
WHERE actorid IN (
SELECT id FROM actor
  WHERE name = 'Art Garfunkel'))