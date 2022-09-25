use oficina_mecanica;

desc cliente;
-- add table cliente 
insert into cliente (Nome, Sobrenome, CPF, endereço)
	values ('Maria','Nucc','12345678921','rua fulano, 10, itaqua'),
			('luiz','Alves','62344478912','rua beotrano, 20, itaqua'),
            ('Fabio','Nucc','22343378910','rua Cicrano, 385,e itaqua'),
            ('Carol','Silva','12700678909','rua Cicrano, 384, itaqua'),
            ('Felipe','Alves','33545678901','rua Seila, 80, itaqua'),
            ('Rosana','Pereira','82345558921','rua Seila, 90, itaqua'),
            ('Manoel','Filho','52333678801','rua Fulano de tal,9, itaqua'),
            ('Nilza','Arraia','63345578912','rua beotrano, 25, itaqua'); 
            

desc veiculo;
-- add tabela veiculos
insert into veiculo (idVeCliente, tipo, Marca, Modelo, cor, placa)
				values (1,'Hatc', 'Hyunday', 'HB20', 'branco', 'qwe2q23'),
						(2,'Sedam', 'Hyunday', 'HB20', 'preto', 'ase1q23'),
                        (3,'Suv', 'Hyunday', 'Creta', 'cinza', 'aab3a21'),
                        (5,'Hatc',' Chevrolet', 'onix', 'preto', 'abc3a21'),
                        (6,'Sedam',' Chevrolet', 'cruze', 'azul', 'abc3d22'),
                        (7,'Suv',' Chevrolet', 'Traker', 'cinza', 'zxc5a21'),
                        (8,'Suv',' Citroen', 'c4', 'branco', 'zse8a21');
                        

 desc peça;
  -- add table peça
 insert into peça (descrição_da_peça, valor_da_peça)
				values( 'diferencial', 1550.50),
						( 'relaçao', 1020.30),
                        ( 'embreagem', 1210.00),
                        ( 'suspenção', 840.10),
                        ( 'cabeçote', 2500.00),
                        ( 'vela', 150.00);
                        
desc mãodeobra;
  -- add table peça
 insert into mãodeobra (descrição_mãoDeObra, valor_mãoDeObra)
				values( 'troca do diferencial', 550.00),
						( 'troca da relaçao', 320.00),
                        ( 'troca da embreagem', 310.00),
                        ( 'troca da suspenção', 240.00),
                        ( 'reoca do cabeçote', 500.00),
                        ( 'troca da vela', 70.00);
                        
desc ordemdeserviço;
-- add table ordemdeserviço
 -- VALOR JÁ ENSERIDO PARATESTE values(1,6,6,'2022-01-15','2022-01-15','Finalizado');
insert into ordemdeserviço (idOdsVeiculo, idOdsPeça, idOdsMãoDeObra, dataInicio, dataConclusão, statusServiço)
						values(2,5,5,'2022-01-15','2022-01-17','Finalizado'),
								(2,4,4,'2022-03-15','2022-03-15','Finalizado'),
                                (2,3,3,'2022-06-15','2022-06-15','Finalizado'),
                                (2,5,5,'2022-08-15','2022-08-17','Finalizado'),
                                (2,6,6,'2022-10-15',null,'Aguardando inicio'),
                                (3,5,5,'2022-07-15','2022-01-16','Finalizado'),
                                (3,5,5,'2022-07-15','2022-01-16','Finalizado'),
                                (4,5,5,'2022-07-15','2022-01-15','Finalizado'),
                                (4,5,5,'2022-10-15',null,'Em serviço'),
                                (5,5,5,'2022-09-01','2022-09-02','Finalizado'),
								(5,5,5,'2022-10-02','2022-10-03','Finalizado'),
                                (6,6,6,'2022-08-15','2022-01-17','Finalizado'),
                                (6,4,4,'2022-10-15',null,'Aguardando inicio'),
                                (7,3,3,'2022-10-15',null,'Em serviço'),
                                (7,2,2,'2022-09-30','2022-10-01','Finalizado');
                                
                                
desc mecanicos;

-- add table mecanicos

insert into mecanicos (especialidade, Nome, Sobrenome, CPF, endereço)
					values('geral','Luizinho','silva','78945635721','rua beotrano, 25, itaqua'),
							('suspenção','Carlinhos','Alves','15935745698','rua beotrano, 30, itaqua'),
                            ('motor','Arlindo','Alves','65498732198','rua fulano de tal, 30, itaqua'),
                            ('embreagem','Gilmar','Santos','65338732198','rua fulano de tal, 35, itaqua');
                            

desc equipemecanicos;

select* from mecanicos;

-- add table mecanicos

insert into equipemecanicos ( idEquipemecan, idEqpmecanicos, idEqpOrdemDeServiço)              
                        values( 1,2,1),
								( 2,4,1),
                                ( 3,3,1),
                                ( 4,1,2),
                                ( 5,2,2),
                                ( 6,3,3),
                                ( 7,2,3),
                                ( 8,1,4),
                                ( 9,3,5),
                                ( 10,1,5),
                                ( 11,2,6),
                                ( 12,1,6),
                                ( 13,1,7),
                                ( 14,3,7);
                        