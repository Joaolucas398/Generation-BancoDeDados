select * from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id
where tb_categorias.nome like "%Uso liberado%";