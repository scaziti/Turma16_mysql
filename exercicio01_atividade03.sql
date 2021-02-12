create database db_escola;

use db_escola;

drop table tb_alunos;

create table tb_alunos(
	id bigint(50) auto_increment,
    nome varchar(50) not null,
    idade int(3),
    ano_letivo varchar(20) not null,
    nota double(10,2),
    
    primary key(id)
);

insert into tb_alunos (nome, idade, ano_letivo, nota) values ("Maria", 8, "Segunda série", 4.5);
insert into tb_alunos (nome, idade, ano_letivo, nota) values ("Joao", 9, "Segunda série", 10);
insert into tb_alunos (nome, idade, ano_letivo, nota) values ("Carlos", 8, "Segunda série", 6);
insert into tb_alunos (nome, idade, ano_letivo, nota) values ("Sabrina", 8, "Segunda série", 7);
insert into tb_alunos (nome, idade, ano_letivo, nota) values ("Antonie", 8, "Segunda série", 8);
insert into tb_alunos (nome, idade, ano_letivo, nota) values ("Shirley", 8, "Segunda série", 10);
insert into tb_alunos (nome, idade, ano_letivo, nota) values ("Fagner", 8, "Segunda série", 9);
insert into tb_alunos (nome, idade, ano_letivo, nota) values ("Gabriel", 8, "Segunda série", 4);

select * from tb_alunos;

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set nota = 10 where id = 1;