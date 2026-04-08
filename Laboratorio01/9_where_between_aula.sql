# WHERE (BETWEEN) - Combinamos Where com BETWEEN quando desejamos filtrar intervalos. Esses intervalos podem ser de números ou datas. 

/*
Sintaxe: 
	SELECT Coluna1, Coluna2, ..., ColunaN
    FROM nomeTabela
    WHERE Coluna1 BETWEEN valor1 AND valor2; 
    
*/

# Exemplo 1: Faça um filtro que retorne todos os produtos com Preco_Unit entre 1000 e 2500
SELECT *
FROM Produtos
WHERE Preco_Unit BETWEEN 1000 AND 2500;

# Exemplo 2: Faça um filtro que retorne todos os clientes que nasceram entre 01/01/1995 e 31/12/1999;
SELECT *
FROM Clientes
WHERE Data_Nascimento BETWEEN '1995/01/01' AND '1999/12/31';