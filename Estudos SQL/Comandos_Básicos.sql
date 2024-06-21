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
    

-- CRIAÇÃO DE UMA TABELA DE CADASTRO --

DROP TABLE Cadastro_Jogadoras;

create table Cadastro_Jogadoras
(
	id_camisa INT PRIMARY KEY,
  	nome_jogadora VARCHAR(20),
  	nome_camisa VARCHAR(20),
  	id_posicao INT,
  	posicao VARCHAR(20)
);

INSERT INTO Cadastro_Jogadoras(id_camisa, nome_jogadora, nome_camisa,id_posicao, posicao) 
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
        
SELECT * FROM Cadastro_Jogadoras WHERE posicao = 'G';
INSERT INTO Cadastro_Jogadoras id_posicao = 0;

