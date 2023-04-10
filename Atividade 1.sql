CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
  id_personagem INT PRIMARY KEY,
  nome_personagem VARCHAR(50) NOT NULL,
  nivel_personagem INT NOT NULL,
  id_classe INT,
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

CREATE TABLE tb_classes (
  id_classe INT PRIMARY KEY,
  nome_classe VARCHAR(50) NOT NULL,
  descricao_classe TEXT
);

INSERT INTO tb_classes (id_classe, nome_classe, descricao_classe) VALUES 
(1, 'Guerreiro', 'Classe forte e resistente, ideal para enfrentar inimigos corpo a corpo.'),
(2, 'Mago', 'Classe com habilidades mágicas poderosas, capaz de causar dano em area.'),
(3, 'Arqueiro', 'Classe com habilidades de ataque à distância, ideal para combates a longo alcance.');

INSERT INTO tb_personagens (id_personagem, nome_personagem, nivel_personagem, id_classe) VALUES 
(1, 'Hugo', 5, 1),
(2, 'Alicia', 3, 2),
(3, 'Léo', 7, 3),
(4, 'Sofia', 2, 1);

SELECT * FROM tb_personagens;

SELECT nome_personagem, nivel_personagem FROM tb_personagens;
