create database OrchisSystem;
use OrchisSystem;
drop database OrchisSystem;

create table Empresa(
idEmpresa int primary key auto_increment,
nomeEmpresa varchar (45) not null,
telefoneEmpresae char (18)not null,
cnpjEmpresa char (14) not null,
qtdFuncionariosEmpresa char(14) not null,
emailEmpresa varchar (65) not null,
cepEmpresa char(9)
);

create table Estufa(
idEstufa int auto_increment primary key,
controleEtileno boolean not null,
controleLuminosidade boolean not null,
areaPlantio float not null,
precoCusto float not null,
fkEmpresa int,
constraint fkEstufaEmpresa foreign key (fkEmpresa)
				references Empresa(idEmpresa)
);

create table Sensor(
idSensor int primary key auto_increment,
tipoSensor varchar (45),
fkEstufa int,
constraint fkSensorEstufa foreign key (fkEstufa)
				references Estufa(idEstufa)
);

create table MedidaSensor(
idMedidaSensor int auto_increment,
valorEtileno int,
dataColetaEtileno TIMESTAMP DEFAULT current_timestamp,
valorLuminosidade int,
dataColetaLuminosidade TIMESTAMP DEFAULT current_timestamp,
fkSensor int,
primary key (idMedidaSensor, fkSensor),
constraint fkMedidaSensor foreign key (fkSensor)
				references Sensor(idSensor)
);

truncate table MedidaSensor;

select * from MedidaSensor;
drop table MedidaSensor;

-- INSERTS 

insert into Empresa (nomeEmpresa, telefoneEmpresae, cnpjEmpresa, qtdFuncionariosEmpresa, emailEmpresa, cepEmpresa) values
('Estufas Orquídea Viva', '11987654330', '61345678000190', '50', 'contato@orquideaviva.com', '01534000'),
('Orquidário Flor do Campo', '11987654331', '71345678000191', '40', 'contato@flordocampo.com', '01534001'),
('Estufas Jardim Real', '11987654332', '81345678000192', '35', 'contato@jardimreal.com', '01534002'),
('Orquídeas Tropicais', '11987654333', '91345678000193', '60', 'contato@orquideastropicais.com', '01534003'),
('Estufas Verde Natura', '11987654334', '01345678000194', '45', 'contato@verdenatura.com', '01534004');

select * from Estufa;

-- Inserts para testes de selects

insert into Estufa (controleEtileno, controleLuminosidade, areaPlantio, precoCusto, fkEmpresa) values
(true, false, 500.75, 15000.00, 1);

insert into Sensor (tipoSensor, fkestufa ) values
('Sensor de Etileno', 1);

insert into MedidaSensor (valorEtileno, dataColetaEtileno, valorLuminosidade, dataColetaLuminosidade, fkSensor) values
(2, '2024-10-02 10:00:00', 300, '2024-10-02 10:00:00', 1);

update Sensor set tipoSensor = "MQ2" where idSensor =1;

select Empresa.nomeEmpresa as "Nome Empresa", MedidaSensor.valorEtileno as "Etileno", MedidaSensor.dataColetaEtileno as "Data da coleta", Sensor.tipoSensor as Sensor,
case
when tipoSensor = "MQ2" then "Etileno"
end as "Tipo Sensor"
from MedidaSensor
join Sensor on MedidaSensor.fkSensor = Sensor.idSensor
join Estufa on Sensor.fkEstufa = Estufa.idEstufa
join Empresa on Estufa.fkEmpresa = Empresa.idEmpresa
where Empresa.idEmpresa = 1;

/* 
create table Funcionario(
idFuncionario int primary key auto_increment,
nomeFuncionario varchar (45),
emailFuncionario varchar(65),
senhafuncionario varchar(45),
cargofuncionario varchar(45),
fkEmpresa int,
constraint fkFuncionarioEmpresa foreign key (fkEmpresa)
				references Empresa(idEmpresa)
);
 */
