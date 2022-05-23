use ecommerce;

create table produto (
id bigint auto_increment,
nome varchar (50) not null,
preco decimal (10,2),
categoria varchar (20),
cor varchar(20),
peso int,
primary key(id)

 


)