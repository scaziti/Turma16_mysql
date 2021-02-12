-- cria um banco de dados (comentário)
create database db_servico_rh;

-- acessa banco de dados
use db_servico_rh;

-- cria minha tabela e preenche as colunas
create table tb_funcionarios
(
	id bigint auto_increment,
	nome varchar(255) not null,
	idade int not null,
	salario double not null,
	primary key(id)
);

-- O * permite trazer tudo dessa tabela;
select * from tb_funcionarios;

-- seleciono apenas os dados que desejo da tabela, indicando as chaves e tabela
select nome, salario from tb_funcionarios;

-- seleciono e trago apenas as colunas nome e salário, onde os salários forem maior que 12K
select nome, salario from tb_funcionarios where salario > 12000;

-- inserir dados na tabela
insert into tb_funcionarios (nome, idade, salario) values ("Raphael Scaziti", 28, 10000);
insert into tb_funcionarios (nome, idade, salario) values ("Jessica Any", 28, 12000);

-- incluir uma coluna nova
alter table tb_funcionarios
add cargo varchar(255);

-- alterar a descrição da coluna (informo qual quero alterar e o novo nome)
alter table tb_funcionarios change cargo cargo_funcionario varchar(255);

-- atualizo uma linha da tabela, informando a coluna e o id (que nesse caso é único)
update tb_funcionarios set salario = 20000 where id = 2;

-- excluo as informações do id 1
delete from tb_funcionarios where id = 1;

-- adicionei o cargo no id 3
update tb_funcionarios set cargo_funcionario = "Desenvolvedor Java" where id = 3;