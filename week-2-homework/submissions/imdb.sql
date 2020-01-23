show databases;
show tables;
use imdb;
describe actors;
describe films;
describe musicians;
describe roles;
---------------------------------
-- EXERCISE imdb:

-- 1-  Find the minimum and the maximum age of the actors per gender.
SELECT gender, max(age),min(age)
FROM imdb.actors
group by gender;

-- 2 Find how many actors are in their 20’s, 30’s, 40’s, 50’s etc (grouped by decade). 
select count(*), decade, decade + 9
from (select floor(age / 10) * 10 as decade
from imdb.actors) t
group by decade
order by decade;
-- 3 Add a column to the films table for storing the duration (runtime) or each film.
ALTER TABLE imdb.films
ADD COLUMN Duration TIME(3);
-- 4  Alter the data type of column age to INT
ALTER TABLE imdb.actors MODIFY age INTEGER;
-- 5 Print the names and biographies of the actors in this format “ANNE 
SELECT upper(concat(fname," ",lname," BIO:"," ",biography) ) as BIOGRAPHY
FROM imdb.actors;
-- 6  Delete the column biography from act
ALTER TABLE imdb.actors DROP COLUMN age;
