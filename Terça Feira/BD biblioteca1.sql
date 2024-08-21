CREATE DATABASE biblioteca;
USE biblioteca;

-- CRIANDO ENTIDADE USUARIO
CREATE TABLE usuario(
id_usuario INT NOT NULL,
CPF VARCHAR(11) NOT NULL,
nome VARCHAR(50) NOT NULL,
sexo CHAR(1) NOT NULL,
endereco VARCHAR(70) NOT NULL,
telfone VARCHAR(20) NOT NULL,
idade INT NOT NULL,
PRIMARY KEY (id_usuario));

-- CRIANDO ENTIADE TB_FUNCIONARIO
CREATE TABLE tb_funcionario(
id_funcionario INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
sexo CHAR(1) NOT NULL,
CPF VARCHAR(11) NOT NULL,
endereco VARCHAR(70) NOT NULL, 
idade INT NOT NULL,
PRIMARY KEY (id_funcionario));

-- CRIANDO ENTIDADE TB_LIVRO
CREATE TABLE tb_livro(
id_livro INT AUTO_INCREMENT NOT NULL,
nome_livro VARCHAR(30) NOT NULL,
autor VARCHAR(50) NOT NULL,
editora VARCHAR(50) NOT NULL, 
preco DECIMAL (10,2) NOT NULL,
PRIMARY KEY (id_livro));

-- CRIANDO ENTIDADE TB_EMPRESTIMO 
CREATE TABLE tb_emprestimo(
id_emprestimo INT AUTO_INCREMENT NOT NULL,
livro_emprestado INT NOT NULL,
data_emprestimo DATE NOT NULL,
membro INT NOT NULL, 
PRIMARY KEY (id_emprestimo),
FOREIGN KEY (livro_emprestado) REFERENCES tb_livro (id_livro),
FOREIGN KEY (membro) REFERENCES usuario (id_usuario));


