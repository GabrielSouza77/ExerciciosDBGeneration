CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    data_cadastro DATE NOT NULL
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria, data_cadastro) VALUES
('Smartphone X', 'Celular premium 128GB', 2500.00, 50, 'Eletrônicos', '2023-01-15'),
('Notebook Gamer', 'Notebook RTX 3060', 5500.00, 20, 'Informática', '2023-02-10'),
('Fone Bluetooth', 'Fone sem fio ANC', 350.00, 100, 'Acessórios', '2023-03-05'),
('Smart TV 50"', 'TV 4K Android TV', 2800.00, 30, 'Eletrônicos', '2023-04-20'),
('Mochila Executiva', 'Mochila antirroubo', 180.00, 200, 'Acessórios', '2023-05-12'),
('Console de Videogame', 'Console última geração', 4500.00, 15, 'Games', '2023-06-08'),
('Camisa Polo', 'Camisa social masculina', 120.00, 150, 'Vestuário', '2023-07-01'),
('Kit Ferramentas', '32 peças profissionais', 600.00, 40, 'Ferramentas', '2023-08-18');

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos
SET preco = 750.00
WHERE id = 3;
