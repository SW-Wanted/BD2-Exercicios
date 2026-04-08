# WHERE (IS NULL E IS NOT NULL) : O comando where pode ser usado junto com as instruções IS NULL ou com IS NOT NULL para filtrar apenas as linhas contendo algum campo que seja nula ou não nulo. 

/*
	SELECT colunas 
    FROM tabela 
    WHERE coluna IS NULL
    
    ou 

	SELECT colunas 
    FROM tabela 
    WHERE coluna IS NOT NULL
*/

# Exemplo 1: Descubra quais clientes não cadastraram o celular (Se desejarmos os que têm cadastro vazios também? Nota: Vazio <> NULL)
SELECT *
FROM Clientes
WHERE Telefone IS NULL;

# Exemplo 2: Descubra quais lojas não cadastraram um contacto telefônico
SELECT *
FROM Lojas
WHERE Telefone IS NULL;

