CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    email VARCHAR(100),
    matriculado BOOLEAN DEFAULT true
);

INSERT INTO tb_estudantes (nome, idade, nota, email) VALUES
('Ana Silva', 15, 8.5, 'ana.silva@escola.com'),
('Carlos Souza', 16, 6.8, 'carlos.souza@escola.com'),
('Mariana Costa', 14, 9.2, 'mariana.costa@escola.com'),
('Pedro Santos', 17, 5.5, 'pedro.santos@escola.com'),
('Juliana Oliveira', 15, 7.9, 'juliana.oliveira@escola.com'),
('Lucas Pereira', 16, 6.0, 'lucas.pereira@escola.com'),
('Fernanda Lima', 14, 8.8, 'fernanda.lima@escola.com'),
('Rafael Almeida', 17, 4.7, 'rafael.almeida@escola.com');

SELECT * FROM tb_estudantes WHERE nota > 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;

UPDATE tb_estudantes
SET nota = 7.5
WHERE id = 2;
