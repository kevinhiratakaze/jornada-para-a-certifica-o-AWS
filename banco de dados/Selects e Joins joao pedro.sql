SELECT * FROM usuaria;

--Mostra os usuarios que conseguiram pontuação maior que 70
SELECT u.nome, s.pontuacao, s.data_realizacao
FROM simulado s
JOIN usuaria u ON s.fk_id_usuario = u.id
WHERE s.pontuacao > 70
ORDER BY s.pontuacao DESC;

--Mostra os usuarios que mais fizeram o simudado
SELECT u.nome, COUNT(s.id) AS tentativas
FROM usuaria u
LEFT JOIN simulado s ON u.id = s.fk_id_usuario
GROUP BY u.id, u.nome
ORDER BY tentativas DESC;

--Mostra qual periodo que mais fizeram o simulado
SELECT TO_CHAR(s.data_realizacao, 'YYYY-MM') AS mes, COUNT(s.id) AS total_tentativas
FROM simulado s
GROUP BY TO_CHAR(s.data_realizacao, 'YYYY-MM')
ORDER BY total_tentativas DESC
LIMIT 1;
