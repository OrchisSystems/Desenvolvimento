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

select * from usuario;

insert into usuario (nome,email,cpf,senha) values 
('Rennan', 'rennan@orchis.com','12345678910', '123456');

insert into usuario (nome,email,cpf,senha) values 
('Rennan', 'robert@orchis.com','12345678911', '1234567');

insert into usuario (nome,email,cpf,senha) values 
('Neto', 'neto@orchis.com','12345678912', '1234568');

insert into usuario (nome,email,cpf,senha) values 
('leo', 'leo@orchis.com','12345678913', '1234569');

insert into usuario (nome,email,cpf,senha) values 
('kenner', 'kenner@orchis.com','12345678914', '1234510');

insert into ldr (quantidadeLuz, dataHoraColeta) values 
(25.3,'2024-09-06 14:30:00');

insert into ldr (quantidadeLuz, dataHoraColeta) values 
(25.3,'2024-10-26 22:30:00'),
(70.3, '2023-05-06 11:30:00');

insert into mq2 (quantidadeGas, dataHoraColeta) values 
(0.02,'2024-10-26 22:30:00'),
(1.80, '2023-05-06 11:30:00');

insert into configuracaodashboard (intervaloExibicao, sensorExibido) values
('Diário', 'Etileno'),
('Mensal', 'Luminosidade');

select * from usuario;
select * from ldr;
select * from mq2;
select * from configuracaodashboard;
