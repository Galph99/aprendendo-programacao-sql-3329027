-- Atualize a classe salarial para a pessoa cujo EmployeeId é igual a 6. Lembre-se que a classe salarial deve corresponder o id_salario da tabela salario_classe
UPDATE employees
SET id_salario =3
WHERE EmployeeID = 6;

-- Atualize a classe salarial e o LastName da pessoa cujo EmployeeId é igual a 2. Lembre-se que a classe salarial deve corresponder o id_salario da tabela salario_classe
UPDATE employees
SET id_salario = 4,
LastName = 'Silva'
WHERE EmployeeID = 2;


-- Atualize a classe salarial 1 para as pessoas cuja coluna id_salario continua NULL. Lembre-se que a classe salarial deve corresponder o id_salario da tabela salario_classe
UPDATE employees
SET id_salario = 1
WHERE id_salario IS NULL;

-- Atualize
UPDATE pratica
SET data = CURRENT_DATE
WHERE data IS NULL;


-- Atualize
UPDATE pratica
SET data = '2020-11-20'
WHERE valor >= 2;
SELECT * FROM pratica;