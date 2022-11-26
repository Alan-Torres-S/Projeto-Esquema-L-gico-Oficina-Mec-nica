# Criação do esquema para o cenário de Oficina Mecânica

#drop database oficina;
create database oficina;
use oficina;

#Criando as tabelas

#Tabela cliente
create table cliente(
	idCliente int auto_increment primary key,
    tipo_de_cliente ENUM('Pessoa Física', 'Pessoa Jurídica'),
    CPF char(11),
    nome_completo varchar(45),
    CNPJ char(14),
    razao_social varchar(45),
	endereco varchar(100) not null
);

alter table cliente auto_increment=1;

# Tabela Pagamento com Cartao
create table pagamento_com_cartao(
	idPagamento_com_cartao int auto_increment primary key,
    nome_completo_titular varchar(60) not null,
    numero_cartao char(12) not null,
	bandeira_cartao ENUM('VISA','MASTERCARD','ELO','AMEX','HIPERCARD') not null,
    data_validade char(4),
    CPF_CNPJ_titular varchar(14)
);

# Tabela Veículos
create table veiculos(
	idVeiculos int primary key auto_increment,
    idCliente_veiculos int, 
    chassi char(17),
    placa char(7),
    marca varchar(15),
    modelo varchar(15),
    ano_de_fabricação char(4),
    constraint idCliente_veiculos foreign key (idCliente_veiculos) references cliente (idCliente)
);

# Tabela Ordem de Serviço
create table ordem_de_servico(
	idOS int auto_increment,
    idOS_veiculos int not null,
    idOS_equipe int not null,
    tipo_de_servico ENUM('Revisão Periódica', 'Conserto'),
    valor_os float,
    data_de_emissao date,
    data_para_conclusao date,
    status_os ENUM('Autorizada', 'Não autorizada'),
    primary key (idOs, idOS_veiculos, idOS_equipe),
    constraint fk_idOS_veiculos foreign key (idOS_veiculos) references veiculos (idVeiculos),
    constraint fk_idOS_equipe foreign key (idOS_equipe) references equipe (idEquipe)
);

# Tabela Equipe
create table equipe(
	idEquipe int auto_increment,
    especialidade_equipe ENUM('Mecânica', 'Elétrica', 'Ar Condicionado'),
    sede_equipe varchar(5),
    primary key (idEquipe)
);

# Tabela Mecânicos
create table mecanicos(
	idCodigo int auto_increment primary key,
    especialidade_mecanicos int,
    nome varchar(45),
    estado_sede varchar(45),
    constraint fk_especialidade_mecanicos foreign key (especialidade_mecanicos) references equipe (idEquipe)
);

# Tabela Serviços
create table servicos(
	idServicos int auto_increment primary key,
	descricao_servico enum('1 revisão', '2 revisão', 'demais revisões', 'conserto'),
    valor_servicos float
);

# Tabela Peças
create table pecas(
	idPecas int auto_increment primary key,
	descricao_pecas varchar(45),
    valor_pecas float
);

create table estoque(
	idEstoque int primary key,
	estoque_quantidade int,
    constraint fk_idEstoque foreign key (idEstoque) references pecas (idPecas)
);

# Tabela Formas de Pagamento
create table pagamentos(
	idPagamento int primary key,
    idPagamento_cartao int,
    tipo_pagamento enum('Boleto','Cartão','Pix','Transferência bancária'),
	constraint fk_idPagamento foreign key (idPagamento) references cliente (idCliente),
    constraint fk_idPagamento_cartao foreign key (idPagamento_cartao) references pagamento_com_cartao(idPagamento_com_cartao)
);

# Tabela Peças e Serviços para Ordem de Serviço
create table pecas_e_servicos(
	idPecas_OS int not null,
    idServicos_OS int not null,
    pecas_solicitadas_OS int not null,
    servico_solicitado_OS int not null,
    primary key (idPecas_OS, idServicos_OS),
    constraint fk_idPecas_OS foreign key (idPecas_OS) references ordem_de_servico(idOS),
    constraint fk_idServicos_OS foreign key (idServicos_OS) references ordem_de_servico(idOS),
    constraint fk_pecas_solicitadas_OS foreign key (pecas_solicitadas_OS) references pecas (idPecas),
    constraint fk_servico_solicitado_OS foreign key (servico_solicitado_OS) references servicos (idServicos)
);

# Tabela Ordem de Serviço Autorizada
create table os_autorizada(
	idOS_autorizada int not null,
    OS_autorizada_equipe int not null,
    status_OS_autorizada enum('A iniciar', 'Em andamento', 'Concluida'),
    data_OS_finalizada date,
    primary key (idOS_autorizada, OS_autorizada_equipe),
    constraint fk_idOS_autorizada foreign key (idOS_autorizada) references ordem_de_servico(idOS),
    constraint fk_OS_autorizada_equipe foreign key (OS_autorizada_equipe) references ordem_de_servico(idOS_equipe)
);

show tables;
desc estoque;