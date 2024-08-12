--1
select g."name" name , count(performer)
from performersgenres p
join genres g on p.gener = g.id 
group by name;

--2
select count(t.id) 
from tracks t
join albums a on t.album = a.id 
where a."year" between 2019 and 2020;

--3
select a."name" , AVG(t.duration)
from albums a 
join tracks t on t.album = a.id 
group by a."name" ;

--4
select p.name 
from performers p
join performersalbums pa on p.id = pa.performer
join albums a on pa.album = a.id
where not p.id = (select pa2.performer from performersalbums pa2 where pa2.album = (select a2.id from albums a2 where a2."year" = 2020));


--5
select distinct c."name"
from collections c 
join trackcollections tc on c.id = tc.collection 
join tracks t on tc.track = t.id 
join albums a on t.album = a.id 
join performersalbums pa on a.id = pa.album 
join performers p on p.id = pa.performer 
where p."name" = 'Король и Шут';