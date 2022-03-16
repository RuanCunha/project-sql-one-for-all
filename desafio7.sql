SELECT
	ar.artista_nome AS artista,
    al.album AS album,
    COUNT(s.usuario_id) AS seguidores
FROM
	SpotifyClone.artistas AS ar
    LEFT JOIN 
    SpotifyClone.albums AS al ON ar.artista_id = al.artista_id
    INNER JOIN 
    SpotifyClone.seguidores AS s ON ar.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;