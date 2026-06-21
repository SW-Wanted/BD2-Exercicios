

# Exemplo 1: Selecione colunas específicas de uma tabela
# 	a) Selecione todas as colunas da tabela Produtos
SELECT *
FROM Produtos;

#	b) Selecione apenas a coluna Nome_Produto da tabela produtos
SELECT Nome_Produto
FROM Produtos;

#	c) Selecione as colunas ID_Produto, Nome_Produto, Preco_Unit da tabela Produtos
SELECT ID_Produto, Nome_Produto, Preco_Unit
FROM Produtos;

#	d) Selecione todas as colunas da tabela Produtos e adicione uma nova coluna Novo Preco cujo resultado resulta da multiplicação do preço unitário por 4
SELECT *, (Preco_Unit* 4) AS 'Novo Preco'
FROM Produtos;


# Exemplo 2: Usando a tabela pedidos, renomeie ID_Pedido por Pedido, Data_Venda por Data, Preco_Unit por Preco
SELECT
	ID_Pedido 'Pedido',
    Data_Venda 'Data',
    Preco_Unit 'Preco'
FROM Pedidos;

# Exemplo 3: Ainda usando a tabela pedidos, retorne as colunas renomeadas do exemplo anterior e crie uma coluna calculada (Preco_Unit - Custo_Unit) e renomeie essa coluna por Lucro
SELECT
	ID_Pedido 'Pedido',
    Data_Venda 'Data',
    Preco_Unit 'Preco',
    (Preco_Unit - Custo_Unit) 'Lucro'
FROM Pedidos;



