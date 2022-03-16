SELECT
	COUNT(lr.data_reproducao) AS quantidade_musicas_no_historico
FROM
	SpotifyClone.usuarios AS u
    INNER JOIN
    SpotifyClone.lista_reproducao AS lr ON u.usuario_id = lr.usuario_id
WHERE
	u.usuario_nome = "Bill";