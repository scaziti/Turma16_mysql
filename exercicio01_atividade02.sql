create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	codigo bigint(50) auto_increment,
    descricao varchar(50) not null,
    marca varchar(30) not null,
    preco double(10,2) not null, 
    estoque int(100) not null,
    
    primary key(codigo)
);

insert into tb_produtos (descricao, marca, preco, estoque) values ("RTX 2080", "NVDIA", 12500.00, 20);
insert into tb_produtos (descricao, marca, preco, estoque) values ("MOUSE", "RYZER", 450.00, 10);
insert into tb_produtos (descricao, marca, preco, estoque) values ("TECLADO", "REDDRAGON", 200.00, 50);
insert into tb_produtos (descricao, marca, preco, estoque) values ("RTX 2080", "NVDIA", 12500.00, 20);
insert into tb_produtos (descricao, marca, preco, estoque) values ("RTX 2080", "NVDIA", 12500.00, 20);
insert into tb_produtos (descricao, marca, preco, estoque) values ("RTX 2080", "NVDIA", 12500.00, 20);
insert into tb_produtos (descricao, marca, preco, estoque) values ("RTX 2080", "NVDIA", 12500.00, 20);
insert into tb_produtos (descricao, marca, preco, estoque) values ("RTX 2080", "NVDIA", 12500.00, 20);

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set descricao = "MONITOR 24''" where codigo = 1;