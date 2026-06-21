# WHERE - Tem como objectivo filtrar as linhas de uma tabela
/*
Sintaxe: 
	SELECT Coluna1, Coluna2, ..., ColunaN
    FROM nomeTabela
    WHERE Coluna = valor;
*/

# Exemplo 1: Crie um filtro na tabela de Clientes para mostrar apenas as linhas referentes aos clientes com Renda_Anual >= 80000.
SELECT *
FROM Clientes
WHERE Renda_Anual >= 80000;

# Exemplo 2: Crie um filtro na tabela de clientes para mostrar as linhas referentes:
# 			a) Aos clientes do Sexo Masculino.
# 			b) Aos clientes com Escolaridade Parcial.

SELECT *
FROM Clientes
WHERE Sexo = 'M';

SELECT *
FROM Clientes
WHERE Escolaridade = 'Parcial';

# Exemplo 3: Crie um filtro na tabela de Clientes para mostrar apenas as linhas referentes aos clientes que nasceram após o dia '01/01/2000'. 
SELECT *
FROM Clientes
WHERE Data_Nascimento > '2000/01/01';




