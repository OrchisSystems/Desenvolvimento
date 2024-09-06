create database ORCHIS_SYSTEM;

use ORCHIS_SYSTEM;

create table usuarios(
idUsuario int primary key auto_increment,
nome varchar(80),
email varchar(80),
cadastroNac varchar(80),
senha varchar(20)) auto_increment = 1;

insert into usuarios values
(default, 'José Maria Denticulatum', 'josemariadenticulatum@gmail.com', '323987485-23', 'Euamoorquideas_'),
(default, 'Maria Alice das Rosas', 'maria.a.rosas@hotmail.com', '192394928-02', '-mariArosAs-'),
(default, 'Luiz Filodendro', 'luizfilo@yahoo.com', '929312949-07', 'Euamominhamaezinha#');

select * from usuarios;
select nome from usuarios where email like "%yahoo.com";
select * from usuarios where idUsuario = 1;

create table luminosidade(
idCotela int primary key auto_increment,
valor float, 
dtColeta date) auto_increment = 1;

insert into luminosidade values
(default, 75.3, '2024-08-04'),
(default, 73.2, '2024-08-05'),
(default, 66.4, '2024-08-06');

select * from luminosidade;
select * from luminosidade where dtColeta > '2024-08-04';

create table etileno(
idColeta int primary key auto_increment,
valor float,
dtColeta date) auto_increment = 1;

insert into etileno values
(default, 5.3, '2024-08-04'),
(default, 3.2, '2024-08-05'),
(default, 2.4, '2024-08-06');

select * from etileno;
select valor from luminosidade where dtColeta > '2024-08-04';

create table dadosCliente(
idCliente int primary key auto_increment,
areaEstufa float, 
qtdPlantas float, 
valorCusto decimal (5,2),
luminosidade varchar(4) check (luminosidade in ('sim','nao')),
etileno varchar(4) check (etileno in ('sim', 'nao')));

insert into dadosCliente values
(default, 55, 3500, 24.30, 'sim', 'nao'),
(default, 23, 1378, 19.78, 'nao', 'nao'),
(default, 41, 2900, 20.36, 'sim', 'sim');

select * from dadosCliente;
select valorCusto from dadosCliente where qtdPlantas > 1500;


