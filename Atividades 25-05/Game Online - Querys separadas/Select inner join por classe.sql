select * from tb_personagens 
inner join tb_classe on tb_classe.id = tb_personagens.classe_id
where tb_classe.nome_classe like "%Controladore%"