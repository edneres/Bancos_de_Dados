-------------------------------------------------------------------
-- Acadêmica de Egenharia Elétrica Maria Edivânia Neres de Sousa --
-- Universidade Federal do Piauí                                 --
-- Teresina, Piauí. 24/06/2024                                   --
-------------------------------------------------------------------

DROP TABLE Cargo;
DROP TABLE Funcionario;

CREATE TABLE Cargo
(
	idCargo INT PRIMARY KEY,
  	NomeCargo VARCHAR(15)
);

INSERT INTO Cargo(idCargo, NomeCargo)
	VALUES
    	(1, 'Programador Jr.'),
        (2, 'Web Designer PI'),
        (3, 'Programador PI'),
        (4, 'DBA Jr.'),
        (5, 'Programador Sr.');
        
CREATE TABLE Funcionario
(
	idFuncionario INT PRIMARY KEY,
  	idCargo INT,
  	NomeFuncionario VARCHAR(15),
  	Salario DECIMAL(10, 2)
);

INSERT INTO Funcionario(idFuncionario, idCargo, NomeFuncionario, Salario)
	VALUES
    	(1, 2, 'José Henrique', 2500),
        (2, 1, 'Maria Edivânia', 2250),
        (3, 4, 'Luís Miguel', 2750),
        (4, 3, 'Laís Urano', 2300),
        (5, 1, 'Nilo Filho', 2250);
        
 /*
      É normal encontrarmos colunas com o mesmo nome, vindos de tabelas diferentes. 
    Para que não haja confusão e consigamos a identificação correta da procedência dos dados, 
    devemos qualificar o nome de uma coluna com o nome da tabela da qual ela é originada.
 */
 
 SELECT Cargo.idCargo, Cargo.NomeCargo, Funcionario.NomeFuncionario, Funcionario.Salario
 FROM Cargo, Funcionario
 WHERE Cargo.idCargo = Funcionario.idCargo AND Funcionario.Salario > 2300;
 
 /*
    1º São executadas as condições de associação da cláusula FROM. 
    2º São aplicadas as condições de busca e de associação encontradas na cláusula WHERE.
    3º São executadas as condições de busca na cláusula HAVING (considerando, é claro, que 
       tenhamos estas condições de associação em nossa consulta).
 */
 
SELECT C.NomeCargo [CARGO], F.NomeFuncionario [FUNCIONÁRIO], F.Salario [SALÁRIO]
FROM CARGO AS C
INNER JOIN FUNCIONARIO AS F ON C.IDCARGO = F.IDCARGO;

/*
      O único cargo que não contém funcionário vinculado a ele é o Programador Sr. 
    Para obtermos mesmo assim esse cargo, usamos a cláusula LEFT JOIN à esquerda 
    do sinal de igual (=).
*/

SELECT C.NomeCargo [CARGO], F.NomeFuncionario [FUNCIONÁRIO], F.Salario [SALÁRIO]
FROM CARGO AS C
LEFT JOIN FUNCIONARIO AS F ON C.IDCARGO = F.IDCARGO;

/*
      RIGHT JOIN ou RIGHT OUTER JOIN retorna todos os dados encontrados na tabela 
    à direita de JOIN.
      Caso não existam dados associados entre as tabelas à esquerda e à direita de 
    JOIN, serão retornados valores nulos.
    
    SELECT C.NomeCargo [CARGO], F.NomeFuncionario [FUNCIONÁRIO], F.Salario [SALÁRIO]
    FROM CARGO AS C
    RIGHT JOIN FUNCIONARIO AS F ON C.IDCARGO = F.IDCARGO;
    << NÃO FUNCIONA >>
*/

/*
SELECT C.NomeCargo [CARGO], F.NomeFuncionario [FUNCIONÁRIO], F.Salario [SALÁRIO]
FROM FUNCIONARIO AS F
RIGHT JOIN CARGO AS C ON F.IDCARGO = C.IDCARGO;

SELECT C.NOMECARGO [CARGO], F.NOMEFUNCIONARIO AS [FUNCIONÁRIO], F.Salario AS [SALÁRIO]
FROM FUNCIONARIO AS F
FULL JOIN CARGO AS C ON F.IDCARGO = C.IDCARGO;
*/
 
 
        
  
