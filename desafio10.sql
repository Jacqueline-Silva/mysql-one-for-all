SELECT
	son.song_name AS nome,
  COUNT(hist.song_id) AS reproducoes
FROM SpotifyClone.historic_reproductions AS hist
INNER JOIN
	SpotifyClone.users AS usr ON usr.user_id = hist.user_id
INNER JOIN
	SpotifyClone.songs AS son ON son.song_id = hist.song_id
INNER JOIN
  SpotifyClone.plans AS pl ON pl.plan_id = usr.plan_id
WHERE pl.plan_name IN ('Gratuito','Pessoal')  
GROUP BY son.song_name
ORDER BY son.song_name;