# Queries

use Oficina;

# Recuperar a relação de todos os clientes e a quantidade de veículos que cada um possui 
select c.nome_completo, c.razao_social, v.marca, v.modelo, v.ano_de_fabricação, count(*) as Qtde_veiculos from cliente c
		inner join veiculos v on c.idCliente = v.idCliente_Veiculos
        group by v.idCliente_Veiculos
        order by Qtde_veiculos desc, nome_completo asc, razao_social asc;
        
# Relação de peças e estoque;
select p.idPecas, p.descricao_pecas, e.estoque_quantidade from pecas p
		inner join estoque e on idPecas = idEstoque
        order by p.idPecas;

# Relação de clientes pessoa física com ordem de servicos que ainda não foram concluidas
select tipo_de_cliente, nome_completo, marca, modelo, idOS, status_OS_autorizada, data_de_emissao, data_para_conclusao from cliente c
		inner join veiculos on idcliente_veiculos = idCliente
        inner join ordem_de_servico on idOS_veiculos = idVeiculos
        inner join os_autorizada on idOS_autorizada = idOS
        having tipo_de_cliente != 'Pessoa Jurídica' and status_OS_autorizada != 'Concluida'
        order by idOS;
        
# Relação de clientes pessoa jurídica com ordem de servicos concluidas
select tipo_de_cliente, razao_social, marca, modelo, idOS, status_OS_autorizada, data_para_conclusao, data_OS_finalizada from cliente c
		inner join veiculos on idcliente_veiculos = idCliente
        inner join ordem_de_servico on idOS_veiculos = idVeiculos
        inner join os_autorizada on idOS_autorizada = idOS
        having status_OS_autorizada = 'Concluida' and tipo_de_cliente = 'Pessoa Jurídica'
        order by idOS;
        
# Relação de mecânicos trabalham no Ceará e suas especialidades       
select idCodigo as Funcional, nome as Nome, especialidade_equipe as Especialidade, estado_sede as Sede 
		from mecanicos, equipe 
        where (estado_sede = 'CE') and (especialidade_mecanicos = idEquipe);

# Detalhamento de peças e serviços cobrados em cada Ordem de Serviço
select tipo_de_cliente, nome_completo, razao_social, idOS, descricao_pecas, descricao_servico, valor_pecas, valor_servicos from cliente c
		inner join veiculos on idcliente_veiculos = idCliente
        inner join ordem_de_servico on idOS_veiculos = idVeiculos
        inner join pecas_e_servicos on idPecas_OS = idOS
        inner join pecas on idPecas = pecas_solicitadas_OS
        inner join servicos on idServicos = servico_solicitado_OS
        order by idOS;