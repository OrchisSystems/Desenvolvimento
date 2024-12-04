create database OrchisSystem;
use OrchisSystem;
drop database orchissystem;

create table Empresa(
idEmpresa int primary key auto_increment,
nomeEmpresa varchar (45) not null,
telefoneEmpresa char (18)not null,
cnpjEmpresa char (14) not null,
emailEmpresa varchar (65) not null,
senhaEmpresa varchar(45) not null
);

create table Estufa(
idEstufa int auto_increment primary key,
maxEtileno int,
minEtileno int,
maxLuminosidade int,
minLuminosidade int,
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
idMedidaSensor int primary key auto_increment,
valorEtileno int,
dataColetaEtileno TIMESTAMP DEFAULT current_timestamp,
valorLuminosidade int,
dataColetaLuminosidade TIMESTAMP DEFAULT current_timestamp,
fkSensor int,
fkEstufa int,
constraint fkSensorMedida foreign key (fkSensor)
	references Sensor(idSensor),
constraint fkEstufaMedia foreign key (fkEstufa)
	references Estufa(idEstufa)
);

-- INSERTS 

-- Admin
insert into Empresa values
	(default, 'Orchis System', '11111111', '1111111', 'orchissystem@gmail.com', 'Urubu100'),
    (default, 'FrizzaFlores', '11111', '11111', 'frizzaFlores@gmail.com', '123');

insert into Estufa values
	(default, 200, 50, 2000, 800, 2);

insert into Sensor values (default, "Luminosidade", 1);

SELECT idEstufa
    FROM Estufa
    WHERE fkEmpresa = 2
    GROUP BY idEstufa;
    
insert into MedidaSensor (valorEtileno, dataColetaEtileno, valorLuminosidade, dataColetaLuminosidade, fkSensor, fkEstufa) values
(70, current_timestamp(), 550, current_timestamp(), 1, 1);
insert into MedidaSensor (valorEtileno, dataColetaEtileno, valorLuminosidade, dataColetaLuminosidade, fkSensor, fkEstufa) values
(90, current_timestamp(), 500, current_timestamp(), 1, 1);
insert into MedidaSensor (valorEtileno, dataColetaEtileno, valorLuminosidade, dataColetaLuminosidade, fkSensor, fkEstufa) values
(10, current_timestamp(), 1000, current_timestamp(), 1, 1);

    SELECT maxEtileno as Etileno, maxLuminosidade as Luminosidade
    FROM Estufa
    WHERE idEstufa = 1;

select * from Estufa;
select * from MedidaSensor;

select valorEtileno as Etileno,
        time(dataColetaEtileno) as DataColeta,
        valorLuminosidade as Luminosidade
        from MedidaSensor where fkEstufa = 1 ORDER BY DataColeta LIMIT 5;
        
desc MedidaSensor;
