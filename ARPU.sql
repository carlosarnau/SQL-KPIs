SELECT
	Name AS "User",
	SUM(itemId) / 3003 AS "ARPU"
FROM
	fernandofg2.Players p
JOIN
	fernandofg2.Purchases t ON p.playerId = t.userId
GROUP BY
	p.playerId;