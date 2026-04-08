# WHERE - LIKE

# Exemplo 1: Descubra quais clientes possuem um e-mail do gmail (hotmail, outlook)

SELECT *
FROM Clientes
WHERE Email LIKE '%@hotmail.%' OR Email LIKE '%@gmail.%' OR Email LIKE '%@outlook.%';

# Exemplo 2: Descubra quais clientes possuem um e-mail terminado em '.br'.
SELECT *
FROM Clientes
WHERE Email LIKE '%.br';