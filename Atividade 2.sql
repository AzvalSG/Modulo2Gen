-- comando para criação de banco de dados
CREATE DATABASE db_Ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    validade INT(2),
    valor DECIMAL(6,2),
    tipo VARCHAR(255),
    
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome,validade,valor,tipo)
VALUES("TV LCD",200426,3000,"Consumivel");

SELECT * FROM tb_produtos WHERE valor > 500;