SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature';

select yr, subject from nobel where winner = 'Albert Einstein';

select winner from nobel where subject = 'Peace' 
and yr >= 2000;

select yr, subject, winner from nobel where subject = 'Literature' and yr > 1979 and yr < 1990;

SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt', 
	'Woodrow Wilson', 
	'Jimmy Carter', 
	'Barack Obama');

select winner from nobel
where winner like 'John%';

SELECT *
FROM nobel
WHERE (subject = 'Physics' AND yr = 1980)
OR (subject = 'Chemistry' AND yr = 1984);

select yr, subject, winner from nobel
where yr = 1980 and (subject !='chemistry' and subject != 'medicine');

select yr, subject, winner from nobel 
where (subject = 'medicine' and yr <1910)
or
(subject = 'literature' and yr >2003);

select * from nobel
where winner = 'PETER GRÜNBERG';

select * from nobel
where winner = 'EUGENE O\'NEILL';

select * from nobel
where winner like 'Sir%' order by yr desc, winner asc;

SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject in ('Physics','Chemistry'),subject,winner;

