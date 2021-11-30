insert into Fornecedores values (1001,'Estrela','Brinquedo','41525898'),
								(1002,'Lacta','Chocolate','42698596'),
								(1003,'Asus','Informática','52014596'),
								(1004,'Tramontina','Utensílios Domésticos','50563985'),
								(1005,'Grow','Brinquedos','47896325'),
								(1006,'Mattel','Bonecos','59865898')




insert into produto values (1,'Banco Imobiliario',64.00,15,'Versão Super Luxo',1001),
						   (2,'Puzzle 5000 peças',50.00,5,'Mapas Mundo',1005),
						   (3,'Faqueiro',350.00,0,'120 peças',1004),
						   (4,'Jogo para churrasco',75.00,3,'7 peças',1004),
						   (5,'Tablet',750.00,29,'Tablet',1003),
						   (6,'Detetive',49.00,0,'Nova Versão do Jogo', 1001),
						   (7,'Chocolate com Paçoquinha',6.00,0,'Barra',1002),
						   (8, 'Galak',5.00,65,'Barra',1002)

insert into cliente values (33601,'Maria Clara','R. 1° de Abril',870, '96325874','2000-08-15'),
						   (33602,'Alberto Souza', 'R. XV de Novembro', 987, '95873625','1985-02-02'),
						   (33603,'Sona Silva', 'R. Voluntários da Pátria',1151,'75418596','1957-08-23'),
						   (33604,'José Sobrinho','Av. Paulista', 250, '85236547', '1986-12-09'),
						   (33605,'Carlos Camargo', 'Av. Tiquatira',9652, '75896325','1971-03-25')

insert into pedido values (99001,33601,1,1,'2012-06-07'),
						  (99001,33601,2,1,'2012-06-07'),
						  (99001,33601,8,3,'2012-06-07'),
						  (99002,33602,2,1,'2012-06-09'),
						  (99002,33602,4,3,'2012-06-09'),
						  (99003,33605,5,1,'2012-06-15')

alter table primary