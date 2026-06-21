
-- 1 - Criação do Banco de Dados e das Tabelas - DDL [CREATE, ALTER, DROP, TRUNCATE]
-- 1.1 Criar o banco de dados
CREATE DATABASE emanuel_santos_20230429;

-- 1.2 Selecionar o banco de dados que acabámos de criar
USE emanuel_santos_20230429;

-- 1.3 Criar a tabela Categorias
CREATE TABLE Categorias (
    id_categoria INT          PRIMARY KEY AUTO_INCREMENT,
    nome         VARCHAR(100) NOT NULL
);

-- 1.4 Criar a tabela Produtos
CREATE TABLE Produtos (
    id_produto   INT            PRIMARY KEY AUTO_INCREMENT,
    nome         VARCHAR(100)   NOT NULL,
    preco        DECIMAL(10, 2) NOT NULL,
    estoque      INT            NOT NULL DEFAULT 0,
    id_categoria INT            NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

-- 1.5 Criar a tabela Clientes
CREATE TABLE Clientes (
    id_cliente INT          PRIMARY KEY AUTO_INCREMENT,
    nome       VARCHAR(100) NOT NULL,
    email      VARCHAR(100),
    telefone   VARCHAR(20)  NOT NULL
);

-- 1.6 Criar a tabela Vendas
CREATE TABLE Vendas (
    id_venda   INT  PRIMARY KEY AUTO_INCREMENT,
    id_produto INT  NOT NULL,
    id_cliente INT  NOT NULL,
    quantidade INT  NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- 2 - Popular as Tabelas com Dados - DML [INSERT, UPDATE, DELETE]
-- 2.a Inserir as 3 categorias
INSERT INTO Categorias (nome) VALUES ('Informática');
INSERT INTO Categorias (nome) VALUES ('Alimentos');
INSERT INTO Categorias (nome) VALUES ('Vestuário');

-- 2.b Inserir os 5 produtos
--     id_categoria: 1 = Informática | 2 = Alimentos | 3 = Vestuário
INSERT INTO Produtos (nome, preco, estoque, id_categoria) VALUES ('Notebook',   250000, 10,  1);
INSERT INTO Produtos (nome, preco, estoque, id_categoria) VALUES ('Mouse',        5000, 50,  1);
INSERT INTO Produtos (nome, preco, estoque, id_categoria) VALUES ('Camisa',      15000, 30,  3);
INSERT INTO Produtos (nome, preco, estoque, id_categoria) VALUES ('Arroz',        8000, 100, 2);
INSERT INTO Produtos (nome, preco, estoque, id_categoria) VALUES ('Chocolate',    3000, 0,   2);

-- 2.c Inserir os 3 clientes
INSERT INTO Clientes (nome, email, telefone) VALUES ('Ana Silva',   'ana@email.com',    '923000000');
INSERT INTO Clientes (nome, email, telefone) VALUES ('Carlos Mário','carlos@email.com', '923111111');
INSERT INTO Clientes (nome, email, telefone) VALUES ('Joana Lima',   NULL,              '923222222');

-- 2.d Inserir as 4 vendas
--     id_produto: 1 = Notebook  | 2 = Mouse        | 4 = Arroz 	 | 5 = Chocolate
--     id_cliente: 1 = Ana Silva | 2 = Carlos Mário | 3 = Joana Lima 
INSERT INTO Vendas (id_produto, id_cliente, quantidade, data_venda) VALUES (1, 1, 1,  '2025-03-01');
INSERT INTO Vendas (id_produto, id_cliente, quantidade, data_venda) VALUES (2, 2, 2,  '2025-03-05');
INSERT INTO Vendas (id_produto, id_cliente, quantidade, data_venda) VALUES (4, 1, 5,  '2025-03-06');
INSERT INTO Vendas (id_produto, id_cliente, quantidade, data_venda) VALUES (5, 3, 10, '2025-03-10');

-- 3 - Consultas - DQL [SELECT]

-- ------------------------------
-- 3.1 Consultas Simples (SELECT)
-- ------------------------------

-- 3.1.a) Listar todos os produtos cadastrados
SELECT * FROM Produtos;

-- 3.1.b) Listar apenas os nomes e preços dos produtos
SELECT nome, preco FROM Produtos;

-- 3.1.c) Listar todos os clientes cadastrados
SELECT * FROM Clientes;

-- -------------------------
-- 3.2 Filtros com WHERE
-- -------------------------

-- 3.2.a) Produtos com preço superior a 10.000
SELECT * FROM Produtos
WHERE preco > 10000;

-- 3.2.b) Produtos com estoque igual a 0
SELECT * FROM Produtos
WHERE estoque = 0;

-- 3.2.c) Clientes que não possuem e-mail cadastrado
SELECT * FROM Clientes
WHERE email IS NULL;

-- -------------------------
-- 3.3 Uso de AND / OR
-- -------------------------

-- 3.3.a) Produtos da categoria Informática com preço superior a 10.000
SELECT * FROM Produtos
WHERE id_categoria = 1 AND preco > 10000;

-- 3.3.b) Produtos da categoria Alimentos OU com estoque igual a 0
SELECT * FROM Produtos
WHERE id_categoria = 2 OR estoque = 0;

-- 3.3.c) Clientes cujo nome seja Ana Silva OU Joana Lima
SELECT * FROM Clientes
WHERE nome = 'Ana Silva' OR nome = 'Joana Lima';

-- -------------------------
-- 3.4 Uso de LIKE
-- -------------------------

-- 3.4.a) Clientes cujo nome começa com a letra "A"
SELECT * FROM Clientes
WHERE nome LIKE 'A%';

-- 3.4.b) Produtos cujo nome contém a letra "o"
SELECT * FROM Produtos
WHERE nome LIKE '%o%';

-- 3.4.c) Clientes cujo e-mail termina com "@email.com"
SELECT * FROM Clientes
WHERE email LIKE '%@email.com';

-- -------------------------
-- 3.5 INNER JOIN (Relacionamentos)
-- -------------------------

-- 3.5.a) Todos os produtos com o nome da sua categoria
SELECT Produtos.nome        AS Produto,
       Categorias.nome      AS Categoria,
       Produtos.preco       AS Preco,
       Produtos.estoque     AS Estoque
FROM Produtos
INNER JOIN Categorias ON Produtos.id_categoria = Categorias.id_categoria;

-- 3.5.b) Todas as vendas mostrando: nome do cliente, nome do produto, quantidade e data da venda
SELECT Clientes.nome   AS Cliente,
       Produtos.nome   AS Produto,
       Vendas.quantidade,
       Vendas.data_venda
FROM Vendas
INNER JOIN Clientes ON Vendas.id_cliente = Clientes.id_cliente
INNER JOIN Produtos ON Vendas.id_produto = Produtos.id_produto;

-- 3.5.c) Todas as vendas realizadas pela cliente Ana Silva
SELECT Clientes.nome   AS Cliente,
       Produtos.nome   AS Produto,
       Vendas.quantidade,
       Vendas.data_venda
FROM Vendas
INNER JOIN Clientes ON Vendas.id_cliente = Clientes.id_cliente
INNER JOIN Produtos ON Vendas.id_produto = Produtos.id_produto
WHERE Clientes.nome = 'Ana Silva';