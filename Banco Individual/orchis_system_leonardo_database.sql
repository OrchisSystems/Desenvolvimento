create database orchisSystemDataBase;

use orchisSystemDataBase;

create table user (
    id int primary key auto_increment,
    name varchar(255) not null,  
    phoneNumber varchar(15) not null,
    email varchar(255) not null,
    cnpj varchar(14) not null,
    password varchar(8) not null
);

create table mq2Sensor (
    id int primary key auto_increment,
    idSensor int,
    measurement float not null,
    time datetime not null
);

create table ldrSensor (
    id int primary key auto_increment,
    idSensor int,
    measurement float not null,
    time datetime not null
);

-- configurações de cada sensor do tipo ldr e mq2

create table sensorConfiguration (   
    id int primary key auto_increment,  
    -- idSensor int,
    type char(3),
    measurementInterval int,
    measurementPerInterval int
);

-- Inserir dados na tabela user
insert into user (name, phoneNumber, email, cnpj, password) values
('Acme Corp', '11-98765-4321', 'contact@acme.com', '12345678000195', 'acme1234'),
('Tech Solutions Ltda', '21-87654-3210', 'info@techsolutions.com', '23456789000198', 'tech5678'),
('Green Energy Inc.', '31-76543-2109', 'support@greenenergy.com', '34567890000197', 'green910'),
('Innovative Systems', '41-65432-1098', 'sales@innovativesystems.com', '45678901000196', 'innov112'),
('Future Technologies', '51-54321-0987', 'contact@futuretech.com', '56789012000199', 'future34');


insert into mq2Sensor (idSensor, measurement, time) values
(1, 25.4, '2024-09-11 08:00:00'),
(2, 30.1, '2024-09-11 09:00:00'),
(3, 28.7, '2024-09-11 10:00:00'),
(4, 22.5, '2024-09-11 11:00:00'),
(5, 26.8, '2024-09-11 12:00:00');

insert into ldrSensor (idSensor, measurement, time) values
(1, 120.0, '2024-09-11 08:00:00'),
(2, 110.5, '2024-09-11 09:00:00'),
(3, 115.8, '2024-09-11 10:00:00'),
(4, 125.1, '2024-09-11 11:00:00'),
(5, 130.3, '2024-09-11 12:00:00');

insert into sensorConfiguration (type, measurementInterval, measurementPerInterval) values
('LDR', 60, 10),
('MQ2', 120, 5),
('LDR', 60, 10),
('MQ2', 120, 5),
('LDR', 60, 10);