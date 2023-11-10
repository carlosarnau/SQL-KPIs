SELECT COUNT(playerId) AS session_count
FROM fernandofg2.Sessions s
LEFT JOIN fernandofg2.Players p
ON s.userId = p.playerId AND DATE(startSession - INTERVAL 1 DAY) = DATE(Date);