SELECT usr.user_name AS usuario,
	COUNT(hist.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(son.duration/60), 2) AS total_minutos
FROM SpotifyClone.users AS usr
INNER JOIN
	SpotifyClone.historic_reproductions AS hist ON hist.user_id = usr.user_id
INNER JOIN 
	SpotifyClone.songs AS son ON son.song_id = hist.song_id
GROUP BY usr.user_name, hist.user_id;