SELECT
	art.artist_name AS artista,
  alb.album_name AS album,
  COUNT(flw.user_id) AS seguidores
FROM SpotifyClone.artists AS art
INNER JOIN
	SpotifyClone.albums AS alb ON alb.artist_id = art.artist_id
INNER JOIN
	SpotifyClone.follows AS flw ON flw.artist_id = alb.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;