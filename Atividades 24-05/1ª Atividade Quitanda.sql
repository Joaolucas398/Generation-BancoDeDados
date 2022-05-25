
/*Crianto o banco de dados*/

create database quintanda_gen;

/*Crianto a tabela*/

create table produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(3.2),
peso decimal(3.2),
categoria varchar(255),
data_colheita date,
primary key(id)

);

/*Inserindo dados*/

insert into produtos(nome,preco,peso,categoria,codigo)values("Maçã",1.00,50,"fruta",1321654);
insert into produtos(nome,preco,peso,categoria,codigo)values("Limão",0.50,20,"fruta",98798724);
insert into produtos(nome,preco,peso,categoria,codigo)values("Melancia",5.00,2.50,"fruta",2098521);
insert into produtos(nome,preco,peso,categoria,codigo)values("Alface",2.50,75,"Legume", 654654);
insert into produtos(nome,preco,peso,categoria,codigo)values("Beterraba",1.00,50,"fruta",8797);
insert into produtos(nome,preco,peso,categoria,codigo)values("Brócolis",0.20,50,"fruta",987987);
insert into produtos(nome,preco,peso,categoria,codigo)values("Cenoura",0.50,30,"fruta",6545);
insert into produtos(nome,preco,peso,categoria,codigo)values("Banana",0.75,50,"fruta",2654654);

/*selecionando dados*/

select * from produtos where categoria = "Fruta";
select * from produtos where categoria = "Legume";

/*Atualizando dados*/

update produtos set categoria = "Legume" where id=4;
update produtos set categoria = "Legume" where id=5;
update produtos set categoria = "Legume" where id=6;
update produtos set categoria = "Legume" where id=7;
update produtos set categoria = "Legume" where id=8; 

/*Deletando dados*/

delete from produtos where categoria = "Legume";
