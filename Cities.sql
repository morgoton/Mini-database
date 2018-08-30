create table if not exists cities
(id integer not null primary key auto_increment,
city varchar(100) not null unique,
id_region int not null,
foreign key (id_region) references regions(id))
Engine InnoDB;