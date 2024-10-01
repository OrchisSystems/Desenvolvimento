create database OrchisSystem;
use orchissystem;

create table Empresa(
idEmpresa int primary key auto_increment,
nomeEmpresa varchar (45) not null,
telefoneEmpresae char (18)not null,
cnpjEmpresa char (14) not null,
qtdFuncionariosEmpresa char(14) not null,
emailEmpresa varchar (65) not null,
cepEmpresa char(9)
);


create table funcionario(
idFuncionario int primary key auto_increment,
nomeFuncionario varchar (45),
emailFuncionario varchar(65),
senhafuncionario varchar(45),
cargofuncionario varchar(45),
fkEmpresa int,
constraint fkFuncionarioEmpresa foreign key (fkEmpresa)
				references Empresa(idEmpresa)
);

create table estufa(
idEstufa int auto_increment primary key,
controleEtileno boolean not null,
controleLuminosidade boolean not null,
areaPlantio float not null,
precoCusto float not null,
fkEmpresa int,
constraint fkEstufaEmpresa foreign key (fkEmpresa)
				references Empresa(idEmpresa)
);

create table sensor(
idSensor int primary key auto_increment,
tipoSensor varchar (45),
fkEmpresa int,
constraint fkSensorEmpresa foreign key (fkEmpresa)
				references estufa(idEstufa)
);

create table medidaSensor(
idLeituraEtileno int primary key auto_increment,
valorEtileno varchar(45),
dataColetaEtileno datetime,
valorLuminosidade varchar(45),
dataColetaLuminosidade datetime,
fkSensor int,
constraint fkMedidaSensor foreign key (fkSensor)
				references sensor(idSensor)
);


-- INSERTS 

insert into Empresa (nomeEmpresa, telefoneEmpresae, cnpjEmpresa, qtdFuncionariosEmpresa, emailEmpresa, cepEmpresa) values
('Estufas Orquídea Viva', '11987654330', '61345678000190', '50', 'contato@orquideaviva.com', '01534000'),
('Orquidário Flor do Campo', '11987654331', '71345678000191', '40', 'contato@flordocampo.com', '01534001'),
('Estufas Jardim Real', '11987654332', '81345678000192', '35', 'contato@jardimreal.com', '01534002'),
('Orquídeas Tropicais', '11987654333', '91345678000193', '60', 'contato@orquideastropicais.com', '01534003'),
('Estufas Verde Natura', '11987654334', '01345678000194', '45', 'contato@verdenatura.com', '01534004');


