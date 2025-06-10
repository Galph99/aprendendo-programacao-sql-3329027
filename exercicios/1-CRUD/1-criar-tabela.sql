-- Crie uma nova tabela no banco de dados
CREATE TABLE salario_classe(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nivel TEXT,
salario INTEGER
);

CREATE TABLE pratica(
id_pratica INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT,
data DATE,
valor DECIMAL(10,2));