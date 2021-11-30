create database ex6

use ex6

create table motorista (
codigo int not null primary key,
nome varchar(30) not null,
data_nascimento date not null,
naturalidade varchar(20) not null
)

create table onibus (
placa varchar(8) not null primary key,
marca varchar(20) not null,
ano varchar(4) not null,
descricao varchar(60) not null
)

create table viagem (
codigo int not null primary key,
onibus varchar(8) not null,
motorista int not null,
hora_saida int not null,
hora_entrada int not null,
destino varchar(40) not null,
foreign key (onibus) references onibus (placa),
foreign key (motorista) references motorista (codigo)
)