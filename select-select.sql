SELECT name FROM world
WHERE population >
(SELECT population FROM world
	WHERE name='Russia');

select name from world
where continent = 'Europe' and
gdp/population > (select gdp/population from world where
	name = 'United Kingdom');

select name, continent from world where continent in (select continent from world where name = 'Argentina' or name =  'Australia')
order by name;

select name, population from world 
where population > (select population from world where name = 'Canada') and population < (select population from world where name = 'Poland');

select name, concat (round (population * 100 / (select population from world where name = 'Germany')),'%') from world where continent = 'Europe';

select name from world where gdp > (select max(gdp) from world where continent = 'Europe');

SELECT continent, name, area FROM world x
WHERE area>= ALL
(SELECT area FROM world y
	WHERE y.continent=x.continent
	AND population>0);


SELECT continent, name FROM world x
WHERE name <=  ALL(SELECT name FROM world y
	WHERE x.continent = y.continent);

select name, continent, population from world where 
continent not in (SELECT DISTINCT continent FROM world WHERE population >= 25000000);

select name, continent from world x
WHERE population > ALL(SELECT population*3 FROM world y
	WHERE x.continent = y.continent AND x.name != 
	y.name);
