SELECT
	Name AS "User",
	SUM(itemId) / COUNT(DISTINCT(t.userId)) AS "ARPPU"
FROM
	fernandofg2.Players p
JOIN
	fernandofg2.Purchases t ON p.playerId = t.userId
GROUP BY
	p.playerId;