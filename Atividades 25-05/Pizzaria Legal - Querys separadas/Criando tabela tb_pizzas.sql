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