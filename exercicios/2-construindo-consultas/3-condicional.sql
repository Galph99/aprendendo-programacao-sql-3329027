-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country AS País,
State AS UF,
CASE
  WHEN State = 'SP' THEN 'São Paulo'
  WHEN State = 'RJ' THEN 'Rio de Janeiro'
  ELSE 'Outro estado'
END AS Estado
FROM
customers
WHERE
Country LIKE 'Brazil'