create database brecho;

create table Produtos(

id bigint auto_increment,
nome varchar(255), 
preco decimal(3.2),
tamanho varchar(255),
tipo varchar(255),
cor varchar(255),
primary key (id)


);

insert into produtos(nome,preco,tamanho,tipo,cor)values("Camisa",59.99,"M","Esportiva","Verde");
insert into produtos(nome,preco,tamanho,tipo,cor)values("Calça",100.99,"P","Retro","Vermelha");
insert into produtos(nome,preco,tamanho,tipo,cor)values("Camisa",60.99,"M","Street","Azul");
insert into produtos(nome,preco,tamanho,tipo,cor)values("Camisa",70.99,"G","Glam","Roxo");
insert into produtos(nome,preco,tamanho,tipo,cor)values("Camisa",45.99,"M","Hipster","Branco");
insert into produtos(nome,preco,tamanho,tipo,cor)values("Corta Vento",105.99,"P","Esportiva","Amarelo");
insert into produtos(nome,preco,tamanho,tipo,cor)values("Meia",20.99,"M","Retro","Preto");
insert into produtos(nome,preco,tamanho,tipo,cor)values("Camisa",59.99,"G","Esportiva","Preto");

select * from produtos where preco > 50;
select * from produtos where preco < 50;
select * from produtos where id=2;

update produtos set nome = "Calça" where id=3;
update produtos set nome = "Calça" where id=4;

delete from produtos where id=2;
delete from produtos where id=3;

