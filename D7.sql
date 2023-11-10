SELECT
	DATE(Date) AS "Date",
	COUNT(DISTINCT p.playerId) AS "D7 Returners",
    COUNT(DISTINCT p.playerId) / 3003 AS "D7 %"
FROM
    fernandofg2.Sessions s
LEFT JOIN
    fernandofg2.Players p ON s.userId = p.playerId
WHERE
    DATE(s.startSession - INTERVAL 7 DAY) = DATE(p.Date)
GROUP BY
    DATE(Date);