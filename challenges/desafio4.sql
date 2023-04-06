SELECT
    u.nome_usuario AS pessoa_usuaria,
    CASE
        WHEN MAX(YEAR(h.data_reproducao)) >= 2021 THEN 'Ativa'
        ELSE 'Inativa'
    END AS status_pessoa_usuaria

FROM SpotifyClone.usuarios as u
	INNER JOIN SpotifyClone.historicos as h
	ON u.usuario_id = h.usuario_id
GROUP BY
	u.nome_usuario
ORDER BY
	pessoa_usuaria ASC;