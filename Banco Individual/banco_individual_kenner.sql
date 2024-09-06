create database orchisSystems;
use orchisSystems;
 
create table cadastro (
idCliente int primary key auto_increment,
nomeCliente varchar (45) not null,
telefoneCliente varchar (18),  -- +55 (11) 987654321
emailCliente varchar (100),
dtNascCliente date not null,
enderecoCliente varchar (255) not null constraint chkEndereco check (enderecoCliente like '%São Paulo%')
)auto_increment = 1000;

insert into cadastro (nomeCliente, telefoneCliente, emailCliente, dtNascCliente, enderecoCliente) values
('Matheus Silva de Oliverira','(11) 987654321','matheus.silva@sptech.school','2003-02-12','Rua José Eduardo, 1001 - Capão Redondo, São Paulo - SP, 04823-211'),
('Joaquim Augusto lima','(11) 91234567','joaquim.augusto@gmail.com','1988-10-11','Avenida paulista, 1660 - Paulista, São Paulo - SP, 08733-098'),
('Carol Napolli Almeida','(11) 999321452','carol626@hotmail.com','1980-01-30','Avenida Copacabana, 1229 - Alphaville, São Paulo - SP, 06542-160'),
('Isabela Ferreira de Souza','(11) 965423782','isabelasouza22@outlook.com','2000-05-12','Rua Pirajú, 913 - Jardim Almeida, São Paulo - SP, 04866-241'),
('Enzo Gabriel Santos','(11) 980760543','enzo.santos13@gmail.com','2006-09-12','Avenida Copacabana, 1569 - Alphaville, São Paulo - SP, 06542-160');

select nomeCliente as 'Nome do Cliente', telefoneCliente as Telefone, dtNascCliente as 'Data de Nascimento', enderecoCliente as Endereço from cadastro;

select concat
	('Olá ', nomeCliente,
    ', seu telefone é: ',telefoneCliente,
    ', seu email é: ',emailCliente,
    ', sua data de nascimento é: ',dtNascCliente,
	' e seu endereço é: ',endereco_cliente) as 'Confirmação de Dados'
		from cadastro where nome_cliente like '%Matheus%';


create table sensorGas (
id_info int primary key auto_increment,
id_sensor int not null,
dado_ppm decimal (5,2),
data_hora datetime default current_timestamp
);

insert into sensorGas (id_sensor, dado_ppm) values 
(1001, 10.00),
(1002, 20.79),
(1003, 53.00),
(1004, 101.49),
(1005, 11.70),
(1001, 14.22),
(1002, 23.90),
(1003, 57.42),
(1004, 104.73),
(1005, 13.45);

select idSensor as 'Número do sensor',
dadoPpm as Porcentagem,
dataHora as 'Data e hora'
from sensorGas where dadoPpm > 10.00 and dadoPpm < 40 order by idSensor;

create table sensorLuminosidade (
idInfo int primary key auto_increment,
idSensor int not null,
dadoPpm decimal (5,2),
dataHora datetime default current_timestamp
);

insert into sensorLuminosidade (idSensor, dadoPpm) values
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
select idSensor as 'Número do Sensor',
	dadoPpm as Porcentagem,
    dataHora as 'Data e Hora'
	from sensorLuminosidade where dadoPpm < 80 order by idSensor;
    
select concat('O sensor número ',idSensor,' captou que a estufa está com ',dadoPpm,'% de luminosidade na data e hora ',dataHora) as Informação 
from sensorLuminosidade where idSensor = 1001;