/*	
	LIMIT E OFFSSET: Frequentemente lidamos com bancos de dados enormes, com milhões de linhas, e não é prático visualizar todas essas linhas quando só queremos ter uma noção da base de dados. Podemos usar o comando LIMIT e o comando OFFSET para selecionar e carregar apenas uma parte do banco de dados, otimizando assim a visualização de dados, sem a necessidade de carregar a base de dados inteira.

	-- LIMIT define o número de linhas a serem retornadas
    -- OFFSET define o número de linhas a serem ignoradas no início.

*/


# Exemplo 1: Utilize o comando LIMIT para limitar o número de resultados do SELECT na tabela pedidos (visualizar 100 depois 10)
SELECT *
FROM pedidos
LIMIT 100;

SELECT *
FROM pedidos
LIMIT 10;

# Exemplo 2: Utilize o LIMIT + OFFSET para indicar a quantidade de linhas a serem retornadas e o início dessas linhas (visualizar 10 linhas, a ignirando as 5 primeiras)

SELECT *
FROM pedidos
LIMIT 10 OFFSET 5;



# Exemplo 3: Teste o código a seguir e analisa as conclusões

SELECT * 
FROM db_marketplace.pedidos LIMIT 10, 50;

/*
	Conclusão:
    LIMIT 10, 50:
        10: Indica que desejamos pular as primeiras 10 linhas da tabela.
        50: Indica que desejamos retornar as 50 linhas subsequentes depois de pular as 10 primeiras linhas.
*/


# Eexmplo 4: Que conclusão (saída) tirar dos seguintes códigos SQL?
# a)
SELECT *
FROM db_marketplace.pedidos
LIMIT 10, 50;
/*
	Conclusão:
    LIMIT 10, 50:
        10: Indica que desejamos pular as primeiras 10 linhas da tabela.
        50: Indica que desejamos retornar as 50 linhas subsequentes depois de pular as 10 primeiras linhas.
*/

# b)
SELECT *
FROM db_marketplace.pedidos
LIMIT 50 OFFSET 10;

/*
	Conclusão:
    LIMIT 10, 50:
        10: Indica que desejamos pular as primeiras 10 linhas da tabela.
        50: Indica que desejamos retornar as 50 linhas subsequentes depois de pular as 10 primeiras linhas.
*/
