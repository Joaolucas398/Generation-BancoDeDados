create database ecommerce;

use ecommerce;

create table produto (
id bigint auto_increment,
nome varchar (50) not null,
preco decimal (10,2),
categoria varchar (20),
cor varchar(20),
peso int,
primary key(id)

 


);

insert into produto(nome,preco,categoria,cor,peso) values ("Carteira",35.99,"acessorios", "marrom",100);
insert into produto(nome,preco,categoria,cor,peso) values ("Carteira",35.99,"acessorios", "vermelha",100);
insert into produto(nome,preco,categoria,cor,peso) values ("Carteira",35.99,"acessorios", "preta",100);
insert into produto(nome,preco,categoria,cor,peso) values ("Carteira",35.99,"acessorios", "azul",100);
insert into produto(nome,preco,categoria,cor,peso) values ("Carteira",35.99,"acessorios", "verde",100);
insert into produto(nome,preco,categoria,cor,peso) values ("Carteira",35.99,"acessorios", "rosa",100);
insert into produto(nome,preco,categoria,cor,peso) values ("Carteira",35.99,"acessorios", "amarela",100);
insert into produto(nome,preco,categoria,cor,peso) values ("Carteira",35.99,"acessorios", "cinza",100);

select preco from produto where preco > 500;
select preco from produto where preco < 500;


update produto set preco = 645  where id=4;
update produto set preco = 501  where id=5;
update produto set preco = 457  where id=8;

