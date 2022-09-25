-- drop table oficina_mecanica;
create database oficina_mecanica;

use oficina_mecanica;

create table cliente (
idCliente int auto_increment primary key,
Nome varchar(20),
Sobrenome varchar(30),
CPF char(11) unique,
endereço varchar(50)
);

create table veiculo (
idVeiculo int auto_increment primary key,
idVeCliente int,
tipo enum('Hatc','Sedam','Suv') default 'Hatc',
Marca varchar(20),
Modelo varchar(20),
cor varchar(10),
placa char(7),
constraint fk_cliente_veiculo foreign key (idVeCliente) references cliente (idCliente)
);

create table peça (
idPeça int auto_increment primary key,
descrição_da_peça varchar(250),
valor_da_peça float not null
);

create table mãoDeObra (
idMãoDeObra int auto_increment primary key,
descrição_mãoDeObra varchar(250),
valor_mãoDeObra float not null
);

create table ordemDeServiço (
idOrdemDeServiço int auto_increment primary key,
idOdsVeiculo int,
idOdsPeça int,
idOdsMãoDeObra int,
dataInicio date,
dataConclusão date,
 statusServiço enum('Aguardando inicio', 'Em serviço', 'Finalizado') default'Aguardando inicio',
 constraint fk_veiculo_odserviço foreign key (idOdsVeiculo) references veiculo (idVeiculo),
 constraint fk_peça_odserviço foreign key (idOdsPeça) references peça (idPeça),
 constraint fk_mãoDeObra_odserviço foreign key (idOdsMãoDeObra) references mãoDeObra (idMãoDeObra)
);


create table mecanicos (
idMecanicos int auto_increment primary key,
especialidade varchar(30),
Nome varchar(20),
Sobrenome varchar(30),
CPF char(11) unique,
endereço varchar(50)
);

create table equipeMecanicos (
idEquipemecan int primary key,
idEqpmecanicos int,
idEqpOrdemDeServiço int,
constraint fk_mecanicos_equipe foreign key (idEqpmecanicos) references mecanicos (idMecanicos),
constraint fk_odserviço_equipe foreign key (idEqpOrdemDeServiço) references ordemDeServiço (idOrdemDeServiço)
);

show tables;


