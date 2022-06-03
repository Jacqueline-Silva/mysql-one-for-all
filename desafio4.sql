SELECT usr.user_name AS usuario,
IF (MAX(YEAR(hist.date_reproduction)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS usr
INNER JOIN SpotifyClone.historic_reproductions AS hist ON hist.user_id = usr.user_id
GROUP BY usuario
ORDER BY usuario;