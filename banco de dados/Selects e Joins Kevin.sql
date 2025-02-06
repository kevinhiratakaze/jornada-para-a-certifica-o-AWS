-- Select Simples da Tabela usuaria
select * from usuaria;

-- Select Simples da Tabela Questões, mostrano a pergunta e resposta correta
select pergunta, resposta from questoes;


-- Inner Join dos usuário que fizeram pelo menos 1 Simulado
select usuaria.nome
from usuaria
inner join simulado 
on usuaria.id = simulado.fk_id_usuario;


-- Inner join que vai verificar os usuários e organiza eles por ranking
select usuaria.nome, ranking.pontuacao
from ranking
join usuaria 
on ranking.fk_id_usuario = usuaria.id
order by ranking.pontuacao desc;

