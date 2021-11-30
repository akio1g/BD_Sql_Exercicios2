create database ex5

use ex5

create table Fornecedores (
codigo int not null primary key,
nome varchar(20) not null,
atividade varchar(80) not null,
telefone varchar(11) not null
)

create table Produto (
codigo int not null primary key,
nome varchar(40) not null,
valor_unitario float not null,
quantidade_estoque int not null,
descricao varchar(50) not null,
codigo_fornecedor int not null,
foreign key (codigo_fornecedor) references Fornecedores (codigo)
)

create table Cliente (
codigo int not null primary key,
nome varchar(40) not null,
logradouro varchar(100) not null,
numero int not null,
telefone varchar(11) not null,
data_nasc date not null
)

create table Pedido (
codigo int not null primary key,
codigo_cliente int not null,
codigo_produto int not null,
quantidade int not null,
previsao_entrega date not null,
foreign key (codigo_cliente) references cliente (codigo),
foreign key (codigo_produto) references produto (codigo)
)
