create database ex7
use ex7

create table clientes (
rg varchar(11) not null primary key,
cpf varchar(15) not null, 
nome varchar(50) not null,
rua varchar(50) not null,
numero int not null
)

create table pedido (
nota_fiscal int not null primary key,
valor int not null,
data_pedido date not null,
rg_cliente varchar(11) not null,
foreign key (rg_cliente) references clientes (rg)
)

create table fornecedor (
codigo int not null primary key,
nome varchar(20) not null,
rua varchar(100) not null,
numero int,
pais varchar(3) not null,
area int not null,
telefone varchar(20),
cnpj varchar(40),
cidade varchar(20),
transporte varchar(15),
moeda varchar(3) not null
)


create table mercadoria (
codigo int not null primary key,
descricao varchar(50) not null,
preco int not null,
qtd int not null,
cod_fornecedor int not null,
foreign key (cod_fornecedor) references fornecedor(codigo)
)
