create database projeto;

use projeto;

create table usuarios(
idUsuario int primary key auto_increment,
nome varchar(80),
email varchar(80),
cadastroNac varchar(80),
senha varchar(20)) auto_increment = 1;

create table luminosidade(
idCotela int primary key auto_increment,
valor float, 
dtColeta date) auto_increment = 1;

create table etileno(
idColeta int primary key auto_increment,
valor float,
dtColeta date) auto_increment = 1;
