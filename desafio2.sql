SELECT
  (SELECT COUNT(cancao) FROM SpotifyClone.cancoes) AS cancoes,
  (SELECT COUNT(artista_nome) FROM SpotifyClone.artistas) AS artistas,
  (SELECT COUNT(album) FROM SpotifyClone.albums) AS albuns;