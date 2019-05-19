-- Переименовать таблицу:
-- rename table regions to regions_second;
-- select * from regions_second;
-- rename table regions_second to regions;

-- Переименовать поле с изменением типа:
-- alter table regions change column time world_time datetime;
-- select * from regions;
-- alter table regions change column world_time time time not null;

-- Изменить значение в поле:
-- update cities set city = 'Sochi' where id = '1';
-- select * from cities;
-- update cities set city = 'Moscow' where id = '1';

-- Добавить и удалить столбец:
-- alter table cities add adress varchar (50) null unique;
-- select * from cities;
-- alter table cities drop adress;

-- Изменить тип столбца:
-- alter table cities modify column city char(100);
-- show create table cities;
-- alter table cities modify column city varchar(255);