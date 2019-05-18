-- use connection;

create table if not exists Cities
      (id integer primary key not null auto_increment,
	  city varchar (255) not null unique,
      id_region int not null,
      Datetime datetime not null)
      Engine InnoDB;

-- drop table if exists Cities;

create table if not exists Cities
      (id integer primary key not null auto_increment,
	  city varchar (255) not null unique,
      id_region int not null,
      Datetime datetime not null default current_timestamp())
      Engine InnoDB;
    
create table if not exists Regions
        (id integer primary key not null auto_increment,
        region varchar (255) not null unique,
        id_country integer not null,
        time time not null)
        Engine InnoDB;

create table if not exists Countries
        (id integer primary key not null auto_increment,
        country varchar(255) not null unique,
        date timestamp not null default current_timestamp)
        Engine InnoDB;

-- добавляем связи:

-- alter table cities add foreign key (id_region) references regions (id);
-- alter table regions add foreign key (id_country) references countries (id);

-- проверяем:

-- show create table cities;
-- show create table regions;