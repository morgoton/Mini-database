create table regions
(id integer not null primary key auto_increment,
region varchar(100) not null unique,
id_country integer not null,
foreign key (id_country) references countries(id))
Engine InnoDB;