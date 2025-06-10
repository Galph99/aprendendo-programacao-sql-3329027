SELECT BillingCountry,
SUM(Total) AS TotalCompra,
MIN(Total) AS MenorCompra,
MAX(Total) AS MaiorCompra,
COUNT(Total) AS QtdCompra,
ROUND(AVG(Total),2) AS MediaCompra
FROM invoices
GROUP BY BillingCountry

SELECT DISTINCT BillingCountry
FROM invoices