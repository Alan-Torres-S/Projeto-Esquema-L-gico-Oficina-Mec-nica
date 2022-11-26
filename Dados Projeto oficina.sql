#Inserção de dados

use Oficina;

desc cliente;
insert into cliente (nome_completo, CPF, endereco, CNPJ, razao_social, tipo_de_cliente)
		values('Maria Marta Silva', 12345678912,'rua silva de prata 9, Carangola - São Paulo', null, null,'Pessoa Física'),
				('Matheus Oliveira Pimentel', 98765432112,'rua alameda 289, Centro - São Paulo', null, null,'Pessoa Física'),
                ('Ricardo Freitas Silva', 45678912389,'av alameda vinha 1009, Centro - São Paulo', null, null,'Pessoa Física'),
                ('Julia Souza França', 78912345687,'rua laranjeiras 861, Centro - Fortaleza', null, null,'Pessoa Física'),
                ('Roberta Lima Assis', 98745634521,'av koller 19, Centro - Fortaleza', null, null,'Pessoa Física'),
                ('Joana Bezerra Linda', 12378912367,'rua das almecias 56, Uriu - São Paulo', null, null,'Pessoa Física'),
                ('Maria Assis Belizardo', 75378912367,'av Norte 159, Fátima - São Paulo', null, null,'Pessoa Física'),
                ('Marco Junto Feliz', 12315912367,'av bezerra de menezes 84, Gerardo - São Paulo', null, null,'Pessoa Física'),
                ('Jorge Baichito Tevez', 75378995167,'av argentina 34, Fátima- Fortaleza', null, null,'Pessoa Física'),
                ('Ichigo Torres Kurosaki', 45678912367,'av japão 15, Mucuripe - Fortaleza', null, null,'Pessoa Física'),
                ('Tralfagar D Law', 12852951367,'rua oeste 79, Pirambu - Fortaleza', null, null,'Pessoa Física'),
                ('Monkey D Luffy', 15365812367,'rua leste 45, Pirambu - Fortaleza', null, null,'Pessoa Física'),
                ('Yusuki Y Urameshi', 17854122367,'rua central 65, Iracema- Fortaleza', null, null,'Pessoa Física'),
                (null, null,'rua dos Torres 28, Centro - Fortaleza', 13456789000123, 'Locadora Mingau','Pessoa Física'),
                (null, null,'av Erasmo Carlos 81, Bossa - Fortaleza', 89456789000123, 'Lili Rações','Pessoa Jurídica'),
                (null, null,'av Gal Costa 74, Jóquei - Fortaleza', 12419389000121, 'Max Segurança','Pessoa Jurídica'),
                (null, null,'rua Boldrin 79, Parangaba - São Paulo', 56345678000156, 'Doces Caramelo','Pessoa Jurídica'),
                (null, null,'rua oeste 90, Tokio - São Paulo', 12076789000147, 'Sony & Mery Comércio','Pessoa Jurídica'),
                (null, null,'rua seretei 300, Uriu - Fortaleza', 43456789000165, 'Bankai Serviços','Pessoa Jurídica'),
                (null, null,'rua cidade leste 58, Centro - São Paulo', 13429689000137, 'Anya Pesquisas','Pessoa Jurídica')
;

select * from cliente;

desc pagamento_com_cartao;
insert into pagamento_com_cartao (nome_completo_titular, numero_cartao, bandeira_cartao, data_validade, CPF_CNPJ_titular)
		values ('Maria Marta Silva', 456789454569, 'VISA', 0423, 12345678912),
				('Matheus Oliveira Pimentel', 458678941236, 'ELO', 0523, 98765432112),
                ('Ricardo Freitas Silva', 325698741479, 'MASTERCARD', 0724, 45678912389),
                ('Julia Souza França', 789459878512, 'HIPERCARD', 0425, 78912345687),
                ('Roberta Lima Assis', 183879465698, 'VISA', 0923, 98745634521),
                ('Joana Bezerra Linda', 158614589567, 'HIPERCARD', 0626, 12378912367),
                ('Locadora Mingau', 158635699854,'AMEX', 0528, 345678900012),
                ('Lili Rações', 459878986545, 'ELO', 0327, 289456789123);

select * from pagamento_com_cartao;

insert into veiculos(idCliente_veiculos, chassi, placa, marca, modelo, ano_de_fabricação)
		values (1, '98ba1234567891016', 'ocm4865', 'Chevrolet', 'Onix', 2021),
				(2, '78ba1234567891016', 'see4815', 'Chevrolet', 'Prisma', 2021),
                (3, '68ba1234567891016', 'odm4158', 'Chevrolet', 'Joy Black', 2021),
                (4, '58ba1234567891016', 'slj4858', 'Chevrolet', 'Cruze', 2021),
                (5, '68ba1234567855016', 'sda1858', 'Chevrolet', 'Blazer', 2021),
                (6, '98ba1234567894416', 'awe1238', 'Chevrolet', 'Onix', 2020),
                (7, '98ba1234567812152', 'wda1258', 'Chevrolet', 'Tracker', 2020),
                (8, '98ba1234567891216', 'efv1582', 'Wolksvagen', 'Fox', 2020),
                (9, '98ba1234567891016', 'fge8596', 'Wolksvagen', 'Virtus', 2020),
                (10, '98ba1234567891268', 'fgr8525', 'Wolksvagen', 'CrossFox', 2020),
                (11, '98ba1234512191016', 'err4555', 'Wolksvagen', 'Voyage', 2019),
                (12, '98ba1234567896589', 'tyt1235', 'Fiat', 'Palio', 2019),
                (13, '98ba1234567891859', 'rhy8596', 'Fiat', 'Strada', 2019),
                (14, '98ba1234567897289', 'qax7896', 'Fiat', 'Argo', 2019),
                (15, '98ba1234567891285', 'fgt8596', 'Fiat', 'Cronos', 2019),
                (16, '98ba1234567891058', 'asd1539', 'Fiat', 'Uno', 2018),
                (17, '98ba1234567879517', 'wok9685', 'Hyundai', 'HB20', 2017),
                (18, '98ba1234567891216', 'asr8521', 'Chevrolet', 'Onix', 2017),
                (19, '98ba1234567819533', 'qwe8295', 'Chevrolet', 'Onix', 2016),
                (20, '98ba1234536841016', 'ode8557', 'Chevrolet', 'Prisma', 2015),
                (13, '98ba1234567161582', 'okd1589', 'Chevrolet', 'S10', 2015),
                (13, '98ba1234567893168', 'rtf7829', 'Chevrolet', 'Onix', 2014),
                (12, '98ba1234567898526', 'dgr7896', 'Fiat', 'Argo', 2014),
                (20, '98ba1234567893695', 'bhd1809', 'Fiat', 'Strada', 2013),
                (14, '98ba1234567894868', 'uis1859', 'Chevrolet', 'Prisma', 2013)
;

select * from veiculos;

insert into equipe (especialidade_equipe, sede_equipe)
		values ('Mecânica', 'CE'),
				('Elétrica', 'CE'),
                ('Ar Condicionado', 'CE'),
				('Mecânica', 'SP'),
				('Elétrica', 'SP'),
                ('Ar Condicionado', 'SP')
;

select * from equipe;

insert into mecanicos (especialidade_mecanicos, nome, estado_sede)
		values (1, 'João Roberto', 'CE'),
				(1, 'Roberta Macedo', 'CE'),
                (2, 'Ricardo Holanda', 'CE'),
                (2, 'Marta Lúcia', 'CE'),
                (3, 'João Miguel', 'CE'),
                (3, 'Cristina Rocha', 'CE'),
                (4, 'Paulo Castelo', 'SP'),
                (4, 'Joana Guimarães', 'SP'),
                (5, 'Carlos Eduardo', 'SP'),
                (5, 'Vilma de Assis', 'SP'),
                (6, 'Cícero Ramos', 'SP'),
                (6, 'Amanda Gomes', 'SP')
;

select * from mecanicos;

insert into ordem_de_servico (idOS_veiculos, idOS_equipe, tipo_de_servico, status_os, valor_os, data_de_emissao, data_para_conclusao)
		values (1, 4, 'Revisão Periódica', 'Autorizada', 180, '2022-12-01', '2022-12-05'),
				(2, 4, 'Revisão Periódica', 'Autorizada', 270, '2022-12-02','2022-12-06'),
                (3, 5, 'Revisão Periódica', 'Autorizada', 240, '2022-12-03','2022-12-07'),
				(4, 1, 'Revisão Periódica', 'Autorizada', 210, '2022-12-03','2022-12-09'), 
                (5, 1, 'Revisão Periódica', 'Não autorizada', 180, '2022-12-05', '2022-12-09'),
				(5, 5, 'Conserto', 'Não autorizada', 270, '2022-12-06', '2022-12-10'), 
                (4, 2, 'Conserto', 'Não autorizada', 200, '2022-12-07', '2022-12-12'),
				(8, 2, 'Conserto', 'Não autorizada', 340, '2022-12-07', '2022-12-12'), 
                (9, 3, 'Conserto', 'Autorizada', 270, '2022-12-09', '2022-12-13'),
				(10, 3, 'Conserto', 'Autorizada', 200, '2022-12-10', '2022-12-14'), 
                (11, 1, 'Revisão Periódica', 'Autorizada', 580, '2022-12-10', '2022-12-15'),
				(12, 1, 'Revisão Periódica', 'Autorizada', 370, '2022-12-12', '2022-12-16'), 
                (13, 2, 'Revisão Periódica', 'Não autorizada', 580, '2022-12-13', '2022-12-17'),
				(14, 2, 'Revisão Periódica', 'Não autorizada', 270, '2022-12-14', '2022-12-19'), 
                (15, 6, 'Revisão Periódica', 'Não autorizada', 270, '2022-12-15', '2022-12-19'),
				(16, 6, 'Conserto', 'Não autorizada', 190, '2022-12-16', '2022-12-19'), 
                (17, 3, 'Conserto', 'Autorizada', 280, '2022-12-17', '2022-12-20'),
				(18, 1, 'Conserto', 'Autorizada', 250, '2022-12-17', '2022-12-21'), 
                (19, 1, 'Conserto', 'Autorizada', 220, '2022-12-19', '2022-12-22'),
				(20, 2, 'Conserto', 'Autorizada', 250, '2022-12-20', '2022-12-23'), 
				(21, 3, 'Revisão Periódica', 'Autorizada', 270, '2022-12-21', '2022-12-26'),
				(22, 4, 'Revisão Periódica', 'Autorizada', 240, '2022-12-22', '2022-12-26'),
                (23, 2, 'Conserto', 'Autorizada', 210, '2022-12-23', '2022-12-26'),
                (24, 3, 'Conserto', 'Autorizada', 190, '2022-12-20', '2022-12-23'),
				(24, 5,'Conserto', 'Autorizada', 250, '2022-12-23', '2022-12-27'),
                (25, 1, 'Conserto', 'Autorizada', 210, '2022-12-23', '2022-12-26'),
                (25, 3, 'Conserto', 'Autorizada', 250, '2022-12-23', '2022-12-26')
;

select * from ordem_de_servico;

insert into pecas_e_servicos (idPecas_OS, idServicos_OS, servico_solicitado_OS, pecas_solicitadas_OS)
		values  (1, 1, 1, 1),
				(2, 2, 1, 2),
                (3, 3, 1, 7),
				(4, 4, 1, 3), 
                (5, 5, 1, 1),
				(8, 8, 2, 7), 
                (9, 9, 2, 4),
				(10, 10, 2, 6), 
                (11, 11, 3, 10),
				(12, 12, 3, 11), 
                (13, 13, 3, 8),
				(14, 14, 3, 6), 
                (15, 15, 3, 8),
				(16, 16, 3, 9), 
                (17, 17, 3, 10),
				(18, 18, 4, 12), 
                (19, 19, 4, 7),
				(20, 20, 4, 3), 
                (21, 21, 4, 1),
				(22, 22, 4, 9), 
				(23, 23, 3, 10),
				(24, 24, 3, 1),
                (25, 25, 4, 7),
                (26, 26, 4, 12),
				(27, 27, 4, 9)
;
    
select * from pecas_e_servicos;

insert into servicos (descricao_servico, valor_servicos)
		values ('1 revisão', 90.00),
				('2 revisão', 120.00),
				('demais revisões', 150.00),
                ('conserto', 130.00 )
;

select * from servicos;

insert into pecas (descricao_pecas, valor_pecas)
		values ('suspensão', 90.00),                                                   
				('bico de injeção', 180.00),
				('óleo para motor', 120.00),
                ('junta monocinética', 80.00 ),
                ('pastilha de freios', 110.00),
				('correia dentada', 220.00),
				('velas de ignição', 150.00),
                ('catalisador', 430.00 ),
                ('quadro elétrico', 120.00),
				('evaporadores', 120.00),
				('filtro secadores', 50.00),
                ('válvulas', 60.00 )
;

select * from servicos;

insert into estoque (idEstoque, estoque_quantidade)
		values (1, 9),                                                   
				(2, 18),
				(3, 12),
                (4, 8 ),
                (5, 11),
				(6, 22),
				(7, 15),
                (8, 8 ),
                (9, 12),
				(10, 12),
				(11, 5),
                (12, 6 )
;

insert into os_autorizada (idOS_autorizada, OS_autorizada_equipe, status_OS_autorizada, data_OS_finalizada)
		values (1, 4, 'Concluida', '2022-12-04'),
				(2, 4, 'Concluida', '2022-12-05'),
                (3, 5, 'Concluida', '2022-12-06'),
                (4, 1, 'Concluida', '2022-12-06'),
                (9, 3, 'Em andamento', null),
                (10, 3, 'Em andamento', null),
                (11, 1, 'Em andamento', null),
				(12, 1, 'Em andamento', null),
                (17, 3, 'Concluida', '2022-12-22'),
                (18, 1, 'Concluida', '2022-12-22'),
                (19, 1, 'Em andamento', null),
                (20, 2, 'Em andamento', null),
				(21, 3, 'Em andamento', null),
                (22, 4, 'A iniciar', null),
                (23, 2, 'A iniciar', null),
                (24, 3, 'A iniciar', null),
                (25, 5, 'A iniciar', null),
                (26, 1, 'A iniciar', null),
                (27, 3, 'A iniciar', null)
;