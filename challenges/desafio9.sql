SELECT
  COUNT(his.musica_id) AS musicas_no_historico

FROM SpotifyClone.historicos AS his

INNER JOIN SpotifyClone.usuarios AS usu
	ON his.usuario_id = usu.usuario_id

WHERE usu.usuario_id = 1;
