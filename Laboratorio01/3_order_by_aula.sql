# ORDER BY - Esse comando tem como objectivo ordenar uma tabela a partir de uma ou mais colunas daquela mesma tabela.
# Podemos escolher a ordem de ordenação a partir dos comandos ASC e DESC. 
-- ASC (padrão): Ordena de forma Ascendente (Crescente)
	-- Textos: A - Z
    -- Números: Crescente
    -- Datas: Da mais antiga para a mais recente

-- DESC: Ordena de forma Descendente (Decrescente)
	-- Textos: Z - A 
    -- Números: Decrescente
    -- Datas: Da mais recente para a mais antiga


# Exemplo 1: Ordenar a coluna Nome da tabela clientes de forma ASC.
SELECT *
FROM Clientes
ORDER BY Nome ASC;

# Exemplo 2: Ordenar a coluna Nome da tabela clientes de forma DESC.
SELECT *
FROM Clientes
ORDER BY Nome DESC;

# Exemplo 3: Ordenar a coluna Renda_Anual da tabela clientes de forma ASC.
SELECT *
FROM Clientes
ORDER BY Renda_Anual ASC;

# Exemplo 4: Ordenar a coluna Renda_Anual da tabela clientes de forma DESC.
SELECT *
FROM Clientes
ORDER BY Renda_Anual DESC;

# Exemplo 5: Ordenar a coluna Data_Nascimento da tabela clientes de forma ASC.
SELECT *
FROM Clientes
ORDER BY Data_Nascimento ASC;

# Exemplo 6: Ordenar as colunas Renda_Anual e Data_Nascimento da tabela clientes de forma DESC. (Observe a Agela e Alyssa)
SELECT *
FROM Clientes
ORDER BY Renda_Anual DESC, Data_Nascimento DESC;

# Exemplo 7: Ordenar as colunas Nome e Sobrenome da tabela clientes de forma ASC. (Observe os Adam)
SELECT *
FROM Clientes
ORDER BY Nome ASC, Sobrenome ASC;