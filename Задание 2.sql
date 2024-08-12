--1
select name, duration
from tracks t 
where duration = (select max(duration) from tracks);

--2
select name, duration 
from tracks t 
where duration >= 210;

--3
select name
from collections c 
where year between 2018 and 2020;

--4
select name
from performers p 
where not name like '% %';

--5
select "name" 
from tracks t 
where "name" like '%my%' or "name" like '%мой%';