CREATE TABLE TABELA_CIDADES (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    populacao INT
);

-- Inserção de dados na tabela "TABELA_CIDADES"
INSERT INTO TABELA_CIDADES (id, nome, populacao)
VALUES (1, 'São Paulo', 12000000);
INSERT INTO TABELA_CIDADES (id, nome, populacao)
VALUES (2, 'Rio de Janeiro', 7000000);
INSERT INTO TABELA_CIDADES (id, nome, populacao)
VALUES (3, 'Belo Horizonte', 2500000);
INSERT INTO TABELA_CIDADES (id, nome, populacao)
VALUES (4, 'Salvador', 2900000);

SELECT * FROM TABELA_CIDADES;

CREATE TABLE TABELA_ALUNOS (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    data_nascimento DATE,
    cidade_id INT,
    FOREIGN KEY (cidade_id) REFERENCES TABELA_CIDADES(id)
);

-- Inserção de dados na tabela "TABELA_ALUNOS"
INSERT INTO TABELA_ALUNOS (id, nome, data_nascimento, cidade_id)
VALUES (1, 'João', '1995-03-15', 1);
INSERT INTO TABELA_ALUNOS (id, nome, data_nascimento, cidade_id)
VALUES (2, 'Maria', '1998-07-20', 2);
INSERT INTO TABELA_ALUNOS (id, nome, data_nascimento, cidade_id)
VALUES (3, 'Pedro', '1997-01-10', 3);
INSERT INTO TABELA_ALUNOS (id, nome, data_nascimento, cidade_id)
VALUES (4, 'Ana', '1996-09-05', 1);
INSERT INTO TABELA_ALUNOS (id, nome, data_nascimento, cidade_id)
VALUES (5, 'Carlos', '1999-11-30', 4);

SELECT * FROM TABELA_ALUNOS;

SELECT *
FROM TABELA_ALUNOS
INNER JOIN TABELA_CIDADES ON TABELA_CIDADES.id = TABELA_ALUNOS.cidade_id;