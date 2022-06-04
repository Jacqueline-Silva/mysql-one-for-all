SELECT
	son.song_name AS nome_musica,
	CASE
		WHEN son.song_name LIKE '%Streets' THEN REPLACE(son.song_name, 'Streets', 'Code Review')
    WHEN son.song_name LIKE '%Her Own' THEN REPLACE(son.song_name, 'Her Own', 'Trybe')
    WHEN son.song_name LIKE '%Inner Fire' THEN REPLACE(son.song_name, 'Inner Fire', 'Project')
    WHEN son.song_name LIKE '%Silly' THEN REPLACE(son.song_name, 'Silly', 'Nice')
    WHEN son.song_name LIKE '%Circus' THEN REPLACE(son.song_name, 'Circus', 'Pull Request')
    ELSE son.song_name IS NULL
	END AS novo_nome
FROM SpotifyClone.songs AS son
WHERE son.song_name LIKE '%Streets'
	OR son.song_name LIKE '%Her Own'
  OR son.song_name LIKE '%Inner Fire'
  OR son.song_name LIKE '%Silly'
  OR son.song_name LIKE '%Circus'
ORDER BY nome_musica;