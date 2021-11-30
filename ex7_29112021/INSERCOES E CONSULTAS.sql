use ex7

insert into clientes values ('29531844','34519878040','Luiz André','R. Astorga',500),
							('13514996x','84984285630','Maria Luiza','R. Piauí',174),
							('121985541','23354997310','Ana Barbara','Av. Jaceguai',1141),
							('23987746x','43587669920','Marcos Alberto','R. Quinze',22)

insert into pedido values (1001,754,'2018-04-01','121985541'),
						  (1002,350,'2018-04-02','121985541'),
						  (1003,30,'2018-04-02','29531844'),
						  (1004,1500,'2018-04-03','13514996x')

insert into mercadoria values (10,'Mouse',24,30,1),
							  (11,'Teclado',50,20,1),
							  (12,'Cx. De Som',30,8,2),
							  (13,'Monitor 17',350,4,3),
							  (14,'Notebook',1500,7,4)

insert into fornecedor values (1,'Clone','Av. Nações Unidas, 12000',12000,'BR',55,'1141487000',null,'São Paulo',null,'R$'),
							  (2,'Logitech','28th Street, 100', 100,'USA',1,'2127695100',null,null,'Avião','US$'),
							  (3,'LG','Rod. Castello Branco',null,'BR',55,'800664400','4159978100001','Sorocaba',null,'R$'),
							  (4,'PcChips','Ponte da Amizade',null,'PY',595,NULL,NULL,NULL,'navio','US$')


select CONCAT(SUBSTRING(cpf,1,3),'.',SUBSTRING(cpf,4,3),'.',SUBSTRING(cpf,7,3),'-',SUBSTRING(cpf,10,2)) as cpf from clientes 

select CONCAT(SUBSTRING(rg,1,8),'-',SUBSTRING(rg,9,1)) as rg from clientes

select *,valor - (valor*0.10) as valor
from pedido
where nota_fiscal = 1003

select *,valor - (valor*0.05) as valor
from pedido
where valor > 700

SELECT p.data_pedido, p.valor from pedido as p
inner join clientes as c
on c.rg = p.rg_cliente
where nome like 'Luiz%'

SELECT c.cpf, c.nome, CONCAT(c.rua,',',c.numero) as endereço from clientes as c
inner join pedido as p
on p.rg_cliente = c.rg
where p.nota_fiscal = 1004

Select f.pais, f.transporte from fornecedor as f
inner join mercadoria as m
on m.cod_fornecedor = f.codigo
where m.descricao = 'Cx. de Som'

SELECT f.nome, m.descricao, m.qtd from Fornecedor as f
inner join mercadoria as m
on f.codigo = m.cod_fornecedor
where f.nome = 'Clone'

SELECT CONCAT(f.rua,',',f.numero) as endereço, CONCAT('(',SUBSTRING(f.telefone,1,2),')',SUBSTRING(f.telefone,3,4),'-',SUBSTRING(f.telefone,7,4)) from fornecedor as f


SELECT f.moeda from fornecedor as f
inner join mercadoria as m
on m.cod_fornecedor = f.codigo
where m.descricao = 'notebook'

SELECT DATEDIFF(day,p.data_pedido,'2019-03-02') as 'dias_do_pedido', DATEDIFF(MONTH,p.data_pedido,'2019-03-02') from pedido as p 

