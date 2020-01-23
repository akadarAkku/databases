SHOW databases;
use world;
show tables;
select * from city limit 5;
-----------------------------------------------
-- What is the name and the population of the most populated city in India?
SELECT name, (Population)
FROM world.city 
WHERE CountryCode="IND"
Order by Population desc limit 1;
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
SELECT * FROM country WHERE capital IS NULL;

-- 4 Which country has the lowest population? List all if more than one
Select name, min(population) As sumPop
From world.country; -- Aruba: population: 0

-- 5 What are the names of all the cities in Vietnam?
SELECT name
FROM city
WHERE countrycode = 'VNM';

-- 6 Find which countries do not have a capital.



