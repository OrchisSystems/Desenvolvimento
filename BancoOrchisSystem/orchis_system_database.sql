create database OrchisSystem;
use orchissystem;

create table usuario(
idCliente int primary key auto_increment,
nomeCliente varchar (45) not null,
telefoneCliente varchar (18),  -- +55 (11) 987654321
emailCliente varchar (100),
dtNascCliente date not null,
enderecoCliente varchar (255) not null 
);

create table sensorEtileno(
id_info int primary key auto_increment,
id_sensor int not null,
valor float,
dataColeta datetime default current_timestamp
);

create table sensorLuminosidade(
id_info int primary key auto_increment,
id_sensor int not null,
valor float,
dataColeta datetime default current_timestamp
);

create table configuracaoDashboard(
idConfiguracao int primary key auto_increment,
intervaloExibicao varchar(30),
sensorExibido varchar(45)
);

create table estufa(
idEstufa int auto_increment primary key,
controleEtileno boolean not null,
controleLuminosidade boolean not null,
areaPlantio float not null,
precoCusto float not null
);

insert into usuario (nomeCliente, telefoneCliente, emailCliente, dtNascCliente, enderecoCliente) values
('Matheus Silva de Oliverira','(11) 987654321','matheus.silva@sptech.school','2003-02-12','Rua José Eduardo, 1001 - Capão Redondo, São Paulo - SP, 04823-211'),
('Joaquim Augusto lima','(11) 91234567','joaquim.augusto@gmail.com','1988-10-11','Avenida paulista, 1660 - Paulista, São Paulo - SP, 08733-098'),
('Carol Napolli Almeida','(11) 999321452','carol626@hotmail.com','1980-01-30','Avenida Copacabana, 1229 - Alphaville, São Paulo - SP, 06542-160'),
('Isabela Ferreira de Souza','(11) 965423782','isabelasouza22@outlook.com','2000-05-12','Rua Pirajú, 913 - Jardim Almeida, São Paulo - SP, 04866-241'),
('Enzo Gabriel Santos','(11) 980760543','enzo.santos13@gmail.com','2006-09-12','Avenida Copacabana, 1569 - Alphaville, São Paulo - SP, 06542-160');

select nomeCliente as 'Nome do Cliente', telefoneCliente as Telefone, dtNascCliente as 'Data de Nascimento', enderecoCliente as Endereço from usuario;

select concat
	('Olá ', nomeCliente,
    ', seu telefone é: ',telefoneCliente,
    ', seu email é: ',emailCliente,
    ', sua data de nascimento é: ',dtNascCliente,
	' e seu endereço é: ',enderecoCliente) as 'Confirmação de Dados'
		from usuario where nomeCliente like '%Isabela%';



insert into sensorEtileno (id_sensor, valor) values 
(1, 10.00),
(2, 20.79),
(3, 53.00),
(4, 101.49),
(5, 11.70),
(1001, 14.22),
(1002, 23.90),
(1003, 57.42),
(1004, 104.73),
(1005, 13.45);

select id_sensor as 'Número do sensor',
valor as Porcentagem,
dataColeta as 'Data e hora'
from sensorEtileno where valor > 10.00 and valor < 40 order by id_sensor;
desc sensorEtileno;

insert into sensorLuminosidade (id_sensor, valor) values
(1001, 70.26),
(1002, 74.39),
(1003, 80.34),
(1004, 75.68),
(1005, 92.11),
(1001, 73.56),
(1002, 77.36),
(1003, 83.90),
(1004, 78.55),
(1005, 95.22);

select * from sensorLuminosidade;
select id_sensor as 'Número do Sensor',
	valor as Valor,
    dataColeta as 'Data e Hora'
	from sensorLuminosidade where valor < 80 order by id_sensor;

desc sensorluminosidade;

insert into configuracaodashboard (intervaloExibicao, sensorExibido) values
('Diário', 'Ambos'),
('Diário', 'Etileno'),
('Diário', 'Luminosidade'),
('Semanal', 'Ambos'),
('Semanal', 'Etileno'),
('Semanal', 'Luminosidade'),
('Mensal','Ambos'),
('Mensal','Luminosidade'),
('Mensal','Etileno'),
('Anual','Ambos'),
('Anual','Etileno'),
('Anual','Luminosidade')
;

Select intervaloExibicao as 'Intervalo de monitoramento',
sensorExibido as 'Tipo de sensor'
from configuracaoDashboard;

desc configuracaoDashboard;

insert into estufa values 
(default, false,false,300,21.8),
(default, true,false,100,19.2),
(default, false,true,200,25),
(default, true,true,190,22);

select controleEtileno as 'Possui controle de etileno ?',
controleLuminosidade as 'Possui controle de luminosidade ? ',
areaPlantio as 'Área disponível para plantio',
precoCusto as 'Preço de custo por orquídea' from estufa;

desc estufa;
desc usuario;