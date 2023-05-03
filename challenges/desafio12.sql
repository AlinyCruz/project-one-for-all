SELECT
art.nome_artista AS artista,
CASE 
	WHEN COUNT(fav.musica_id) >= 5 THEN 'A'
  WHEN COUNT(fav.musica_id) BETWEEN 3 AND 4 THEN 'B'
  WHEN COUNT(fav.musica_id) BETWEEN 1 AND 2 THEN 'C'
	ELSE '-'
END AS ranking

FROM
SpotifyClone.favoritas AS fav

LEFT JOIN SpotifyClone.musicas AS mus
	ON fav.musica_id = mus.musica_id
LEFT JOIN SpotifyClone.albuns AS alb
	ON mus.album_id = alb.album_id
LEFT JOIN SpotifyClone.artistas AS art
	ON alb.artista_id = art.artista_id
GROUP BY
	artista
ORDER BY
	COUNT(fav.musica_id) DESC,
    artista ASC;