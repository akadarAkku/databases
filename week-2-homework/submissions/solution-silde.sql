-- 1 What is the name and the population of the most populated city in India?
SELECT name, Population FROM city WHERE CountryCode = (SELECT code FROM country WHERE name = "india") ORDER BY Population DESC LIMIT 1;

-- 2 List the names of the countries having at least 3 cities with 3 million inhabitants. 
select count(city.name) AS NumberOfCities, sum(city.population) AS inhabitants, city.countrycode FROM city
LEFT JOIN country ON city.CountryCode = country.code HAVING COUNT(City.name)>3 AND SUM(city.population)>3000000;

-- 3 What is the number of all the official languages? 
SELECT count(c.Name) 
FROM world.country c
join world.countrylanguage l
on l.CountryCode = c.Code
WHERE IsOfficial ="T";
-- 4  Find all the countries that have only one official language
SELECT c.Name
FROM world.country c
join world.countrylanguage l
on l.CountryCode = c.Code
WHERE IsOfficial ="T"
group by c.Name
having count(1)=1;

-- 5 Find which countries have not a capital
SELECT name 
FROM world.country
WHERE Capital  IS NULL;

-- 6 Which country has the lowest population? 
SELECT name, min(population) from world.country order by Population;

-- Make a list with all the languages spoken in Eastern Afric
SELECT Language
FROM world.country c
join world.countrylanguage l
on l.CountryCode =c.Code
where Region="Eastern Africa";
