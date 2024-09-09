create database estufa_orquidea;
use estufa_orquidea;

-- tabela de usuarios

create table usuarios (
id_usuarios int primary key auto_increment,
nome_usuario varchar(50) not null,
email varchar(100) not null,
senha varchar(100) 
);
desc usuarios;

-- inserindo informações

insert into usuarios values
(default, 'marcos ferreira', 'marcos@gmail.com', 345587),
(default, 'roberta demonte', 'roberta@gmail.com', 143254),
(default, 'pedro nogueira', 'pedro@gmail.com', 968432),
(default, 'vitoria dos santos', 'vitoria@gmail.com', 798142),
(default, 'leonardo da vinci', 'leonardo@gmial.com', 456923),
(default, 'thais carla', 'thais@gmail.com', 309812);

select * from  usuarios;

  select * from usuarios order by nome_usuario desc;

select senha from  usuarios;



-- tabela de gás etileno
create table gas_etileno (
id_monitoramento_gas int primary key auto_increment,
data_hora datetime not null,
nvel_gas_etileno int,
preco_etileno float
);
desc gas_etileno;

-- inserindo informações
insert into gas_etileno values 
(default, '2024-09-03 20:24:00', 0.8, 64.3),
(default, '2024-04-06 15:13:00', 0.5, 96.2),
(default, '2024-02-15 19:44:00', 0.9, 112.5),
(default, '2024-12-10 13:54:00', 0.5, 100.3);

select * from gas_etileno;

delete from gas_etileno where id_monitoramento_gas =12;


-- exibir coluna 2
select * from gas_etileno
where id_monitoramento_gas = 2;

select preco_etileno from gas_etileno;



-- criar tabela luminosidade
create table monitoramento_luminosidade (
id_monitoramento_luz int primary key auto_increment,
nivel_luminosidade float not null,
data_hora datetime

);
desc monitoramento_luminosidade;

-- inserindo informações
insert into  monitoramento_luminosidade values 
(default, 15, '2024-09-03 20:24:00'),
(default, 24, '2024-04-06 15:13:00'),
(default, 11, '2024-02-15 19:44:00');

select * from  monitoramento_luminosidade;

-- exibir coluna 1
select * from monitoramento_luminosidade
where id_monitoramento_luz = 1;


-- criar tabela tempo de colheita
create table tempo_colheita(
id_colheita int primary key auto_increment,
tempo_esperado_colheita int not null,
data_inicio_colheita int not null,
data_fim_colheita date not null
);
desc tempo_colheita;

alter table tempo_colheita modify tempo_esperado_colheita varchar (50);

alter table tempo_colheita modify data_inicio_colheita date;


desc tempo_colheita;

-- inserindo valores
insert into tempo_colheita (tempo_esperado_colheita, data_inicio_colheita, data_fim_colheita) 
values ('6 meses', '2024-01-01', '2024-07-01'); 

select * from tempo_colheita;

-- inserindo outros valores
insert into tempo_colheita values
(default, '6 meses', '2024-08-05', '2025-02-05'),
(default, '6 meses', '2024-11-16', '2025-05-16'),
(default, '6 meses', '2024-07-22', '2025-01-22');

select * from tempo_colheita;

delete from tempo_colheita 
where id_colheita = 4;

select max(data_fim_colheita) 
from tempo_colheita;

select tempo_esperado_colheita, data_fim_colheita 
from tempo_colheita;


-- criar tabela de estufa
create table estufas (
id_estufa int auto_increment primary key,
controle_gas_etileno boolean not null,
controle_luminosidade boolean not null,
tamanho_plantio float not null,
preco_venda_orquideas float not null

);
desc estufas;

-- inserindo dados
insert into estufas (controle_gas_etileno, controle_luminosidade, tamanho_plantio, preco_venda_orquideas)
values (1, 1, 100, 16.5); 

select * from estufas;

-- inerindo outros valores
insert into estufas values  
(default, 0, 1, 100, 22.3),
(default, 0,  1, 100, 18.6),
(default, 0,  0, 100, 20.5), 
(default, 1,  0, 100, 19.2),
(default, 1,  1, 100, 17.2),
(default, 0,  0, 100, 12.6),
(default, 1,  0, 100, 24.7);

 select * from estufas;
 
 select * from estufas 
 where preco_venda_orquideas > 16.5;
 
 select * from estufas order by preco_venda_orquideas desc;
 
 select * from estufas 
 where preco_venda_orquideas like '%2';
        