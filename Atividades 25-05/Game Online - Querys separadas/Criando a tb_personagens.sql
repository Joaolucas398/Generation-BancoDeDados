create table tb_personagens(
id bigint auto_increment,
nome varchar (255),
poder_ataque varchar (255),
poder_defesa varchar (255),
skin varchar (255),
classe_id bigint not null,
primary key(id),
foreign key(classe_id) references tb_classe(id)

)