select player_id as "User", COUNT(session_id) as "Nº of sessions"

FROM carlosam15.sessions s
LEFT JOIN carlosam15.users u

ON u.user_id = s.player_id
WHERE lastControl >= '2018-01-23 22:01:08' and lastControl < '2018-03-05 06:07:38'
GROUP BY s.player_id;