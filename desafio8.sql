SELECT
	art.artist_name AS artista,
  alb.album_name AS album
FROM SpotifyClone.artists AS art,
	SpotifyClone.albums AS alb
WHERE art.artist_name LIKE 'Walter%'
LIMIT 2;
