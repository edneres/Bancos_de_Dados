-------------------------------------------------------------------
-- Acadêmica de Egenharia Elétrica Maria Edivânia Neres de Sousa --
-- Universidade Federal do Piauí                                 --
-- Teresina, Piauí. 21/06/2024                                   --
-------------------------------------------------------------------


-- DML (Data Manipulation Language): >> Linguagem de Manipulação de Dados
	-- Recuperar, inserir, atualizar e excluir dados no banco de dados.

-- DDL (Data Definition Language) >> Linguagem de Definição de Dados
	-- Criar, alterar, largar/derrubar, truncar, renomear... 

-- DQL (Data Query Language) >> Linguagem de Procura/Consulta de Dados
	-- Permite a visualização dos dados de uma tabela por meio de "filtros"

-- DCL (Data Control Language) >> Linguagem de Controle de Dados
	-- Concede ou nega privilégios e controle de acesso dentro do banco de dados.

-- TCL (Transaction Control Language) >> Linguagem de Controle e Transação
	-- Controle das transações dentro do banco de dados, confirma mudanças, desfaz mudanças e/ou define pontos dentro das transações para permitir um rollback parcial.
    


DROP TABLE Jogadoras;
DROP TABLE Descricao_Posicao;

create table Jogadoras
(
	id_camisa INT PRIMARY KEY,
  	nome_jogadora VARCHAR(20),
  	nome_camisa VARCHAR(20),
  	id_posicao INT,
  	posicao VARCHAR(3)
);

INSERT INTO Jogadoras(id_camisa, nome_jogadora, nome_camisa,id_posicao, posicao) 
	VALUES	
    	(99, 'Eudóxia Virgínia', 'Eudóxia', NULL, 'A') ,
		(11, 'Gabriela Sales', 'Gabi', NULL, 'LD'),
       	(4, 'Maria Clara', 'Maria C.', NULL, 'C'),
		(10, 'Ana Kauane','A. Kauane', NULL, 'A'),
		(22, 'Alícia Evangelina', 'Alícia', NULL, 'LE'),
		(24, 'Isabela', 'Isa', NULL, 'LD'),
		(3, 'Ana Brisa', 'Ana Brisa', NULL, 'C'),
		(21, 'Beatriz Azevedo', 'B. Azevedo', NULL, 'LE'),
		(25, 'Maria Edivânia', 'Ed Neres', NULL, 'G'),
		(7, 'Denise Granjeiro', 'D. Granjeiro', NULL, 'LE'),
        (12, 'Thaís Silva', 'Thaís S.', NULL, 'C'),
		(23, 'Ana Beatriz', 'Ana B.', NULL, 'LD');

UPDATE Jogadoras SET id_posicao = 0 WHERE posicao = 'G';
UPDATE Jogadoras SET id_posicao = 1 WHERE posicao = 'A';
UPDATE Jogadoras SET id_posicao = 2 WHERE posicao = 'LD';
UPDATE Jogadoras SET id_posicao = 3 WHERE posicao = 'LE';
UPDATE Jogadoras SET id_posicao = 4 WHERE posicao = 'C';

CREATE TABLE Descricao_Posicao
(
	id_posicao VARCHAR[3],
  	descricao VARCHAR[20]
);

INSERT INTO Descricao_Posicao(id_posicao, descricao)
	VALUES
    	('G', 'Goleira'),
        ('A', 'Atacante'),
        ('LD', 'Lateral Direita'),
        ('LE', 'Lateral Esquerda'),
        ('C', 'Central');
        
------------------------------------------------------------------------------------------------------------

SELECT * FROM Jogadoras WHERE nome_jogadora = 'Maria Edivânia';
    /*
        O asterisco (*) é um curinga que significa "todas as colunas". Quando você usa SELECT *, 
        está dizendo ao banco de dados para retornar todas as colunas da tabela especificada.

        O WHERE filtra os resultados para incluir apenas as linhas onde a condição acontece.
    */
    
SELECT nome_jogadora, nome_camisa FROM Jogadoras;

-- Contar todas as linhas de uma tabela
SELECT COUNT(*) AS total_jogadoras FROM Jogadoras;

-- Contar e agrupar linhas por uma coluna específica
SELECT posicao, COUNT(*) AS quantidade_jogadoras
FROM Jogadoras
GROUP BY posicao;

-- Contar linhas que correspondem a um critério específico
SELECT COUNT(*) AS total_goleiras
FROM Jogadoras
WHERE posicao = 'G';

/*
	>> COUNT(*): Conta todas as linhas na tabela ou no conjunto de resultados da consulta,
    	   incluindo as linhas onde todas as colunas são NULL.
    
	>> COUNT(nome_coluna): Conta apenas as linhas onde a coluna especificada não é NULL.
*/
