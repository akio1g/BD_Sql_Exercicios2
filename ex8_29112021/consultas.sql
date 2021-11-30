SELECT Comp.valor from Compra as Comp
inner join Cliente as c
on c.codigo = Comp.cod_cliente
where c.nome = 'Luis Paulo'

SELECT Comp.valor from Compra as Comp
inner join Cliente as c
on c.codigo = Comp.cod_cliente
where c.nome = 'Marcos Henrique'

SELECT cl.endereco, cl.telefone from cliente as cl
inner join compra as c
on c.cod_cliente = cl.codigo
where c.nota_fiscal = 4567    

SELECT merc.valor from mercadoria as merc
inner join tipos_mercadoria as tm
on tm.codigo = merc.tipo
where tm.nome = 'Pães'

SELECT cor.nome from corredores as cor
inner join mercadoria as m
on m.corredor = cor.codigo
where m.nome = 'Lasanha'

SELECT cor.nome from corredores as cor
inner join tipo_mercadoria as tm
on tm.codigo = cor.tipo
where tm.nome = 'clorados'
