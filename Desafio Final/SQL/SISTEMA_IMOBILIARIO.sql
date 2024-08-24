CREATE DATABASE sistema_imobiliario;
USE sistema_imobiliario;

-- CRIANDO ENTIDADE IMÓVEIS
CREATE TABLE tb_imoveis(
id_imovel INT AUTO_INCREMENT NOT NULL,
endereco VARCHAR(70) NOT NULL,
tipo VARCHAR(20) NOT NULL,
statu CHAR(1) NOT NULL,
num_quartos INT NOT NULL,
num_banheiros INT NOT NULL,
PRIMARY KEY (id_imovel)
);

-- CRIANDO ENTIDADE LOCATÁRIOS
CREATE TABLE tb_locatarios(
id_locatario INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(70) NOT NULL,
CPF VARCHAR(20) NOT NULL,
data_nascimento DATE NOT NULL,
telefone VARCHAR(20) NOT NULL,
emaiL VARCHAR(70) NOT NULL,
sexo CHAR(1) NOT NULL,
PRIMARY KEY(id_locatario)
);

-- CRIANDO ENTIDADE PROPRIETÁRIOS
CREATE TABLE tb_proprietarios(
id_propriet INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(70) NOT NULL,
CPF VARCHAR(20) NOT NULL,
data_nascimento DATE NOT NULL,
endereco VARCHAR(70) NOT NULL,
telefone VARCHAR(20) NOT NULL,
email VARCHAR(70) NOT NULL,
seu_imovel INT NOT NULL,
sexo CHAR(1) NOT NULL,
PRIMARY KEY(id_propriet),
FOREIGN KEY (seu_imovel) REFERENCES tb_imoveis (id_imovel)
);

-- CRIANDO ENTIDADE AGENTE IMOBILIÁRIO
CREATE TABLE tb_agentes_imobiliarios(
id_agente INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(70) NOT NULL,
CPF VARCHAR(20) NOT NULL,
endereco VARCHAR(70) NOT NULL,
telefone VARCHAR(20) NOT NULL,
sexo CHAR(1) NOT NULL,
num_vendas INT NOT NULL,
PRIMARY KEY (id_agente)
);

-- CRIANDO ENTIDADE VALORES DOS IMÓVEIS
CREATE TABLE tb_valor_imoveis(
id_avaliacao INT AUTO_INCREMENT NOT NULL,
imovel_avaliado INT NOT NULL,
preco DECIMAL(10,2) NOT NULL,
data_avaliacao DATE NOT NULL,
avaliador INT NOT NULL,
PRIMARY KEY (id_avaliacao),
FOREIGN KEY (imovel_avaliado) REFERENCES tb_imoveis (id_imovel),
FOREIGN KEY (avaliador) REFERENCES tb_agentes_imobiliarios (id_agente)
);

-- CRIANDO ENTIDADE HISTORICO DE LOCAÇÃO 
CREATE TABLE tb_historico_locacao(
id_historico INT AUTO_INCREMENT NOT NULL,
endereco_imovel VARCHAR(70) NOT NULL,
gerenciador INT NOT NULL,
data_inicio DATE NOT NULL,
data_fim DATE NOT NULL,
PRIMARY KEY (id_historico),
FOREIGN KEY (gerenciador) REFERENCES tb_agentes_imobiliarios (id_agente)
);

-- CRIANDO ENTIDADE AGENDAMENTO 
CREATE TABLE tb_agendamento(
id_agendamento INT AUTO_INCREMENT NOT NULL,
imovel_agendado INT NOT NULL,
data_agendamento DATE NOT NULL,
tipo_agendamento VARCHAR(20) NOT NULL,
agente INT NOT NULL,
PRIMARY KEY (id_agendamento),
FOREIGN KEY (imovel_agendado) REFERENCES tb_imoveis (id_imovel),
FOREIGN KEY (agente) REFERENCES tb_agentes_imobiliarios (id_agente)
);

-- CRIANDO ENTIDADE FEEDBACK CLIENTES
CREATE TABLE tb_feedback(
codigo INT NOT NULL,
cliente INT NOT NULL,
comentario VARCHAR(200) NOT NULL, 
voltaria_negociar BOOLEAN NOT NULL
);
ALTER TABLE tb_feedback ADD PRIMARY KEY (codigo);