create database db_generation_game_online;

use db_generation_game_online;

drop table tb_classe;
drop table tb_personagem;

create table tb_classe(
	id bigInt auto_increment,
    nome_classe varchar(50) not null,
    ativo boolean,
    
    Primary key(id)
);

select * from tb_classe;

create table tb_personagem(
	id_personagem bigInt auto_increment,
    nome_personagem varchar(50) not null,
    poder_ataque bigint,
    poder_defesa bigint,
    vida bigint,
    id_classe bigInt,
    
    Primary key(id_personagem),
    foreign key (id_classe) references tb_classe (id)
);

insert into tb_classe (nome_classe, ativo) values ("Guerreiro", 1);
insert into tb_classe (nome_classe, ativo) values ("Arqueiro", 1);
insert into tb_classe (nome_classe, ativo) values ("Bruxo", 1);
insert into tb_classe (nome_classe, ativo) values ("Elfo", 1);
insert into tb_classe (nome_classe, ativo) values ("Mestre", 1);

select * from tb_classe;

insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, vida, id_classe) values ("Groom", 100, 90, 200, 1);
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, vida, id_classe) values ("Lud", "80", "70", 80, 1);
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, vida, id_classe) values ("Mon", "40", "70", 150, 2);
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, vida, id_classe) values ("Century", "60", "70", 80, 2);
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, vida, id_classe) values ("Tree", "10", "70", 80, 3);
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, vida, id_classe) values ("Kind", "20", "60", 80, 4);
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, vida, id_classe) values ("Loop", "50", "70", 80, 4);
insert into tb_personagem (nome_personagem, poder_ataque, poder_defesa, vida, id_classe) values ("Var", "80", "90", 150, 5);


select * from tb_personagem;

select * from tb_personagem where poder_ataque > 20;

select * from tb_personagem where poder_defesa between 40 and 70;

select * from tb_personagem where nome_personagem like "%C%";

SELECT nome_personagem, poder_ataque, poder_defesa, vida, tb_classe.nome_classe
FROM tb_personagem
INNER JOIN tb_classe
ON tb_personagem.id_classe = tb_classe.id;

SELECT id_personagem, nome_personagem, tb_classe.nome_classe
FROM tb_personagem
INNER JOIN tb_classe
ON tb_personagem.id_classe = tb_classe.id
where nome_classe = "Arqueiro";


