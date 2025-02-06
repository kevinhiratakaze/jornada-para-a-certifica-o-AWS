-- mostrar a posição de cada usuário no ranking
select usuaria.nome, ranking.posicao, ranking.pontuacao
from ranking
join usuaria 
on ranking.fk_id_usuario = usuaria.id
order by ranking.posicao asc;

-- listar os usuários e seu progresso na jornada de aprendizado
select usuaria.nome, jornada.titulo, progresso_jornada.progresso
from usuaria
join progresso_jornada 
on usuaria.id = progresso_jornada.fk_id_usuario
join jornada 
on progresso_jornada.fk_id_jornada = jornada.id
order by progresso_jornada.progresso desc;

-- mostrar o número total de simulados feitos por cada usuário
select usuaria.nome, count(simulado.id) as total_simulados
from usuaria
left join simulado 
on usuaria.id = simulado.fk_id_usuario
group by usuaria.nome
order by total_simulados desc;
