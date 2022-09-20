-- eliminar la base de datos si es que existe
drop database if exists escuelanueva;

-- creamos la base de datos
create database escuelanueva;

-- seleccionamos la base de datos
use escuelanueva;

-- creacion de las tablas 

-- Parentesco
-- Eliminando la tabla si existe
drop table if exists parentesco;

-- creando la tabla
create table parentesco(
codpar int primary key auto_increment,
despar varchar(48) binary charset utf8 collate utf8_bin not null,
estpar bit not null
) engine= InnoDB character set =utf8;

-- insertando datos a la tabla parentesco
insert into parentesco (despar,estpar) values ('padre',1);
insert into parentesco (despar,estpar) values ('madre',1);

-- mostrando los datis ingresados en la tabla
select * from parentesco;

-- Distrito
-- Eliminamos la tabla si existe
drop table if exists distrito;

-- creamos la tabla
create table distrito(
coddis int primary key auto_increment,
nomdis varchar(40) binary charset utf8 collate utf8_bin not null,
estdis bit not null
)engine= InnoDB character set =utf8;

-- insertamos datos a la tabla
insert into distrito (nomdis,estdis) values ('Creado de Lima',1);
insert into distrito (nomdis,estdis) values ('Breña',1);

-- mostramos los datos ingresados en la tabla
select * from distrito;

-- Apoderado
-- eliminamos la tabla si existe
drop table if exists apoderado;

-- creamos la tabla
create table apoderado(
codapo int primary key auto_increment,
nomapo varchar(40) binary charset utf8 collate utf8_bin not null,
apepapo varchar(40) binary charset utf8 collate utf8_bin not null,
apemapo varchar(40) binary charset utf8 collate utf8_bin not null,
dniapo varchar(8) not null,
dirapo varchar(50) not null,
telapo varchar(7) null,
celapo varchar(9) not null,
corapo varchar(40) not null,
sexapo varchar(20) not null,
estapo bit not null,
codpar int not null,
coddis int not null,
foreign key (codpar) references parentesco(codpar),
foreign key (coddis) references distrito(coddis)
)engine= InnoDB character set =utf8;

-- insertamos datos a la tabla

insert into apoderado (nomapo,apepapo,apemapo,dniapo,dirapo,telapo,celapo,corapo,sexapo,estapo,codpar,coddis)
values ('Stefani Daniela','Morales','Castillo','67845747','Av. Luis Braille 1450','2645865','920099113','sdaniela@gmail.com','Femenino',1,2,1);

-- mostramos los datos de la tabla
select * from apoderado;




