-- Quitanda --

CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produtos (
id_produto bigint AUTO_INCREMENT,
preco decimal (65,2),
qntd_estoque bigint,
descricao varchar(255),
marca varchar(255),
id_categoria bigint,

PRIMARY KEY (id_produto),
FOREIGN KEY (id_produto) references tb_categoria(id_categoria)

);


CREATE TABLE tb_categoria (
id_categoria bigint AUTO_INCREMENT,
pascoa varchar (255),
bebidas varchar (255),
vegetarianos varchar (255),
congelados varchar (255),

PRIMARY KEY (id_categoria)
);

-- ............CATEGORIAS.............. --
INSERT INTO tb_categoria (pascoa, bebidas, vegetarianos, congelados)
VALUES ("Ovo de Páscoa","Refrigerante","Pão de Queijo","Batata Palito");

INSERT INTO tb_categoria (pascoa, bebidas, vegetarianos, congelados)
VALUES ("Chocolate","Suco","Lasanha","Coxinha Congelado");

INSERT INTO tb_categoria (pascoa, bebidas, vegetarianos, congelados)
VALUES ("Ovo de Páscoa","Refrigerante","Pão Vegetariano","Lasanha");

INSERT INTO tb_categoria (pascoa, bebidas, vegetarianos, congelados)
VALUES ("Ovo de Páscoa","Refrigerante","Hambúrguer","Brócolis Congelado");

INSERT INTO tb_categoria (pascoa, bebidas, vegetarianos, congelados)
VALUES ("Ovo de Páscoa","Refrigerante","Pão de Queijo","Nuggets de Frango");



-- .......................PRODUTOS................ ---
INSERT INTO tb_produtos (preco, qntd_estoque, descricao, marca, id_categoria) 
VALUES (80.50, 500, "Chocolates de Pácoa", "Lacta", 1);

INSERT INTO tb_produtos (preco, qntd_estoque, descricao, marca, id_categoria) 
VALUES (10.40, 200, "Refrigerante", "Coca-cola", 2);

INSERT INTO tb_produtos (preco, qntd_estoque, descricao, marca, id_categoria) 
VALUES (30.50, 150, "Lasanha Vegetariana", "Mr. Veggy", 3);

INSERT INTO tb_produtos (preco, qntd_estoque, descricao, marca, id_categoria) 
VALUES (50.80, 270, "Pão de queijo", "Forno de Minas", 4);

INSERT INTO tb_produtos (preco, qntd_estoque, descricao, marca, id_categoria) 
VALUES (30.40, 100, "Batata Palito", "Mccain", 5);

SELECT *FROM tb_produtos;

SELECT *FROM tb_categoria;

SELECT * FROM tb_categoria INNER JOIN tb_produtos ON  tb_categoria.id_categoria = 
tb_produtos.id_categoria WHERE tb_produtos.preco > 50.00;

SELECT * FROM tb_produtos WHERE descricao LIKE "%a%";

UPDATE tb_categoria SET pascoa = "Chocolate" WHERE id_categoria=5;

-- Confirmar Atualização --
SELECT *FROM tb_categoria;





