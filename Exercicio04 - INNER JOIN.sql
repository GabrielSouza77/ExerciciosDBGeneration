CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE tb_personagens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nivel INT NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    classe_id INT NOT NULL,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, tipo) VALUES
('Guerreiro', 'Corpo a Corpo'),
('Mago', 'Magia'),
('Arqueiro', 'Longo Alcance'),
('Assassino', 'Furtivo'),
('Tanque', 'Defesa');

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES
('Crimson Blade', 85, 2500, 1500, 1),
('Shadow Mage', 92, 1800, 1200, 2),
('Silver Arrow', 78, 2200, 950, 3),
('Night Stalker', 88, 2100, 800, 4),
('Iron Guardian', 95, 1900, 3000, 5),
('Flame Sorcerer', 80, 2050, 1100, 2),
('Storm Ranger', 83, 2300, 1300, 3),
('Steel Crusher', 90, 2400, 2800, 1);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe, c.tipo 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.*, c.nome AS classe 
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';