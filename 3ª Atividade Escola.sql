create database escola;

use escola;

create table estudantes(
id bigint auto_increment,
nome varchar (50),
nota decimal(3,1),
idade int,
periodo varchar(6),
sala int,
primary key(id)



);


insert into estudantes(nome,nota,idade,periodo,sala) values ("joão",10,16,"manhã", 1 );
insert into estudantes(nome,nota,idade,periodo,sala) values ("luciana",6,15,"tarde", 5 );
insert into estudantes(nome,nota,idade,periodo,sala) values ("carlos",7.5,17,"noite", 6);
insert into estudantes(nome,nota,idade,periodo,sala) values ("lucas",9,17,"manhã", 8 );
insert into estudantes(nome,nota,idade,periodo,sala) values ("ruan",5,14,"tarde", 9 );

select * from estudantes where nota > 7;
select * from estudantes nota where nota < 7; 

update estudantes set nome = "João de Souza" where id=1 ;
update estudantes set nome = "Luciana da silva" where id=2 ;
update estudantes set nome = "Carlos Barbosa" where id=3 ;
update estudantes set nome = "Lucas Ramos" where id=4 ;
update estudantes set nome = "Ruan Gomes" where id=5 ;