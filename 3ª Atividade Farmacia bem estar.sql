/*Criando banco*/

create database db_farmacia_bem_estar;

/*Criando tabela categorias*/
use db_farmacia_bem_estar;
create table tb_categorias(

id bigint auto_increment,
nome varchar(255),
tarja varchar(255),
primary key(id)


);

/*Criando tabela produtos*/

create table tb_produtos(

id bigint auto_increment,
nome varchar(255),
validade varchar(255),
codigo bigint,
valor bigint,
categorias_id bigint,

primary key(id),
foreign key (categorias_id) references tb_categorias(id)



);

/*Todos os inserts*/

insert into tb_categorias(nome,tarja)values("Controle especial","preta");
insert into tb_categorias(nome,tarja)values("Uso liberado","Vermelho");
insert into tb_categorias(nome,tarja)values("Uso monitorado","Amarela");
insert into tb_categorias(nome,tarja)values("Uso pediatrico","Azul");
insert into tb_categorias(nome,tarja)values("Uso gestacional","Roxo");

insert into tb_produtos(nome,valida,codigo,valor,categorias_id)values("Dipirona","11/01/23",56,2.50,1);
insert into tb_produtos(nome,valida,codigo,valor,categorias_id)values("Aspirina","11/01/23",51,50.00,2);
insert into tb_produtos(nome,valida,codigo,valor,categorias_id)values("Metformina","11/01/23",65,55.00,3);
insert into tb_produtos(nome,valida,codigo,valor,categorias_id)values("Glibenclamida","11/01/23",65,25.75,3);
insert into tb_produtos(nome,valida,codigo,valor,categorias_id)values("Losartana","11/01/23",45,60.00,5);
insert into tb_produtos(nome,valida,codigo,valor,categorias_id)values("Hidro","11/01/23",456,100.50,5);
insert into tb_produtos(nome,valida,codigo,valor,categorias_id)values("Diclofenaco","11/01/23",456,111.00,4);
insert into tb_produtos(nome,valida,codigo,valor,categorias_id)values("naproxeno","11/01/23",4560,75.50,4);

/*Todos os selects*/

select * from tb_produtos where valor > 50 ;
select * from tb_produtos where valor > 5 and valor < 60 ;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select * from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id
where tb_categorias.nome like "%Uso liberado%";