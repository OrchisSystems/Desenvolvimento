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

insert into Funcionario (nomeFuncionario, emailFuncionario, senhafuncionario, cargofuncionario, fkEmpresa) values 
('João Almeida', 'joao.almeida@orquideaviva.com', 'Urubu100', 'CEO', 1),
('Carla Souza', 'carla.souza@orquideaviva.com', 'Urubu100', 'Gerente', 1),
('Maria Fernandes', 'maria.fernandes@orquideaviva.com', 'Urubu100', 'Botânico', 1),
('Lucas Ribeiro', 'lucas.ribeiro@orquideaviva.com', 'Urubu100', 'Botânico', 1),
('Paulo Silva', 'paulo.silva@orquideaviva.com', 'Urubu100', 'Engenheiro Agrônomo', 1),
('Fernanda Lima', 'fernanda.lima@orquideaviva.com', 'Urubu100', 'Engenheiro Agrônomo', 1),
('José dos Santos', 'jose.santos@orquideaviva.com', 'Urubu100', 'Técnico Agrícola', 1),
('Ana Pereira', 'ana.pereira@orquideaviva.com', 'Urubu100', 'Técnico Agrícola', 1),
('Pedro Carvalho', 'pedro.carvalho@orquideaviva.com', 'Urubu100', 'Técnico Agrícola', 1),
('Marcos Oliveira', 'marcos.oliveira@orquideaviva.com', 'Urubu100', 'Técnico Agrícola', 1);

insert into Funcionario (nomeFuncionario, emailFuncionario, senhafuncionario, cargofuncionario, fkEmpresa) values 
('Luís Martins', 'luis.martins@flordocampo.com', 'Urubu100', 'CEO', 2),
('Renata Araújo', 'renata.araujo@flordocampo.com', 'Urubu100', 'Gerente', 2),
('Larissa Santos', 'larissa.santos@flordocampo.com', 'Urubu100', 'Botânico', 2),
('Thiago Costa', 'thiago.costa@flordocampo.com', 'Urubu100', 'Botânico', 2),
('Roberto Alves', 'roberto.alves@flordocampo.com', 'Urubu100', 'Engenheiro Agrônomo', 2),
('Camila Teixeira', 'camila.teixeira@flordocampo.com', 'Urubu100', 'Engenheiro Agrônomo', 2),
('Felipe Gonçalves', 'felipe.goncalves@flordocampo.com', 'Urubu100', 'Técnico Agrícola', 2),
('Beatriz Moura', 'beatriz.moura@flordocampo.com', 'Urubu100', 'Técnico Agrícola', 2),
('Rafael Nunes', 'rafael.nunes@flordocampo.com', 'Urubu100', 'Técnico Agrícola', 2),
('Letícia Borges', 'leticia.borges@flordocampo.com', 'Urubu100', 'Técnico Agrícola', 2);

insert into Funcionario (nomeFuncionario, emailFuncionario, senhafuncionario, cargofuncionario, fkEmpresa) values 
('André Gonçalves', 'andre.goncalves@jardimreal.com', 'Urubu100', 'CEO', 3),
('Daniela Oliveira', 'daniela.oliveira@jardimreal.com', 'Urubu100', 'Gerente', 3),
('Cláudia Almeida', 'claudia.almeida@jardimreal.com', 'Urubu100', 'Botânico', 3),
('Eduardo Ferreira', 'eduardo.ferreira@jardimreal.com', 'Urubu100', 'Botânico', 3),
('Mariana Gomes', 'mariana.gomes@jardimreal.com', 'Urubu100', 'Engenheiro Agrônomo', 3),
('Bruno Andrade', 'bruno.andrade@jardimreal.com', 'Urubu100', 'Engenheiro Agrônomo', 3),
('João Batista', 'joao.batista@jardimreal.com', 'Urubu100', 'Técnico Agrícola', 3),
('Isabel Castro', 'isabel.castro@jardimreal.com', 'Urubu100', 'Técnico Agrícola', 3),
('Gabriel Mendes', 'gabriel.mendes@jardimreal.com', 'Urubu100', 'Técnico Agrícola', 3),
('Sofia Neves', 'sofia.neves@jardimreal.com', 'Urubu100', 'Técnico Agrícola', 3);

insert into Funcionario (nomeFuncionario, emailFuncionario, senhafuncionario, cargofuncionario, fkEmpresa) values 
('Pedro Santos', 'pedro.santos@orquideastropicais.com', 'Urubu100', 'CEO', 4),
('Juliana Freitas', 'juliana.freitas@orquideastropicais.com', 'Urubu100', 'Gerente', 4),
('Luana Dias', 'luana.dias@orquideastropicais.com', 'Urubu100', 'Botânico', 4),
('Diego Lima', 'diego.lima@orquideastropicais.com', 'Urubu100', 'Botânico', 4),
('Vanessa Moreira', 'vanessa.moreira@orquideastropicais.com', 'Urubu100', 'Engenheiro Agrônomo', 4),
('Ricardo Farias', 'ricardo.farias@orquideastropicais.com', 'Urubu100', 'Engenheiro Agrônomo', 4),
('Fernanda Monteiro', 'fernanda.monteiro@orquideastropicais.com', 'Urubu100', 'Técnico Agrícola', 4),
('Igor Souza', 'igor.souza@orquideastropicais.com', 'Urubu100', 'Técnico Agrícola', 4),
('Carla Rodrigues', 'carla.rodrigues@orquideastropicais.com', 'Urubu100', 'Técnico Agrícola', 4),
('Vinícius Silva', 'vinicius.silva@orquideastropicais.com', 'Urubu100', 'Técnico Agrícola', 4);

insert into Funcionario (nomeFuncionario, emailFuncionario, senhafuncionario, cargofuncionario, fkEmpresa) values 
('Marcelo Antunes', 'marcelo.antunes@verdenatura.com', 'Urubu100', 'CEO', 5),
('Simone Correia', 'simone.correia@verdenatura.com', 'Urubu100', 'Gerente', 5),
('Rafaela Nascimento', 'rafaela.nascimento@verdenatura.com', 'Urubu100', 'Botânico', 5),
('Henrique Braga', 'henrique.braga@verdenatura.com', 'Urubu100', 'Botânico', 5),
('Amanda Castro', 'amanda.castro@verdenatura.com', 'Urubu100', 'Engenheiro Agrônomo', 5),
('Vitor Oliveira', 'vitor.oliveira@verdenatura.com', 'Urubu100', 'Engenheiro Agrônomo', 5),
('Matheus Santana', 'matheus.santana@verdenatura.com', 'Urubu100', 'Técnico Agrícola', 5),
('Débora Vasconcelos', 'debora.vasconcelos@verdenatura.com', 'Urubu100', 'Técnico Agrícola', 5),
('Lucas Martins', 'lucas.martins@verdenatura.com', 'Urubu100', 'Técnico Agrícola', 5),
('Juliana Cardoso', 'juliana.cardoso@verdenatura.com', 'Urubu100', 'Técnico Agrícola', 5);








