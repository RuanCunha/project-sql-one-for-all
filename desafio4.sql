SELECT
	u.usuario_nome AS usuario,
   IF(MAX(YEAR(lr.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM
	SpotifyClone.usuarios AS u
		INNER JOIN SpotifyClone.lista_reproducao AS lr ON u.usuario_id = lr.usuario_id
GROUP BY
	u.usuario_nome
ORDER BY
	u.usuario_nome ASC;