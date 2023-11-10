SELECT
    DATE(lastControl) as "Date",
    COUNT(DISTINCT player_id) as "DAU"
FROM
    carlosam15.Sessions
WHERE
    lastControl >= '2020-01-02 12:22:59' and lastControl < '2020-01-03 22:59:37'
GROUP BY
    DATE(lastControl);