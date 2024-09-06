create database orchisSystem;
use orchisSystem;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
cpf char(11),
cnpj char(14),
senha varchar(20)
);

create table ldr(
idLuminosidade int primary key auto_increment,
quantidadeLuz float,
dataHoraColeta datetime
);

create table mq2(
idEtileno int primary key auto_increment,
quantidadeGas float,
dataHoraColeta datetime
);

create table configuracaoDashboard(
idConfiguracao int primary key auto_increment,
intervaloExibicao varchar(30),
sensorExibido varchar(45)
);