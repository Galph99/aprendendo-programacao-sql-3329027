-- Da tabela invoice, remova o invoice cujo o InvoiceID corresponda ao valor 33
DELETE FROM invoices
WHERE InvoiceID = 33;

-- Da tabela invoice, remova todos os invoices cujo o Total seja menor do que 1
DELETE FROM invoices
WHERE Total < 1;

-- Delete
DELETE FROM pratica
WHERE valor = 1;
SELECT * FROM pratica;

INSERT INTO pratica(id_pratica,nome,valor)
VALUES (3,'Dani',3);

UPDATE pratica
SET data = CURRENT_DATE
WHERE nome = 'Dani';
SELECT * FROM pratica;