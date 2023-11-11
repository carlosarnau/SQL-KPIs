SELECT
    DATE(Date) AS "Date",
    COUNT(DISTINCT playerId) AS "DAU",
	COUNT(DISTINCT playerId) / 3003 * 100 AS "DAU %"
FROM
    fernandofg2.Players
GROUP BY
    DATE(Date);