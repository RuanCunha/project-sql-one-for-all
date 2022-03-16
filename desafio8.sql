SELECT
	ar.artista_nome AS artista,
    al.album AS album
FROM
	SpotifyClone.artistas AS ar
    INNER JOIN 
    SpotifyClone.albums AS al on ar.artista_id = al.artista_id
WHERE
	artista_nome = "Walter Phoenix"
ORDER BY al.album ASC;