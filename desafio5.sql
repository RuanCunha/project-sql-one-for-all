SELECT
	c.cancao AS cancao,
    COUNT(lr.data_reproducao) AS reproducoes
FROM
	SpotifyClone.cancoes AS c
    INNER JOIN 
    SpotifyClone.lista_reproducao AS lr ON c.cancao_id = lr.cancao_id
GROUP BY c.cancao
ORDER BY reproducoes DESC, cancao ASC
limit 2;