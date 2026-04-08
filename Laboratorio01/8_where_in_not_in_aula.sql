# WHERE (IN e NOT IN): Podemos usar o Where como IN e NOT IN como alternativa ao operador lógico OR.

/*
Sintaxe: 
	SELECT colunas 
	FROM tabela 
	WHERE coluna1 IN (valor1, valor2, valor3) 		-- Seria semelhante a WHERE coluna1 = valor1 OR coluna1 = valor2 OR coluna1 = valor3
*/


# Exemplo1: Faça um filtro que retorne todos os produtos de uma das 3 marcas a seguir: DELL, SONY ou ALTURA
SELECT *
FROM Produtos
WHERE Marca_Produto IN ('DELL', 'SONY', 'ALTURA');

# Exemplo2: Faça um filtro que retorne todos os produtos que não pertença a uma das 3 marcas a seguir: DELL, SONY ou ALTURA
SELECT *
FROM Produtos
WHERE Marca_Produto NOT IN ('DELL', 'SONY', 'ALTURA');