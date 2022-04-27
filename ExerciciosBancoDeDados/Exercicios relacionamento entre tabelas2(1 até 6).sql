-- ATIVIDADE 1 --

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id_classe bigint auto_increment,
nome_classe varchar (255),
item varchar (255),
PRIMARY KEY (id_classe)
);


CREATE TABLE tb_personagens (
id_personagem bigint auto_increment,
nome_personagem varchar (255),
ataque decimal(10,2),
rapidez decimal(10,2),
defesa decimal(10,2),
fk_classe bigint,
PRIMARY KEY (id_personagem),
FOREIGN KEY (fk_classe) references tb_classes(id_classe)
);
-- ALTER TABLE tb_personagens RENAME COLUMN ineligencia TO inteligencia;(Exemplo ALTER TABLE) --

-- ........CLASSES......... --
INSERT INTO tb_classes (nome_classe, item)
VALUES ("Arqueiro", "Arco e Flecha");

INSERT INTO tb_classes (nome_classe, item)
VALUES ("Caçador", "Arco e Flecha");

INSERT INTO tb_classes (nome_classe, item)
VALUES ("Deus", "Poder Maior de Todos");

INSERT INTO tb_classes (nome_classe, item)
VALUES ("Lutador", "Artes Marciais e Escudo");

INSERT INTO tb_classes (nome_classe, item)
VALUES ("Cavaleiro", "Espada e Lança");

-- .........PERSONAGEM.......... --
INSERT INTO tb_personagens (nome_personagem, ataque, rapidez, defesa, fk_classe)
VALUES ("Eduard",1000.10,2100.10,2000.00, 1);

INSERT INTO tb_personagens (nome_personagem, ataque, rapidez, defesa, fk_classe)
VALUES ("Hannah",3000.00,800.00,1000.00, 2);

INSERT INTO tb_personagens (nome_personagem, ataque, rapidez, defesa, fk_classe )
VALUES ("Robert",2500.00,900.00,1777.00, 4);

INSERT INTO tb_personagens (nome_personagem, ataque, rapidez, defesa, fk_classe )
VALUES ("Sam",4000.00,2000.00, 2110.00, 5);

INSERT INTO tb_personagens (nome_personagem, ataque, rapidez, defesa, fk_classe )
VALUES ("Aila",3000.00,1777.00,900.00, 1);

INSERT INTO tb_personagens (nome_personagem, ataque, rapidez, defesa, fk_classe )
VALUES ("Hainer",900.00,800.00,800.00, 5);

INSERT INTO tb_personagens (nome_personagem, ataque, rapidez, defesa, fk_classe )
VALUES ("Jesus",10000.10,10000.10,10000.10, 3);

INSERT INTO tb_personagens (nome_personagem, ataque, rapidez, defesa, fk_classe )
VALUES ("Lindsey",3000.00,2777.00,3000.00, 5);

-- CONSULTA --
SELECT * FROM tb_personagens WHERE ataque>2.000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.fk_classe = tb_classes.id_classe;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.fk_classe = tb_classes.id_classe WHERE fk_classe = 3 ;
SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

-- ATIVIDADE 2 --

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id_cat bigint auto_increment,
nome_categoria varchar (255), -- doce, salgado, meio a meio, veg, crocante....
tamanho varchar (255),
PRIMARY KEY (id_cat)
);

CREATE TABLE tb_pizzas (
id_pizza bigint auto_increment,
sabor varchar(255),
borda varchar(255),
preco double,
PRIMARY KEY (id_pizza),
fk_id_pizza bigint,
FOREIGN KEY(fk_id_pizza) references tb_categorias(id_cat)
);

-- --------------CATEGORIAS-------------- --
INSERT tb_categorias (nome_categoria, tamanho)
VALUES ("Doce", "Grande, Média e Pequena");

INSERT tb_categorias (nome_categoria, tamanho)
VALUES ("Salgado", "Grande e Média");

INSERT tb_categorias (nome_categoria, tamanho)
VALUES ("Vegana", "Grande e Média");

INSERT tb_categorias (nome_categoria, tamanho)
VALUES ("Meio a Meio", "Grande, Média e Pequena");

INSERT tb_categorias (nome_categoria, tamanho)
VALUES ("Crocante", "Grande e Média");


-- ----------------PIZZAS-------------- --
INSERT tb_pizzas (sabor, borda, preco, fk_id_pizza)
VALUES ("Mussarela", "Catupiry", 60.00, 2);

INSERT tb_pizzas (sabor, borda, preco, fk_id_pizza)
VALUES ("Calabresa", "Catupiry", 50.00, 2);

INSERT tb_pizzas (sabor, borda, preco, fk_id_pizza)
VALUES ("Brócolis", "Sem", 40.00, 3);

INSERT tb_pizzas (sabor, borda, preco, fk_id_pizza)
VALUES ("Mussarela e Portuquesa", "Catupiry", 70.00, 4);

INSERT tb_pizzas (sabor, borda, preco, fk_id_pizza)
VALUES ("Margherita", "Catupiry", 55.00, 5);

INSERT tb_pizzas (sabor, borda, preco, fk_id_pizza)
VALUES ("Chocolate", "Sem", 60.00, 1);

INSERT tb_pizzas (sabor, borda, preco, fk_id_pizza)
VALUES ("Morango", "Chocolate", 80.00, 1);

INSERT tb_pizzas (sabor, borda, preco, fk_id_pizza)
VALUES ("Napolitana", "Sem", 40.00, 2);

-- --------------CONSULTA--------- --
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00; -- SELECT * FROM tb_tabela WHERE preco >= 50.00 AND preco <= 100.00;(Também funciona) --
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON fk_id_pizza = id_cat;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON fk_id_pizza = id_cat WHERE id_cat = 2;

-- ATIVIDADE 3 --

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id_cat BIGINT AUTO_INCREMENT,
nome_cat VARCHAR(255), -- Injetáveis, sublingual, Para Inalação, Maquiagem, Higiene Pessoal, Higiene bucal, Alimentos Saudáveis, Acessórios Ifantis
departamento varchar (255),-- Medicamentos, Genéricos, Beleza e Higiene, Saúde e bem estar, Mamãe e bebe --
PRIMARY KEY(id_cat)
);

CREATE TABLE tb_produtos (
id_produtos bigint auto_increment,
produto varchar(255),
qntd_estoque  bigint,
preco double,
PRIMARY KEY (id_produtos),
fk_id_produtos bigint,
FOREIGN KEY(fk_id_produtos) references tb_categorias(id_cat)
);

-- ............CATEGORIAS.......... --
INSERT tb_categorias (nome_cat, departamento)
VALUES ("Injetáveis","Medicamentos");

INSERT tb_categorias (nome_cat, departamento)
VALUES ("Para Inalação","Genéricos");

INSERT tb_categorias (nome_cat, departamento)
VALUES ("Maquiagem","Beleza e Higiene");

INSERT tb_categorias (nome_cat, departamento)
VALUES ("Alimentos Sudáveis","Saúde e Bem Estar");

INSERT tb_categorias (nome_cat, departamento)
VALUES ("Acessórios Ifantis","Mamãe e Bebê");

-- ............PRODUTOS.......... --
INSERT tb_produtos (produto, qntd_estoque, preco, fk_id_produtos)
VALUES ("Algestona + Estradiol Genérico Germed 1 Ampola",100,39.69, 1);

INSERT tb_produtos (produto, qntd_estoque, preco, fk_id_produtos)
VALUES ("Brometo Ipratrópio Solução P/ Inalação Genérico Teuto 20ml",90,7.05, 2);

INSERT tb_produtos (produto, qntd_estoque, preco, fk_id_produtos)
VALUES ("Batom Vult Lip Butter Dream 3,5g",110,15.99, 3);

INSERT tb_produtos (produto, qntd_estoque, preco, fk_id_produtos)
VALUES ("Cookie Integral Orgânico Mãe Terra Cacau E Castanhas 25g",100,3.99, 4);

INSERT tb_produtos (produto, qntd_estoque, preco, fk_id_produtos)
VALUES ("Caneca Neopan Rosa 270ml",50,32.57, 5);

INSERT tb_produtos (produto, qntd_estoque, preco, fk_id_produtos)
VALUES ("Chupeta Ortodôntica Lillo Funny Tam 2 Lilás",60,8.33, 5);

INSERT tb_produtos (produto, qntd_estoque, preco, fk_id_produtos)
VALUES ("Máscara Para Cílios Maybelline Lash Sensational Lavável 9,5ml",111,43.35, 3);

INSERT tb_produtos (produto, qntd_estoque, preco, fk_id_produtos)
VALUES ("Brownie Belive Chocolate Zero 40g",90,5.89, 4);

-- --------------CONSULTA--------- --
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00; -- SELECT * FROM tb_tabela WHERE preco >= 50.00 AND preco <= 100.00;(Também funciona) --
SELECT * FROM tb_produtos WHERE produto LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON fk_id_produtos = id_cat;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON fk_id_produtos = id_cat WHERE id_cat = 3;

-- ATIVIDADE 4 --

CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id_cat bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
PRIMARY KEY (id_cat)
);

CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal not null,
qntd_produto int not null,
fk_categoria bigint,
PRIMARY KEY (id),
FOREIGN KEY (fk_categoria) REFERENCES tb_categorias (id_cat)
);

-- --------------CATEGORIAS-------------- --
INSERT tb_categorias (descricao, ativo) VALUES ("Bovino",true);
INSERT tb_categorias (descricao, ativo) VALUES ("Suino",true);
INSERT tb_categorias (descricao, ativo) VALUES ("Aves",true);
INSERT tb_categorias (descricao, ativo) VALUES ("Pertence feijoada",true);
INSERT tb_categorias (descricao, ativo) VALUES ("Embutidos",true);

-- ............PRODUTOS.......... --
INSERT tb_produtos (nome, preco, qntd_produto , fk_categoria) VALUES ("Asa",40.00,30,3);
INSERT tb_produtos (nome, preco, qntd_produto , fk_categoria) VALUES ("Picanha",20.00,30,1);
INSERT tb_produtos (nome, preco, qntd_produto , fk_categoria) VALUES ("Coxa de Frango",20.00,30,3);
INSERT tb_produtos (nome, preco, qntd_produto , fk_categoria) VALUES ("Bacon",30.00,30,1);
INSERT tb_produtos (nome, preco, qntd_produto , fk_categoria) VALUES ("Hambúrguer",60.00,30,5);
INSERT tb_produtos (nome, preco, qntd_produto , fk_categoria) VALUES ("Cupim",20.00,30,1);
INSERT tb_produtos (nome, preco, qntd_produto , fk_categoria) VALUES ("Peito de Frango",25.00,30,3);
INSERT tb_produtos (nome, preco, qntd_produto , fk_categoria) VALUES ("Orelha de Porco",20.00,30,4);

-- --------------CONSULTA---------- --
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00; -- SELECT * FROM tb_tabela WHERE preco >= 50.00 AND preco <= 100.00;(Também funciona) --
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON fk_categoria = id_cat;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON fk_categoria = id_cat WHERE id_cat = 1;

-- ATIVIDADE 5 --

CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id_cat bigint auto_increment,
nome_cat varchar(255) not null,
ativo boolean not null,
PRIMARY KEY (id_cat)
);

CREATE TABLE tb_produtos (
id bigint auto_increment,
produto varchar (255) not null,
preco double,
qntd_estoque int not null,
fk_categoria bigint,
PRIMARY KEY (id),
FOREIGN KEY (fk_categoria) REFERENCES tb_categorias (id_cat)
);

-- ............CATEGORIAS.......... --
INSERT tb_categorias (nome_cat, ativo) VALUES ("Pintura e Acessórios", true);
INSERT tb_categorias (nome_cat, ativo) VALUES ("Madeiras", true);
INSERT tb_categorias (nome_cat, ativo) VALUES ("Iluminação", true);
INSERT tb_categorias (nome_cat, ativo) VALUES ("Materiais Elétricos", true);
INSERT tb_categorias (nome_cat, ativo) VALUES ("Pisos", true);

-- ............PRODUTOS.......... --
INSERT tb_produtos (produto, preco, qntd_estoque, fk_categoria) 
VALUES ("Tinta",80.90,100, 1);

INSERT tb_produtos (produto, preco, qntd_estoque, fk_categoria)
VALUES ("Escadas Fixas",1000.70,90, 2);

INSERT tb_produtos (produto, preco, qntd_estoque, fk_categoria)
VALUES ("Lâmpadas",60.90,100, 3);

INSERT tb_produtos (produto, preco, qntd_estoque, fk_categoria)
VALUES ("Eletricista",90.55,200, 4);

INSERT tb_produtos (produto, preco, qntd_estoque, fk_categoria)
VALUES ("Pisos Laminados",60.90,100, 5);

INSERT tb_produtos (produto, preco, qntd_estoque, fk_categoria)
VALUES ("Pisos Cerâmicos",100.90,130, 5);

INSERT tb_produtos (produto, preco, qntd_estoque, fk_categoria) 
VALUES ("Pincéis",70.90,77, 1);

INSERT tb_produtos (produto, preco, qntd_estoque, fk_categoria) 
VALUES ("Vernizes",150.00,70, 1);

-- --------------CONSULTA---------- --
SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00; -- SELECT * FROM tb_tabela WHERE preco >= 50.00 AND preco <= 100.00;(Também funciona) --
SELECT * FROM tb_produtos WHERE produto LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON fk_categoria = id_cat;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON fk_categoria = id_cat WHERE id_cat = 1;

-- ATIVIDADE 6 --

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id_cat bigint auto_increment,
nome_cat varchar(255) not null,
mais_buscada boolean not null,
PRIMARY KEY (id_cat)
);

CREATE TABLE tb_cursos (
id bigint auto_increment,
nome varchar (255) not null,
preco double,
qntd_cursos int not null,
fk_categoria bigint,
PRIMARY KEY (id),
FOREIGN KEY (fk_categoria) REFERENCES tb_categorias (id_cat)
);

-- --------------CATEGORIAS-------------- --
INSERT tb_categorias (nome_cat, mais_buscada) VALUES ("Administração", true);
INSERT tb_categorias (nome_cat, mais_buscada) VALUES ("Contabilidade e Finanças", true);
INSERT tb_categorias (nome_cat, mais_buscada) VALUES ("Desenvolvimento Pessoal e Profissional", true);
INSERT tb_categorias (nome_cat, mais_buscada) VALUES ("Educação", true);
INSERT tb_categorias (nome_cat, mais_buscada) VALUES ("Tecnologia", true);

-- ............CURSOS.......... --
INSERT tb_cursos (nome, preco, qntd_cursos, fk_categoria) 
VALUES ("Administração Básico ao Avançado",80.80, 5, 1);

INSERT tb_cursos (nome, preco, qntd_cursos, fk_categoria) 
VALUES ("Matemática Financeira Básico ao Avançado",500.90, 5, 2);

INSERT tb_cursos (nome, preco, qntd_cursos, fk_categoria) 
VALUES ("Atendimento ao Público",600.90, 5, 3);

INSERT tb_cursos (nome, preco, qntd_cursos, fk_categoria) 
VALUES ("Comunicação Escrita",700.70, 5, 4);

INSERT tb_cursos (nome, preco, qntd_cursos, fk_categoria) 
VALUES ("Administrando Banco de Dados",800.90, 5, 5);

INSERT tb_cursos (nome, preco, qntd_cursos, fk_categoria) 
VALUES ("Fundamentos de TI: Hardware e Software",400.50, 5, 5);

INSERT tb_cursos (nome, preco, qntd_cursos, fk_categoria) 
VALUES ("Introdução ao JavaScript",1000.30, 5, 5);

INSERT tb_cursos (nome, preco, qntd_cursos, fk_categoria) 
VALUES ("Segurança em Tecnologia da Informação",700.20, 5, 5);

-- --------------CONSULTA---------- --
SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00; -- SELECT * FROM tb_tabela WHERE preco >= 50.00 AND preco <= 100.00;(Também funciona) --
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON fk_categoria = id_cat;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON fk_categoria = id_cat WHERE id_cat = 5;












