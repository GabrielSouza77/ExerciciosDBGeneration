create database RecursosHumanos;

use RecursosHumanos;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    data_admissao DATE,
    departamento VARCHAR(50)
);

INSERT INTO colaboradores (nome, cargo, salario, data_admissao, departamento) VALUES
('Ana Silva', 'Analista de RH', 2500.00, '2022-01-15', 'Recursos Humanos'),
('Bruno Costa', 'Desenvolvedor', 1800.00, '2023-03-10', 'TI'),
('Carla Souza', 'Gerente de Projetos', 3500.00, '2021-07-01', 'Projetos'),
('Daniel Lima', 'Assistente Administrativo', 1900.00, '2024-02-20', 'Administração'),
('Elisa Martins', 'Designer', 2200.00, '2023-11-05', 'Marketing');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 2100.00 WHERE id = 2;

SELECT * FROM colaboradores WHERE id = 2;