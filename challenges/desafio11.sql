SELECT
alb.nome_album AS album,
COUNT(fav.musica_id) AS favoritadas

FROM
SpotifyClone.favoritas AS fav 

INNER JOIN SpotifyClone.musicas AS mus
	ON fav.musica_id = mus.musica_id
INNER JOIN SpotifyClone.albuns AS alb
	ON mus.album_id = alb.album_id
GROUP BY
	album
ORDER BY
	favoritadas DESC, album ASC
LIMIT 3;
