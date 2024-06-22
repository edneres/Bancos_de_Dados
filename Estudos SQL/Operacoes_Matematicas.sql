-------------------------------------------------------------------
-- Acadêmica de Egenharia Elétrica Maria Edivânia Neres de Sousa --
-- Universidade Federal do Piauí                                 --
-- Teresina, Piauí. 22/06/2024                                   --
-------------------------------------------------------------------

--DROP TABLE ListaCompras

CREATE TABLE ListaCompras 
(
    id INT AUTO_INCREMENT,
    produto VARCHAR(100) PRIMARY KEY,
    quantidade INT,
    preco DECIMAL(10, 2)
);

INSERT INTO ListaCompras (produto, quantidade, preco) 
  VALUES
    ('Arroz', 2, 15.99),
    ('Feijão', 3, 8.50),
    ('Macarrão', 1, 4.25),
    ('Óleo de Soja', 1, 6.75),
    ('Sal', 1, 2.99),
    ('Açúcar', 2, 3.50),
    ('Café', 1, 10.00),
    ('Leite', 2, 3.99),
    ('Queijo', 1, 12.75),
    ('Presunto', 1, 9.50),
    ('Pão Francês', 2, 1.50),
    ('Manteiga', 1, 7.25),
    ('Biscoitos', 1, 5.50),
    ('Refrigerante', 3, 4.75),
    ('Suco de Laranja', 2, 6.00),
    ('Cerveja', 1, 8.99),
    ('Vinho', 1, 19.99),
    ('Chocolate', 2, 3.25),
    ('Sabonete', 1, 2.00),
    ('Papel Higiênico', 2, 4.50),
    ('Detergente', 1, 1.99),
    ('Esponja de Aço', 1, 1.25),
    ('Desinfetante', 1, 7.50),
    ('Shampoo', 1, 9.00),
    ('Condicionador', 1, 8.50),
    ('Sabão em Pó', 1, 11.99),
    ('Amaciante', 1, 6.75),
    ('Água Sanitária', 1, 3.25),
    ('Vela', 1, 2.50),
    ('Fósforo', 1, 1.00),
    ('Pasta de Dente', 1, 4.99),
    ('Escova de Dente', 1, 3.50),
    ('Enxaguante Bucal', 1, 8.25),
    ('Lâmina de Barbear', 1, 6.00),
    ('Creme de Barbear', 1, 5.50),
    ('Papel Toalha', 1, 2.75),
    ('Guardanapo', 2, 1.20),
    ('Pilha', 1, 9.99),
    ('Fita Adesiva', 1, 3.75),
    ('Lâmpada', 1, 7.50),
    ('Filtro de Café', 1, 4.25),
    ('Esponja de Banho', 1, 5.00),
    ('Esponja de Louça', 1, 2.25),
    ('Lustra Móveis', 1, 6.99),
    ('Inseticida', 1, 12.50),
    ('Repelente', 1, 8.00),
    ('Fita Isolante', 1, 3.25);

INSERT INTO ListaCompras (produto, quantidade, preco) 
  VALUES
    ('Cereal', 1, 10.50),
    ('Iogurte', 2, 3.75),
    ('Geléia', 1, 7.99),
    ('Margarina', 1, 4.25),
    ('Linguiça', 1, 13.50),
    ('Peito de Frango', 1, 18.75),
    ('Salsicha', 2, 5.00),
    ('Geleia de Mocotó', 1, 4.99),
    ('Cuca', 1, 9.25),
    ('Farinha de Trigo', 2, 2.50),
    ('Fermento em Pó', 1, 3.75),
    ('Ovo', 1, 7.50),
    ('Pão Integral', 1, 5.25),
    ('Achocolatado', 1, 6.50),
    ('Bolacha', 1, 3.25);

--SELECT id FROM ListaCompras;

ALTER TABLE ListaCompras
DROP COLUMN id;

SELECT 10 + 5 AS soma;
SELECT 10 - 5 AS subtracao;
SELECT 10 * 5 AS multiplicacao;
SELECT 10 / 5 AS divisao;
SELECT 10 % 3 AS modulo;	-- Retorna o resto da divisão do primeiro valor pelo segundo.
SELECT ABS(-10) AS absoluto;
SELECT CEILING(10.75) AS teto;
SELECT FLOOR(10.75) AS piso;
SELECT ROUND(10.756, 2) AS arredondado;
SELECT POWER(2, 3) AS potencia;
SELECT SQRT(16) AS raiz_quadrada; 

/*
SELECT quantidade, preco, quantidade * preco AS SubTotal
FROM ListaCompras;
*/

SELECT quantidade * preco AS SubTotal FROM ListaCompras;

SELECT ROUND(SUM(quantidade * preco), 2) AS Total FROM ListaCompras;

SELECT preco - quantidade AS teste FROM ListaCompras;










