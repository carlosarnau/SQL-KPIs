SELECT
	Name AS "User",
	AVG(TIMESTAMPDIFF(second, startSession, endSession)) / 60 AS "Avg hours spend"
FROM
	fernandofg2.Sessions s
LEFT JOIN
	fernandofg2.Players p ON s.userId = p.playerId
GROUP BY
	p.playerId;