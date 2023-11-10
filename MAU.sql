SELECT
	MONTH(Date) AS "Month nº",
    COUNT(distinct playerId) AS "MAU",
	COUNT(DISTINCT playerId) / 3003 AS "MAU %"
FROM
	fernandofg2.Players p
JOIN
	fernandofg2.Sessions s ON s.userId = p.playerId
GROUP BY
	MONTH(Date);