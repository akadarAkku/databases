--- 1. List all full names of car makers from `japan`
show tables;
describe tables;
select * from (car_makers) limit 5;
describe car_makers;
describe countries;
select id from countries where name = 'japan';
select full_name from car_makers where country = 4;
