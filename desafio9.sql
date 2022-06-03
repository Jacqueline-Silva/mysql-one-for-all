SELECT COUNT(hist.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historic_reproductions AS hist
INNER JOIN 
	SpotifyClone.users AS usr ON usr.user_name LIKE 'Bill'
WHERE hist.user_id = usr.user_id;