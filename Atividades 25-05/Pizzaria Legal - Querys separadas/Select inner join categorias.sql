select * from tb_pizzas 
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id
where tb_categorias.nome like "%Pizza romana%";