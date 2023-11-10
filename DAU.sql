SELECT
    DATE(Date) as "Date",
    COUNT(DISTINCT playerId) as "DAU"
FROM
    fernandofg2.Players
WHERE
    Date >= '2022-01-01 05:10:02' and Date < '2022-01-05 02:18:39'
GROUP BY
    DATE(Date);