SET SQL_SAFE_UPDATES = 0;

-- INSERT tabela usuario
INSERT INTO usuario (id_usuario, CPF, nome, sexo, endereco, telfone, idade) values (8821, '12345678910', 'luisa', 'F', 'Av. Buarque', '83988217447', 25);
INSERT INTO usuario (id_usuario, CPF, nome, sexo, endereco, telfone, idade) values (2503, '78965412309', 'vanessa', 'F', 'Av. Epitácio Pessoa', '8398167890', 26);
INSERT INTO usuario (id_usuario, CPF, nome, sexo, endereco, telfone, idade) values (0890, '09876543212', 'João', 'M', 'Av. Pombal', '8398762345', 28);
INSERT INTO usuario (id_usuario, CPF, nome, sexo, endereco, telfone, idade) values (2103, '45612398723', 'Gabriel', 'M', 'Av. Pombal', '8390873456', 30);
INSERT INTO usuario (id_usuario, CPF, nome, sexo, endereco, telfone, idade) values (6549, '14725836998', 'Ana', 'F', 'Av.Prof. Maria Sales', '8399657412',17);

-- INSERT tabela funcinário 
INSERT INTO tb_funcionario ( nome, sexo, CPF, endereco, idade) values ( 'Anderson', 'M', '11122233312', 'Av. Pres. Eitácio Pessoa', 32);
INSERT INTO tb_funcionario (nome, sexo, CPF, endereco, idade) values ('Maria', 'F', '33366655556', 'Av. Beira Rio', 27);
INSERT INTO tb_funcionario (nome, sexo, CPF, endereco, idade) values('Joana', 'F', '77788899998', 'Rua Monteiro Lobato', 56);
INSERT INTO tb_funcionario (nome, sexo, CPF, endereco, idade) values ('Lucas', 'M', '44466655565', 'Rua Antonio Freire', 43);
INSERT INTO tb_funcionario (nome, sexo, CPF, endereco, idade) values ('Pedro', 'M', '88855522225', 'Rua Marcos Antonio', 25);

-- INSERT tabela livro 
INSERT INTO tb_livro (nome_livro, autor, editora, preco) values ('ACOTAR', 'Sarah G.', 'Recorde', 89.00);
INSERT INTO tb_livro (nome_livro, autor, editora, preco) values ('Príncipe Cruel', 'Holly Black', 'Recorde', 44.00);
INSERT INTO tb_livro (nome_livro, autor, editora, preco) values ('Duna', 'Frank Herbert', 'Aleph', 77.92);
INSERT INTO tb_livro (nome_livro, autor, editora, preco) values ('A empregada', 'Freida McFadden', 'Arqueiro', 44.92);
INSERT INTO tb_livro (nome_livro, autor, editora, preco) values ('Mentirosos', 'E. Lockhart', 'Seguinte', 36.84);

-- INSERT tabela Emprestimo
INSERT INTO tb_emprestimo (livro_emprestado, data_emprestimo, membro) values ( 2, '2024-05-25', 8821);
INSERT INTO tb_emprestimo (livro_emprestado, data_emprestimo,membro) values (3, '2024-01-29', 2103);
INSERT INTO tb_emprestimo (livro_emprestado, data_emprestimo,membro) values (1, '2024-07-03', 890);
INSERT INTO tb_emprestimo (livro_emprestado, data_emprestimo,membro) values( 5, '2024-04-23', 2503);
INSERT INTO tb_emprestimo (livro_emprestado, data_emprestimo,membro) values (4, '2023-08-25', 6549);

-- Realizar um Select(SELECT)
SELECT livro_emprestado, data_emprestimo FROM tb_emprestimo;

-- Realizar Select com função de agregação 
SELECT SUM(preco) FROM tb_livro;

-- Atualizar um dado qualquer(UPDATE);
UPDATE usuario SET idade = 24 WHERE nome = 'luisa';
