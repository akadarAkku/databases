show databases;
show tables;
use world;
select * from city limit 5;
-- 1. What's the population of the world ?
SELECT sum(population)
FROM world.country; -- 6078749450
-- 2. What is the name and the population of the most populated city in India?
SELECT name, Population FROM city WHERE CountryCode = (SELECT code FROM country WHERE name = "india") ORDER BY Population;
-- Mumbai (Bombay)	10500000
-- Delhi	7206704
-- Calcutta [Kolkata]	4399819
-- Chennai (Madras)	3841396
-- Hyderabad	2964638
-- Ahmedabad	2876710
-- Bangalore	2660088
-- etc..

-- 3. Find which countries do not have a capital.
select name, capital
from country
where capital is null;

-- 4 Which country has the lowest population? List all if more than one
Select name, max(population) As sumPop
From world.country; -- Aruba: population: 1277,558000

-- 5 What are the names of all the cities in Vietnam?
SELECT NAME FROM world.city WHERE COUNTRYCODE = 'Vietnam' ;

-- 6 Find the average life expectancy per continent.
SELECT AVG(LifeExpectancy),continent
FROM country
GROUP BY continent;

-- 7 Find the name and population of each USA district.
SELECT name,population,district
FROM city
WHERE countrycode = 'USA';

-- 8 Find the name of the cities that appear more than 2 times in the table.
SELECT name, COUNT(*)
FROM city
GROUP BY name
HAVING COUNT(*) >= 2;

-- 9 Find all the names of the districts in the Netherlands. (names should appear only once)

