-- 1 What is the name and the population of the most populated city in India?
SELECT name, Population FROM city WHERE CountryCode = (SELECT code FROM country WHERE name = "india") ORDER BY Population;
-- Vejalpur	89053
-- Raigarh	89166
-- Morvi	90357
-- Baidyabati	90601
-- Ambala Sadar	90712
-- Hassan	90803
-- Purulia	92574
-- Bettiah	92583 ETC..

-- 2 List the names of the countries having at least 3 cities with 3 million inhabitants. 

-- 3 What is the number of all the official languages? 


