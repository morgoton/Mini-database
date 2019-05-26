-- Переименовать таблицу:
-- rename table regions to regions_second;
-- select * from regions_second;
-- rename table regions_second to regions;

-- Добавить и удалить столбец (добавил столбец "People" в таблицы "Countries" и "Cities"):
-- alter table cities add adress varchar (50) null unique;
-- select * from cities;
-- alter table cities drop adress;
-- alter table countries add column people int not null;
-- alter table cities add column people int not null;

-- Переименовать поле с изменением типа:
-- alter table regions change column time world_time datetime;
-- select * from regions;
-- alter table regions change column world_time time time not null;

-- Изменить значение в поле (добавим значения в столбцы "People" в таблицах "Countries" и "Cities"):
-- update cities set city = 'Sochi' where id = '1';
-- select * from cities;
-- update cities set city = 'Moscow' where id = '1';
-- update cities set id_region = '3' where id = '1';
-- update cities set id_region = '3' where id = '3';
-- update cities set id_region = '1' where id = '4';
-- update countries set people ='144000000' where id = '1';
-- update countries set people ='372000000' where id = '2';
-- update countries set people ='66000000' where id = '3';
-- update countries set people ='11000000' where id = '1';
-- update countries set people ='8000000' where id = '2';
-- update countries set people ='232000' where id = '3';
-- update countries set people ='2000000' where id = '4';

-- Изменить тип столбца:
-- alter table cities modify column city char(100);
-- show create table cities;
-- alter table cities modify column city varchar(255);