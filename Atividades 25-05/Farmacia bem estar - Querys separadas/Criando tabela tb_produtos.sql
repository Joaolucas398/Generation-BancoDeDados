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