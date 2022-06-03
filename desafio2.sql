SELECT
	COUNT(DISTINCT son.song_name) AS cancoes,
	COUNT(DISTINCT art.artist_name) AS artistas,
  COUNT(DISTINCT alb.album_name) AS albuns
FROM SpotifyClone.songs AS son
INNER JOIN
	SpotifyClone.artists AS art,
	SpotifyClone.albums AS alb;
