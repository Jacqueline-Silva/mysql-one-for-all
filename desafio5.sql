SELECT son.song_name AS cancao, 
	COUNT(hist.user_id) AS reproducoes
FROM SpotifyClone.songs AS son
INNER JOIN
	SpotifyClone.historic_reproductions AS hist ON son.song_id = hist.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
