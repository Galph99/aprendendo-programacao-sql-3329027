-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT 
invoices.CustomerId, 
customers.FirstName || ' ' || customers.LastName AS NomeCliente,
SUM(invoices.Total), COUNT(invoices.Total)
FROM 
invoices
INNER JOIN customers ON customers.CustomerId = invoices.CustomerId
GROUP BY  invoices.CustomerId;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
WITH consulta AS
(
SELECT 
invoices.CustomerId, 
customers.FirstName || ' ' || customers.LastName AS NomeCliente,
SUM(invoices.Total) AS TotalCliente, 
COUNT(invoices.Total) AS QtdVendas,
MAX(invoices.Total)
FROM 
invoices
INNER JOIN customers ON customers.CustomerId = invoices.CustomerId
GROUP BY  invoices.CustomerId
)

SELECT *
FROM
consulta  
WHERE TotalCliente > 30;


-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
