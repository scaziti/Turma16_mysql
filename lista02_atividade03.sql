create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(50) not null,
    ativo boolean,
    
    PRIMARY KEY(id)
);

drop table tb_produto;

create table tb_produto(
	id bigInt auto_increment,
    descricao varchar(50) not null,
    preco decimal (5,2) not null,
    quantidade_estoque bigint,
    categoria_id bigint,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) references tb_categoria (id)
);


INSERT INTO tb_categoria (nome, ativo) VALUES ("Antialergicos", 1);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Diurético", 1);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Antiinflamatorio Não esteroidal", 1);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Antiinflamatorio esteroidal", 1);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Cardiogênico", 1);

select * from tb_categoria;

insert into tb_produto(descricao, preco, quantidade_estoque, categoria_id) values ("Loratadina", 10.50, 50, 1);
insert into tb_produto(descricao, preco, quantidade_estoque, categoria_id) values ("Histadil", 30.50, 30, 1);
insert into tb_produto(descricao, preco, quantidade_estoque, categoria_id) values ("Cortidoide", 8.50, 100, 4);
insert into tb_produto(descricao, preco, quantidade_estoque, categoria_id) values ("Coract", 520.50, 50, 5);
insert into tb_produto(descricao, preco, quantidade_estoque, categoria_id) values ("Loratadina", 10.50, 50, 1);
insert into tb_produto(descricao, preco, quantidade_estoque, categoria_id) values ("Loratadina", 10.50, 50, 1);
insert into tb_produto(descricao, preco, quantidade_estoque, categoria_id) values ("Loratadina", 10.50, 50, 1);
insert into tb_produto(descricao, preco, quantidade_estoque, categoria_id) values ("Loratadina", 10.50, 50, 1);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where descricao like "%C%";

SELECT descricao, preco, quantidade_estoque, tb_categoria.nome
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT descricao, preco, tb_categoria.nome
FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE nome = "Cardiogênico";
