# WHERE (AND, OR E NOT)

/*
Comando WHERE: Usando AND, OR e NOT em Português

O comando WHERE pode ser usado com os operadores lógicos AND e OR para filtrar mais de uma coluna ao mesmo tempo e também pode ser usado com o operador NOT, para criar negações.

Operadores Lógicos:

    AND: Retorna registros que atendem a todas as condições especificadas.
    OR: Retorna registros que atendem a pelo menos uma das condições especificadas.
    NOT: Retorna registros que não atendem à condição especificada.
*/


/*
	SELECT colunas 
    FROM tabela 
    WHERE condição1 operador_lógico condição2
    
    ou 

	SELECT colunas 
    FROM tabela 
    WHERE operador_lógico condição1 [operador condição2]

*/

# Exemplo 1: Crie um filtro na tabela de Produtos para mostrar apenas as linhas referentes aos produtos da Marca_Produto DELL e Preco_Unit maior ou igual a 2000
SELECT *
FROM Produtos
WHERE Marca_Produto = 'DELL' AND Preco_Unit >= 2000;

# Exemplo 2: Crie um filtro na tabela de Produtos para mostrar as linhas referentes aos produtos da marca DELL ou ALTURA
SELECT *
FROM Produtos
WHERE Marca_Produto = 'DELL' OR Marca_Produto = 'ALTURA';

# Exemplo 3: Crie um filtro na tabela de Produtos para mostrar apenas os produtos que não são da Marca_Produto igual a SAMSUNG
SELECT *
FROM Produtos
WHERE NOT Marca_Produto = 'SAMSUNG';

