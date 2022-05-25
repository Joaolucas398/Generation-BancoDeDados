create database rh;

use rh;
create table colaboradores(
id bigint auto_increment,
nome varchar (50),
idade int (2),
salario decimal (10,2),
cpf varchar (11),
cargo varchar (50),
primary key (id)

);

insert into colaboradores(nome,idade,salario,cpf,cargo) values ("lucas",22,2200,"00011122220","dev.pl");
insert into colaboradores(nome,idade,salario,cpf,cargo) values ("ruan",22,1500,"00033344420","dev.jr");
insert into colaboradores(nome,idade,salario,cpf,cargo) values ("gabriele",22,2500,"00055566620","dev.sr");
insert into colaboradores(nome,idade,salario,cpf,cargo) values ("Fabiola",22,2300,"00055566620","dev.pl");
insert into colaboradores(nome,idade,salario,cpf,cargo) values ("jannifer",22,2000,"00055566620","dev.pl");


select * from colaboradores where salario > 2000; 
select * from colaboradores where salario < 2000; 

update colaboradores set nome = "João Lucas" where id=1 ;
