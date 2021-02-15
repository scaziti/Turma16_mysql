create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(50) not null,
    ativo boolean,
	
    Primary Key (id)
);

insert into tb_categoria (nome, ativo) values ("Salgada", 1);
insert into tb_categoria (nome, ativo) values ("Doce", 1);
insert into tb_categoria (nome, ativo) values ("Brotinho", 1);
insert into tb_categoria (nome, ativo) values ("Meio-Meio", 1);
insert into tb_categoria (nome, ativo) values ("Calzone", 0);

select * from tb_categoria;

create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(50) not null,
    preco decimal(4,2),
    categoria_id bigint not null,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor, preco, categoria_id) values ("Mussarela", 35.40, 1);
insert into tb_pizza (sabor, preco, categoria_id) values ("Calabresa", 38.40, 1);
insert into tb_pizza (sabor, preco, categoria_id) values ("Chocolate", 40.00, 2);
insert into tb_pizza (sabor, preco, categoria_id) values ("Mussarela", 25.40, 3);
insert into tb_pizza (sabor, preco, categoria_id) values ("Morango", 32.90, 2);
insert into tb_pizza (sabor, preco, categoria_id) values ("Atum e queijo", 45.10, 4);
insert into tb_pizza (sabor, preco, categoria_id) values ("Misto", 50.50, 5);
insert into tb_pizza (sabor, preco, categoria_id) values ("Rucula", 28.40, 1);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "%C%";

SELECT sabor, preco, tb_categoria.nome
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;

SELECT sabor, preco, tb_categoria.nome
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.nome = "Doce";