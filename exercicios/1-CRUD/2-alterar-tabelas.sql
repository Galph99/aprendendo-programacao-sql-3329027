-- alterar tipo da coluna salario

-- 1. Cria a nova tabela sem a coluna 'salario'
CREATE TABLE nova_salario_classe (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nivel text,
  salario varchar(50)
);

-- 2. Copia os dados para a nova tabela
INSERT INTO nova_salario_classe (id, nivel, salario)
SELECT id, nivel, salario FROM salario_classe;

-- 3. Apaga a tabela antiga
DROP TABLE salario_classe;

-- 4. Renomeia a nova tabela
ALTER TABLE nova_salario_classe RENAME TO salario_classe;

-- adicionar id_salario na tabela employees
ALTER TABLE employees
ADD id_salario INTEGER;
