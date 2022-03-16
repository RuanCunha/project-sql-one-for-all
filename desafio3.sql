SELECT
	u.usuario_nome AS usuario,
    COUNT(lr.cancao_id) AS qtde_musicas_ouvidas,
    ROUND((SUM(duracao_segundos)/60), 2) AS total_minutos
FROM
	SpotifyClone.usuarios AS u
		INNER JOIN SpotifyClone.lista_reproducao AS lr ON u.usuario_id = lr.usuario_id
        INNER JOIN SpotifyClone.cancoes AS c ON lr.cancao_id = c.cancao_id
GROUP BY 
	u.usuario_nome
ORDER BY
	u.usuario_nome ASC;