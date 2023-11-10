SELECT
	Name AS "User",
    COUNT(sessionId) AS "Nº of sessions"
FROM
	fernandofg2.Sessions s
LEFT JOIN
	fernandofg2.Players p ON s.userId = p.playerId
GROUP BY
	p.playerId;