insert into motorista values (12341,'Julio Cesar','1978-04-18','São Paulo'),
							 (12342,'Mario Carmo','2002-07-29','Americana'),
							 (12343,'Lucio Castro','1969-12-01','Campinas'),
							 (12344,'André Figueiredo','1999-05-14','São Paulo'),
							 (12345,'Luiz Carlos','2001-01-09','São Paulo')


insert into onibus values ('adf0965','Mercedes','1999','Leito'),
						  ('bhg7654','Mercedes','2002','Sem Banheiro'),
						  ('dtr2093','Mercedes','2001','Ar Condicionado'),
						  ('gui7625','Volvo','2001','Ar Condicionado')

insert into viagem values (101,'adf0965',12343,'10:00:00','12:00:00','Campinas'),
						  (102,'gui7625',12341,'7:00:00','12:00:00','Araraquara'),
						  (103,'bhg7654',12345,'14:00:00','22:00:00','Rio de Janeiro'),
						  (104,'dtr2093',12344,'18:00:00','21:00:00','Sorocaba')


select CONVERT(char,hora_saida,108) as hora_saida,CONVERT(char,hora_entrada,108) as hora_entrada,destino from viagem

select m.nome from motorista as m
inner join viagem as v
on m.codigo = v.motorista
where destino = 'Sorocaba'

select o.descricao from onibus as o
inner join viagem as v
on o.placa = v.onibus
where destino = 'Rio de Janeiro'

select o.descricao, o.marca, o.ano from onibus as o
inner join viagem as v
on v.onibus = o.placa
inner join motorista as m
on m.codigo = v.motorista
where nome = 'Luiz Carlos'

select m.nome, DATEDIFF(year,m.data_nascimento,GETDATE()) as idade, m.naturalidade from motorista as m
where DATEDIFF(year,m.data_nascimento,GETDATE()) > 30

