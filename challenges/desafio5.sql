SELECT 
    mus.nome_musica AS cancao,
    COUNT(his.musica_id) AS reproducoes

FROM SpotifyClone.musicas AS mus

INNER JOIN SpotifyClone.historicos AS his
ON mus.musica_id = his.musica_id

GROUP BY
	mus.nome_musica
ORDER BY
	reproducoes DESC, cancao ASC 
LIMIT 2;
