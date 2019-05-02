SELECT name, continent, population FROM world;

SELECT name FROM world
WHERE population >= 200000000;

select name, gdp/population from world where population >=200000000;

select name, population/1000000 from world where continent = 'south america' ;

select name, population from world where name in ('france', 'germany','italy');

select name from world where name like '%united%';

select name, population, area from world where area >=3000000 or population >=250000000;

SELECT name, population, area
FROM world
WHERE population > 250000000 XOR area > 3000000;



select name, ROUND(population / 1000000, 2), ROUND(gdp / 1000000000, 2) 
from world 
where continent = 'South America';


select name, round(gdp/population, -3) from world where gdp >=1000000000000

SELECT name,  capital from world where LENGTH(capital) = LENGTH(name)

SELECT name,  capital
FROM world where LEFT(name,1) = left(capital,1) and name <> capital

SELECT name
FROM world
WHERE name LIKE '%a%'
and name like '%e%'
and name like '%i%'and name like '%o%'and name like '%u%'
AND name NOT LIKE '% %'