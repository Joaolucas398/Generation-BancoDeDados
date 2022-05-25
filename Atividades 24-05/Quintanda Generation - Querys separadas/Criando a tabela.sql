create table produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(3.2),
peso decimal(3.2),
categoria varchar(255),
data_colheita date,
primary key(id)

)