SELECT
	DATE(Date) AS "Date",
	COUNT(DISTINCT p.playerId) AS "D3 Returners",
    COUNT(DISTINCT p.playerId) / 3003 * 100 AS "D3 %"
FROM
    fernandofg2.Sessions s
LEFT JOIN
    fernandofg2.Players p ON s.userId = p.playerId
WHERE
    DATE(s.startSession - INTERVAL 3 DAY) = DATE(p.Date)
GROUP BY
    DATE(Date);