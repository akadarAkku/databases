<<<<<<< HEAD
-- What are the names of the countries with population greater than 8 million?
SELECT * FROM world.country WHERE Population > 8000000;

-- What are the names of the countries that have “land” in their names ?
SELECT c.Name FROM world.country c where c.Name like '%land%';

-- What are the names of the cities with population in between 500,000 and 1 million ?
SELECT c.Name, c.Population FROM world.city c where c.Population between 500000 and 1000000;

-- What are the names of all the countries on the continent ‘Europe’ ?
SELECT c.Name FROM world.country c where c.Continent = 'Europe';

-- List all the countries in the descending order based on their surface areas.
SELECT c.Code,c.Name, c.SurfaceArea FROM world.country c order by c.SurfaceArea desc;

-- What are the names of all the cities in the Netherlands?
SELECT c.Name
	FROM world.city c
    left join world.country co on c.CountryCode = co.Code
    where co.Name = 'Netherlands'
    order by c.Name;
    
=======
-- What are the names of the countries with population greater than 8 million?
SELECT * FROM world.country WHERE Population > 8000000;

-- What are the names of the countries that have “land” in their names ?
SELECT c.Name FROM world.country c where c.Name like '%land%';

-- What are the names of the cities with population in between 500,000 and 1 million ?
SELECT c.Name, c.Population FROM world.city c where c.Population between 500000 and 1000000;

-- What are the names of all the countries on the continent ‘Europe’ ?
SELECT c.Name FROM world.country c where c.Continent = 'Europe';

-- List all the countries in the descending order based on their surface areas.
SELECT c.Code,c.Name, c.SurfaceArea FROM world.country c order by c.SurfaceArea desc;

-- What are the names of all the cities in the Netherlands?
SELECT c.Name
	FROM world.city c
    left join world.country co on c.CountryCode = co.Code
    where co.Name = 'Netherlands'
    order by c.Name;
>>>>>>> master
