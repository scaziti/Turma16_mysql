create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(50) not null,
    ativo boolean not null,
    
    PRIMARY KEY (id)
);

create table tb_produtos(
	id bigint auto_increment,
    descricao varchar(50) not null,
    preco decimal (5,2) not null,
    estoque int, 
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (nome, ativo) values ("BOVINA", 1);
insert into tb_categoria (nome, ativo) values ("SUINA", 1);
insert into tb_categoria (nome, ativo) values ("CAPRINA", 1);
insert into tb_categoria (nome, ativo) values ("AVES", 1);
insert into tb_categoria (nome, ativo) values ("EMBUTIDOS", 1);

select * from tb_categoria;

insert into tb_produtos (descricao, preco, estoque, categoria_id) values ("PICANHA", 50.50, 100, 1);
insert into tb_produtos (descricao, preco, estoque, categoria_id) values ("PICANHA S", 40.50, 100, 2);
insert into tb_produtos (descricao, preco, estoque, categoria_id) values ("MAMINHA", 30.50, 100, 1);
insert into tb_produtos (descricao, preco, estoque, categoria_id) values ("ALCATRA", 80.50, 100, 1);
insert into tb_produtos (descricao, preco, estoque, categoria_id) values ("PEITO", 20.50, 100, 4);
insert into tb_produtos (descricao, preco, estoque, categoria_id) values ("LINGUIÇA", 15.50, 100, 5);
insert into tb_produtos (descricao, preco, estoque, categoria_id) values ("CUPIM", 100.50, 500, 1);
insert into tb_produtos (descricao, preco, estoque, categoria_id) values ("PALETA", 150.50, 100, 3);
insert into tb_produtos (descricao, preco, estoque, categoria_id) values ("FILE MIGNON", 200.50, 100, 1);

SELECT * FROM tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where descricao like "%C%";

SELECT descricao, preco, estoque, tb_categoria.nome
FROM tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id;

SELECT descricao, preco, tb_categoria.nome
FROM tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id
WHERE tb_categoria.nome = "BOVINA";


SELECT descricao, preco, tb_categoria.id, tb_categoria.nome
FROM tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.categoria_id = tb_categoria.id
WHERE tb_produtos.preco between 50 and 1000;
    