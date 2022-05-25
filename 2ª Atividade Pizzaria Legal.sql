/*Criando banco*/

create database db_pizzaria_legal;

/*Criando tabela categorias*/

create table tb_categorias(

id bigint auto_increment,
nome varchar(255),
tamanho varchar(255),
primary key(id)


);

/*Criando tabela pizzas*/

create table tb_pizzas(

id bigint auto_increment,
nome varchar(255),
sabor varchar(255),
bordas boolean,
valor bigint,
categorias_id bigint,

primary key(id),
foreign key (categorias_id) references tb_categorias(id)



);

/*Todos os inserts*/

insert into tb_categorias(nome,tamanho)values("Pizza frita","Grande");
insert into tb_categorias(nome,tamanho)values("Pizza Romana","Pequena");
insert into tb_categorias(nome,tamanho)values("Pizza napolitana","Media");
insert into tb_categorias(nome,tamanho)values("Pizza Sfincione","Grande");
insert into tb_categorias(nome,tamanho)values("Pizza Pissalandrea","Media");

insert into tb_pizzas(nome,sabor,bordas,valor,categorias_id)values("Capricciosa","Calabresa",1,45.00,1);
insert into tb_pizzas(nome,sabor,bordas,valor,categorias_id)values("Parmiggiana","Portuguesa",1,50.00,2);
insert into tb_pizzas(nome,sabor,bordas,valor,categorias_id)values("Marguerita e Marinara","Califórnia",1,55.00,3);
insert into tb_pizzas(nome,sabor,bordas,valor,categorias_id)values("Diavola","Marguerita",0,25.75,3);
insert into tb_pizzas(nome,sabor,bordas,valor,categorias_id)values("stagioni","Frango com catupiry",0,60.00,5);
insert into tb_pizzas(nome,sabor,bordas,valor,categorias_id)values("Bianca","Muçarela",0,100.50,5);
insert into tb_pizzas(nome,sabor,bordas,valor,categorias_id)values("Boscaiola","Napolitana",1,111.00,4);
insert into tb_pizzas(nome,sabor,bordas,valor,categorias_id)values("Frutti di Mare","Creme de avelã com frutas",0,75.50,4);

/*Todos os selects*/

select * from tb_pizzas where valor > 45 ;
select * from tb_pizzas where valor > 50 and valor < 100 ;
select * from tb_pizzas where nome like "%m%";

select * from tb_pizzas 
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;

select * from tb_pizzas 
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id
where tb_categorias.nome like "%Pizza romana%";