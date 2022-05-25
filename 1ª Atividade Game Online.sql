/*Criando o banco*/

create database bd_generation_game_online;

/*Criando a tabela classe*/

create table tb_classe(
id bigint auto_increment,
nome_classe varchar (255),
funcao varchar(255),
primary key(id)


);

/*Criando a tabela personagens*/

create table tb_personagens(
id bigint auto_increment,
nome varchar (255),
poder_ataque varchar (255),
poder_defesa varchar (255),
skin varchar (255),
classe_id bigint not null,
primary key(id),
foreign key(classe_id) references tb_classe(id)

);

/*Inserindo classes*/

insert into tb_classe(nome_classe,funcao)values("Suporte","Curar seus aliados");
insert into tb_classe(nome_classe,funcao)values("Duelista","Roubar informaçao da localização de inimigos");
insert into tb_classe(nome_classe,funcao)values("Controladore","Criar proteções para se e seus aliados");
insert into tb_classe(nome_classe,funcao)values("Iniciadore","Abrir caminho para seus aliados");
insert into tb_classe(nome_classe,funcao)values("Sentinela","Operar equipamentes e maquinas");

/*Inserindo personagens*/

insert into tb_personagens(nome,poder_ataque,poder_defesa,skin,classe_id)values("Sage",2500,5000,"Azul",1);
insert into tb_personagens(nome,poder_ataque,poder_defesa,skin,classe_id)values("Fenix",2022,1500,"Vermelho",2);
insert into tb_personagens(nome,poder_ataque,poder_defesa,skin,classe_id)values("Raze",1500,2500,"Laranja",3);
insert into tb_personagens(nome,poder_ataque,poder_defesa,skin,classe_id)values("Viper",1700,4500,"Verde",4);
insert into tb_personagens(nome,poder_ataque,poder_defesa,skin,classe_id)values("Cypher",2320,3200,"branco",5);
insert into tb_personagens(nome,poder_ataque,poder_defesa,skin,classe_id)values("Sova",3000,2640,"Azul",3);
insert into tb_personagens(nome,poder_ataque,poder_defesa,skin,classe_id)values("Reyna",3200,1500,"preto",5);
insert into tb_personagens(nome,poder_ataque,poder_defesa,skin,classe_id)values("Omen",2000,5000,"Roxo",5);

/*Todos os Selects */

select * from tb_personagens where poder_ataque > 2000 ;
select * from tb_personagens where poder_ataque < 2000; 
select * from tb_personagens where poder_ataque < 2000 and poder_ataque > 1000 ;
select * from tb_personagens where nome like "%c%";

select * from tb_personagens 
inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select * from tb_personagens 
inner join tb_classe on tb_classe.id = tb_personagens.classe_id
where tb_classe.nome_classe like "%Controladore%";
