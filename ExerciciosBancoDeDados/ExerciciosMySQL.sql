-- Atividade 1 --

-- Criação do Banco de dados
CREATE DATABASE db_servico_rh;

-- Selecionar database
USE db_servico_rh;

-- Criação da tabela
CREATE TABLE tb_colaboradores (
id bigint AUTO_INCREMENT,
nome_completo varchar(255),
sexo varchar (255),
idade int,
cidade varchar(255),
salario int,

PRIMARY KEY (id)
);
ALTER TABLE tb_colaboradores MODIFY salario decimal (65, 3);

-- Insere dados para preencher a tabela
INSERT INTO tb_colaboradores (nome_completo, sexo, idade, cidade, salario)
VALUES ("Cláudia de Souza Lima", "Feminino", 44, "São Paulo", 2.500);

INSERT INTO tb_colaboradores (nome_completo, sexo, idade, cidade, salario)
VALUES ("Eduardo Santos", "Masculino", 32, "São Paulo", 2.000);

INSERT INTO tb_colaboradores (nome_completo, sexo, idade, cidade, salario)
VALUES ("Eloisa Bezerra Da Costa", "Feminino", 29, "São Paulo", 3.500);

INSERT INTO tb_colaboradores (nome_completo, sexo, idade, cidade, salario)
VALUES ("Carlos Bitencourt", "Masculino", 30, "São Paulo", 3.500);

INSERT INTO tb_colaboradores (nome_completo, sexo, idade, cidade, salario)
VALUES ("Helena Oliveira Borges", "Feminino", 37, "São Paulo", 4.500);

SELECT * FROM tb_colaboradores WHERE salario > 2.000;
SELECT * FROM tb_colaboradores WHERE salario < 2.000;

UPDATE tb_colaboradores SET salario = 1.880 WHERE id = 2;

-- Confirmar a atualização do salario
SELECT * FROM tb_colaboradores WHERE salario < 2.000;

-- Atividade 2 --

CREATE DATABASE db_ecommerce;

USE db_ecommerce; 

CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
marca varchar(255),
categoria varchar (255),
qntd_estoque bigint,
preco decimal (65,3),

PRIMARY KEY (id)

);

INSERT INTO tb_produtos (marca, categoria, qntd_estoque,preco)
VALUES ("Aché","Rémedios de colesterol", 90, 10.5);

INSERT INTO tb_produtos (marca, categoria, qntd_estoque,preco)
VALUES ("Loreal","Tintura de cabelo", 100, 30.5);

INSERT INTO tb_produtos (marca, categoria, qntd_estoque,preco)
VALUES ("Yoki","Salgado", 300, 3.5);

INSERT INTO tb_produtos (marca, categoria, qntd_estoque,preco)
VALUES ("Yakult","Leite Fermentado", 90, 15.5);

INSERT INTO tb_produtos (marca, categoria, qntd_estoque,preco)
VALUES ("Leite Moça","Leite Condensado", 150, 7.5);

INSERT INTO tb_produtos (marca, categoria, qntd_estoque,preco)
VALUES ("Q-Boa","Água Sanitária", 50, 10.5);

INSERT INTO tb_produtos (marca, categoria, qntd_estoque,preco)
VALUES ("Nescau","Achocolatado em pó", 200, 8.5);

INSERT INTO tb_produtos (marca, categoria, qntd_estoque,preco)
VALUES ("Aché","Rémedios", 90, 10.5);

INSERT INTO tb_produtos (marca, categoria, qntd_estoque,preco)
VALUES ("Toddynho","Achocolatado Pronto", 300, 5.5);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET qntd_estoque = 550 WHERE id = 2;

-- Confirmar a atualização dos produtos
SELECT * FROM tb_produtos WHERE qntd_estoque > 500;

-- Confirmar a atualização dos produtos
SELECT * FROM tb_produtos;

-- Atividade 3 --

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
id bigint AUTO_INCREMENT,
nome_completo varchar(255),
sexo varchar(255),
idade int,
ano varchar(255),
nota decimal(65, 1),

PRIMARY KEY (id) 
);

INSERT INTO tb_alunos (nome_completo, sexo, idade, ano, nota)
VALUES ("Ademir Sousa", "Masculino", 15, "1 ano do ensino Médio", 7.5);

INSERT INTO tb_alunos (nome_completo, sexo, idade, ano, nota)
VALUES ("Luisa Barreto Gomes", "Feminino", 16, "1 ano do ensino Médio", 8.5);

INSERT INTO tb_alunos (nome_completo, sexo, idade, ano, nota)
VALUES ("Natália Ribeiro", "Feminino", 15, "1 ano do ensino Médio", 6.5);

INSERT INTO tb_alunos (nome_completo, sexo, idade, ano, nota)
VALUES ("Renato Russo ", "Masculino", 17, "2 ano do ensino Médio", 5.5);

INSERT INTO tb_alunos (nome_completo, sexo, idade, ano, nota)
VALUES ("Welligton Santos", "Masculino", 15, "1 ano do ensino Médio", 9.5);

INSERT INTO tb_alunos (nome_completo, sexo, idade, ano, nota)
VALUES ("Sabrina De Lima", "Feminino", 15, "1 ano do ensino Médio", 9.0);

INSERT INTO tb_alunos (nome_completo, sexo, idade, ano, nota)
VALUES ("Joana Oliveira", "Feminino", 15, "1 ano do ensino Médio", 10.0);

INSERT INTO tb_alunos (nome_completo, sexo, idade, ano, nota)
VALUES ("Gustavo Teixeira", "Masculino", 17, "2 ano do ensino Médio", 8.5);

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE  nota < 7.0;

UPDATE tb_alunos SET nota = 6.3 WHERE id = 8;

-- Confirmar a atualização da nota
SELECT * FROM tb_alunos WHERE nota < 7.0;






































