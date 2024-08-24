-- ADICIONANDO COLUNA ENDERECO PARA tb_locatario 
ALTER TABLE tb_locatarios ADD COLUMN endereco VARCHAR(70) NOT NULL;

-- INSERINDO DADOS TB_IMOVEIS
INSERT INTO tb_imoveis ( endereco, tipo, statu, num_quartos, num_banheiros) VALUES ( 'Rua das Flores, 123', 'Apartamento', 'D', 2, 1);
INSERT INTO tb_imoveis ( endereco, tipo, statu, num_quartos, num_banheiros) VALUES ('Avenida Central, 456', 'Casa','D',4,3);
INSERT INTO tb_imoveis ( endereco, tipo, statu, num_quartos, num_banheiros) VALUES ('Rua da Esperança, 789', 'Casa', 'I', 3,2);
INSERT INTO tb_imoveis ( endereco, tipo, statu, num_quartos, num_banheiros) VALUES ('Travessa dos Pioneiros, 101', 'apartamento', 'I',3,2);
INSERT INTO tb_imoveis ( endereco, tipo, statu, num_quartos, num_banheiros) VALUES ('Rua do Sol, 202','apartamento','D',2,1);
INSERT INTO tb_imoveis ( endereco, tipo, statu, num_quartos, num_banheiros) VALUES ('Alameda dos Ciprestes, 345','Casa','D',5,3);
INSERT INTO tb_imoveis ( endereco, tipo, statu, num_quartos, num_banheiros) VALUES ('Rua Nova Esperança, 678','Casa','D',4,2);

-- INSERINDO DADOS TB_LOCATARIOS
INSERT INTO tb_locatarios (nome, CPF, data_nascimento,telefone, email, sexo, endereco) VALUES ('João Silva', '123.456.789-00', '1985-04-12', '(11)91234-5678', 'joao.silva@email.com', 'M', 'Rua das Orquídeas, 123');
INSERT INTO tb_locatarios (nome, CPF, data_nascimento,telefone, email, sexo, endereco) VALUES ('Maria Oliveira', '987.654.321-11', '1990-08-25', '(21)99876-5432', 'maria.oliveira@email.com', 'F', 'Avenida Brasil, 456');
INSERT INTO tb_locatarios (nome, CPF, data_nascimento,telefone, email, sexo, endereco) VALUES ('Carlos Pereira', '456.789.123-22', '1982-11-05', '(31)98765-4321', 'carlos.pereira@email.com', 'M', 'Rua das Palmeiras, 789');
INSERT INTO tb_locatarios (nome, CPF, data_nascimento,telefone, email, sexo, endereco) VALUES ('Ana Santos', '321.654.987-33', '1995-06-18', '(41)93456-7890', 'ana.santos@email.com', 'F', 'Alameda das Rosas, 202');
INSERT INTO tb_locatarios (nome, CPF, data_nascimento,telefone, email, sexo, endereco) VALUES ('Paulo Souza', '789.123.456-44', '1988-02-27', '(51)97654-3210', 'paulo.souza@email.com', 'M', 'Travessa da Harmonia, 345');

-- INSERINDO DADOS TB_PROPRIETARIOS
INSERT INTO tb_proprietarios (nome, CPF, data_nascimento, endereco, telefone, email, sexo, seu_imovel) VALUES ('Maria Luísa', '112.233.445-56', '1999-08-25', 'AV. Frutuoso Lima,2521', '(21)91234-1234', 'fernanda.lima@email.com', 'F', 2);
INSERT INTO tb_proprietarios (nome, CPF, data_nascimento, endereco, telefone, email, sexo, seu_imovel) VALUES ('Ricardo Almeida', '223.344.556-67', '2000-09-23', 'Avenida Paulista, 789', '(11)92345-6789', 'ricardo.almeida@email.com', 'M',3 );
INSERT INTO tb_proprietarios (nome, CPF, data_nascimento, endereco, telefone, email, sexo, seu_imovel) VALUES ('Juliana Costa', '334.455.667-78', '1987-03-11', 'Rua das Hortênsias, 456', '(31) 93456-7890', 'juliana.costa@email.com', 'F', 5);
INSERT INTO tb_proprietarios (nome, CPF, data_nascimento, endereco, telefone, email, sexo, seu_imovel) VALUES ('Eduardo Gomes', '445.566.778-89', '1992-12-01', 'Alameda das Palmeiras, 123', '(41) 94567-8901', 'eduardo.gomes@email.com', 'M',4);
INSERT INTO tb_proprietarios (nome, CPF, data_nascimento, endereco, telefone, email, sexo, seu_imovel) VALUES ('Patrícia Rocha', '556.677.889-90', '1985-05-30', 'Travessa das Amendoeiras, 654', '(51) 95678-9012', 'patricia.rocha@email.com', 'F',7);
INSERT INTO tb_proprietarios (nome, CPF, data_nascimento, endereco, telefone, email, sexo, seu_imovel) VALUES ('Marcos Ferreira', '667.788.990-11', '1978-10-22', 'Rua dos Jacarandás, 789', '(81) 96789-0123', 'marcos.ferreira@email.com', 'M',6);
INSERT INTO tb_proprietarios (nome, CPF, data_nascimento, endereco, telefone, email, sexo, seu_imovel) VALUES ('Cláudia Martins', '778.899.001-22', '1983-04-15', 'Rua dos Girassóis, 234', '(61) 91234-5678', 'claudia.martins@email.com', 'F',8);

-- INSERINDO DADO TB_agente _imobiliario 
INSERT INTO tb_agentes_imobiliarios (nome, CPF, endereco, telefone, sexo, num_vendas) VALUES ('Ana Paula Santos', '123.456.789-00', 'Rua dos Lírios, 567', '(11) 98765-4321', 'F', 25);
INSERT INTO tb_agentes_imobiliarios (nome, CPF, endereco, telefone, sexo, num_vendas) VALUES ('Bruno Oliveira', '234.567.890-11', 'Avenida das Nações, 123', '(21) 97654-3210', 'M', 40);
INSERT INTO tb_agentes_imobiliarios (nome, CPF, endereco, telefone, sexo, num_vendas) VALUES ('Carla Souza', '345.678.901-22', 'Rua das Acácias, 789', '(31) 96543-2109', 'F', 15);
INSERT INTO tb_agentes_imobiliarios (nome, CPF, endereco, telefone, sexo, num_vendas) VALUES ('Daniel Costa', '456.789.012-33', 'Alameda das Rosas, 456', '(41) 95432-1098', 'M', 30);
INSERT INTO tb_agentes_imobiliarios (nome, CPF, endereco, telefone, sexo, num_vendas) VALUES ('Eduarda Lima', '567.890.123-44', 'Rua dos Jasmins, 321', '(51) 94321-0987', 'F', 20);

-- INSERINDO DADOS TB_VALOR_IMOVEIS
INSERT INTO tb_valor_imoveis (preco, data_avaliacao, imovel_avaliado, avaliador) VALUES (250000.00, '2024-01-15', 2, 1);
INSERT INTO tb_valor_imoveis (preco, data_avaliacao, imovel_avaliado, avaliador) VALUES (350000.00, '2024-02-20',3,2);
INSERT INTO tb_valor_imoveis (preco, data_avaliacao, imovel_avaliado, avaliador) VALUES (180000.00, '2024-03-10',4,3);
INSERT INTO tb_valor_imoveis (preco, data_avaliacao, imovel_avaliado, avaliador) VALUES (420000.00, '2024-04-25',5,4);
INSERT INTO tb_valor_imoveis (preco, data_avaliacao, imovel_avaliado, avaliador) VALUES (300000.00, '2024-05-30',6,5);
INSERT INTO tb_valor_imoveis (preco, data_avaliacao, imovel_avaliado, avaliador) VALUES (275000.00, '2024-06-15',7,1);
INSERT INTO tb_valor_imoveis (preco, data_avaliacao, imovel_avaliado, avaliador) VALUES (320000.00, '2024-07-20',8,2);

-- INSERINDO VALORES TB_HISTORICO_LOCACAO
INSERT INTO tb_historico_locacao( data_inicio, data_fim ,endereco_imovel, gerenciador) VALUES ('2024-08-01', '2024-08-30','Rua das Flores, 123',1);
INSERT INTO tb_historico_locacao( data_inicio, data_fim ,endereco_imovel, gerenciador) VALUES ('2024-03-15', '2024-09-14','Avenida Central, 456',2);
INSERT INTO tb_historico_locacao( data_inicio, data_fim ,endereco_imovel, gerenciador) VALUES ('2024-05-01', '2024-11-30','Rua da Esperança, 789', 3);
INSERT INTO tb_historico_locacao( data_inicio, data_fim ,endereco_imovel, gerenciador) VALUES ('2024-07-10', '2025-01-09','Travessa dos Pioneiros, 101',4 );

-- INSERINDO DADOS TB_AGENDAMENTO 
INSERT INTO tb_agendamento ( data_agendamento, tipo_agendamento, agente, imovel_agendado) VALUES ('2025-01-15', 'Visita',1,2);
INSERT INTO tb_agendamento ( data_agendamento, tipo_agendamento, agente, imovel_agendado) VALUES ('2025-02-20', 'Inspeção',2,3);
INSERT INTO tb_agendamento ( data_agendamento, tipo_agendamento, agente, imovel_agendado) VALUES ('2025-04-25', 'Visita',3,4);
INSERT INTO tb_agendamento ( data_agendamento, tipo_agendamento, agente, imovel_agendado) VALUES ('2024-12-05', 'Avaliação',4,5);

-- INSERINDO DADOS TB_FEEDBACK
INSERT INTO tb_feedback ( codigo, comentario, cliente, voltaria_negociar) VALUES  (011, 'Ótima experiência, atendimento excelente!', 11 , TRUE);
INSERT INTO tb_feedback ( codigo, comentario, cliente, voltaria_negociar) VALUES (3, 'Serviço muito profissional e rápido. Recomendo!',1, TRUE);
INSERT INTO tb_feedback ( codigo, comentario, cliente, voltaria_negociar) VALUES (4, 'A comunicação poderia ser melhor, mas no geral foi satisfatório.', 2, FALSE);
INSERT INTO tb_feedback ( codigo, comentario, cliente, voltaria_negociar) VALUES (5, 'Excelente atendimento e suporte durante toda a locação.', 4, TRUE);

-- MOSTRANDO CONTEÚDO DE CADA TABELA
SELECT *FROM tb_imoveis;
SELECT *FROM tb_locatarios;
SELECT *FROM tb_proprietarios;
SELECT *FROM tb_agentes_imobiliarios;
SELECT *FROM tb_valor_imoveis;
SELECT *FROM tb_historico_locacao;
SELECT *FROM tb_agendamento;
SELECT *FROM tb_feedback;
