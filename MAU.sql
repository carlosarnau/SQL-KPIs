SELECT
	COUNT(DISTINCT p.playerId) / 3003 * 100 AS "MAU"
FROM
    fernandofg2.Players p
WHERE
    DATE("2022-04-09" - INTERVAL 30 DAY) = DATE(p.Date);