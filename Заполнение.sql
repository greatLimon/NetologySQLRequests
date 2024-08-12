insert into performers(name)
values('Король и Шут'),('Morgenstern'),('Северный флот'),('Клава Кока');

insert into genres(name)
values('Рок'),('Рэп'),('Попса');

insert into albums(name, year)
values('Рок жив!', 2013),('Тусклый свет',2022),('Слезы',2024);

insert into tracks(name, duration, album)
values('Кукла колдуна', 90, 1),('Кадилак', 120, 3),('Танец злобного гения', 113, 1),('Поднимая знамя', 141, 2),('Краш', 100,3),('Харон',84,2);

insert into collections(name, year)
values('Рок музыка', 2022),('Все и везде',2024),('Популярное', 2023),('Лучшее в жанре', 2024);

insert into performersalbums 
values(1,1),(2,3),(4,3);

insert into performersgenres 
values(1,1),(2,2),(3,1),(4,3);

INSERT INTO trackcollections
values(1,1,1),(2,1,3),(3,1,4),(4,1,6),(5,2,1),(6,2,2),(7,2,3),(8,2,4),(9,2,5),(10,2,6),(11,3,2),(12,3,5),(13,4,3),(14,4,4);

