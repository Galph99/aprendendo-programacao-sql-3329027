-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe(id_salario, nivel, salario)
VALUES
(1,'junior', 1000),
(2,'pleno', 2000),
(3,'senior',3000);

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe(nivel, salario)
VALUES
('especialista', 5000);

-- Insira 
INSERT INTO pratica (nome, valor)
VALUES
('Pedro',1.3),
('Joao',2),
('Maria',1),
('Adalberto',22.4);
