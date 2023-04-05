SELECT
    usu.nome_usuario AS pessoa_usuaria,
    COUNT(his.musica_id) AS musicas_ouvidas,
    ROUND(SUM(mus.duracao_musica)/60, 2) AS total_minutos

FROM SpotifyClone.usuarios AS usu

INNER JOIN SpotifyClone.historicos AS his
	ON usu.usuario_id = his.usuario_id
INNER JOIN SpotifyClone.musicas AS mus
	ON his.musica_id = mus.musica_id
GROUP BY
	usu.nome_usuario
ORDER BY
	usu.nome_usuario ASC;