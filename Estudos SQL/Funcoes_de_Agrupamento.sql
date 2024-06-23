-------------------------------------------------------------------
-- Acadêmica de Egenharia Elétrica Maria Edivânia Neres de Sousa --
-- Universidade Federal do Piauí                                 --
-- Teresina, Piauí. 22/06/2024                                   --
-------------------------------------------------------------------

/*
          // FUNÇÕES DE AGREGAÇÃO //

-- SUM()
  -- Calcula a soma dos valores em uma coluna.

-- AVG() 
  -- Calcula a média dos valores em uma coluna.

-- COUNT() 
  -- Conta o número de linhas em um conjunto de resultados 
     ou o número de valores não nulos em uma coluna;
  -- COUNT(*) para valores nulos também.

-- MIN() 
  -- Retorna o menor valor em uma coluna.

-- MAX() 
  -- Retorna o maior valor em uma coluna.

          // CLÁUSULAS //

-- GROUP BY()
  -- Operações matemáticas com agregações por grupos.

-- GROUP_CONCAT()
  -- Concatena os valores de uma coluna em uma única string, 
     separada por um delimitador específico.

-- STDDEV(), VAR_POP(), VAR_SAMP()
  -- Calculam o desvio padrão e a variância populacional e amostral, respectivamente.

-- ORDER BY()
  -- Ordena os resultados de uma consulta SQL em ordem ascendente (ASC) ou descendente (DESC), 
     com base nos valores de uma ou mais colunas.

-- HAVING ()
  -- Filtra registros após a aplicação das funções de agregação (como SUM, COUNT, AVG, etc.).
  -- Semelhante à cláusula WHERE, mas WHERE não pode ser usada com funções de agregação, 
     enquanto HAVING pode.
*/

--DROP TABLE Vendas

CREATE TABLE Vendas
(
  id_venda INT,	
  item VARCHAR(15),
  valor_unit DECIMAL(10, 2),
  quantidade INT,
  data VARCHAR(8)
);

INSERT INTO Vendas(id_venda, item, valor_unit, quantidade, data)
	VALUES
    	(1, 'Toscana', 8.85, 2, '25/09/24'),
        (3, 'Musarela', 11.2, 3, '20/09/24'),
        (1, 'Bife', 15.42, 2, '25/09/24'),
        (2, 'Arroz', 4, 5, '15/08/24'),
        (2, 'Penne', 5.92, 2, '15/08/24'),
        (3, 'Iogurte', 9, 1, '20/09/24'),
        (4, 'Tangerina', 2.51, 2, '25/09/24'),
        (4, 'Banana', 3.15, 2, '20/09/24'),
        (2, 'Espaguete', 4.45, 2, '15/08/24'),
        (4, 'Coco', 2, 3, '15/08/24'),
        (1, 'Fígado', 10.3, 1, '15/08/24'),
        (5, 'Beterraba', 2.75, 3, '25/09/24'),
        (5, 'Batata', 3.1, 3, '25/09/24'),
        (6, 'KitKat', 4, 6, '20/09/24'),
        (2, 'Pão', 1, 10, '15/08/24'),
        (5, 'Cenoura', 1.94, 2, '25/09/24'),
        (6, 'Biscoito', 2.3, 3, '20/09/24');       

-- Total de itens comprados em uma mesma data
SELECT COUNT(quantidade) AS quantidade_itens, data
FROM Vendas
GROUP BY data;

-- Total de itens comprados de um mesmo tipo
SELECT id_venda, COUNT(quantidade) AS quantidade_tipo FROM Vendas GROUP BY (id_venda);

-- Total das compras
SELECT ROUND(SUM(quantidade * valor_unit), 2) AS valor_total_compras FROM Vendas;

-- Total das compras por dia
SELECT ROUND(SUM(quantidade * valor_unit), 2) AS valor_compras, data FROM Vendas GROUP BY data;

-- Média das compras por dia
SELECT ROUND(AVG(valor_compras), 2) AS media_compras
FROM 
(
    SELECT ROUND(SUM(quantidade * valor_unit), 2) AS valor_compras, data
    FROM Vendas
    GROUP BY data
);

-- Dias de compras maiores que R$ 70,00
SELECT ROUND(SUM(quantidade * valor_unit), 2) AS valor_compras, data 
FROM Vendas 
GROUP BY data
HAVING valor_compras > 70.00; -- Cláusula WHERE não funciona com agrupamentos

-- Item mais caro
SELECT MAX(valor_unit) AS item_mais_caro, *FROM Vendas;

-- Item mais barato
SELECT id_venda, item, MIN(valor_unit) AS valor_unit,quantidade, data FROM Vendas;


/*
>> A função GROUP_CONCAT() concatena os valores de uma coluna em uma única string, 
   separada por um delimitador específico.
   
>> STDDEV(), VAR_POP(), VAR_SAMP()
   Funções para calcular o desvio padrão e a variância populacional e amostral,
   respectivamente.
*/
