create database OrchisSystem;
use OrchisSystem;

create table login (
id int primary key auto_increment,
nome varchar(45) not null,
telefone varchar(12) not null,
email varchar(35) not null,
cpf_cnpj varchar(14) not null,
senha varchar(24) not null
);

select * from login;

create table luminosidade (
id int primary key auto_increment,
sensor varchar(8) not null,
tempo datetime,
dado float
);

create table gas (
id int primary key auto_increment,
sensor varchar(8) not null,
tempo datetime,
dado float
);

create table especificacoes (
id int primary key,
areaPlantio int,
custo decimal(10, 2)
);
