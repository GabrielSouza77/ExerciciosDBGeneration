CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    area VARCHAR(50) NOT NULL
);

CREATE TABLE tb_cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    duracao INT NOT NULL,
    nivel VARCHAR(20) NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, area) VALUES
('Programação', 'Tecnologia'),
('Design Gráfico', 'Criatividade'),
('Gestão', 'Negócios'),
('Idiomas', 'Desenvolvimento Pessoal'),
('Marketing Digital', 'Vendas');

INSERT INTO tb_cursos (nome, preco, duracao, nivel, categoria_id) VALUES
('Java Profissional', 799.90, 6, 'Avançado', 1),
('Python para Iniciantes', 450.00, 4, 'Básico', 1),
('Adobe Photoshop Master', 1200.00, 3, 'Intermediário', 2),
('Gestão de Projetos Ágil', 899.00, 2, 'Avançado', 3),
('Inglês Intensivo', 550.00, 6, 'Básico', 4),
('Espanhol Comercial', 699.90, 4, 'Intermediário', 4),
('Marketing de Conteúdo', 999.90, 5, 'Avançado', 5),
('JavaScript Moderno', 850.00, 3, 'Intermediário', 1);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT c.*, cat.nome AS categoria, cat.area 
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id;

SELECT c.*, cat.nome AS categoria 
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id
WHERE cat.nome = 'Programação';

