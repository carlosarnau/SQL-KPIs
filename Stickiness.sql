WITH DAU AS (
   SELECT
    DATE(Date) AS "Date",
    COUNT(DISTINCT playerId) AS "DAU",
	COUNT(DISTINCT playerId) / 3003 * 100 AS "DAU %"
FROM
    fernandofg2.Players
GROUP BY
    DATE(Date)
),
MAU AS (
  SELECT
	MONTH(Date) AS "Month nº",
    COUNT(distinct playerId) AS "MAU",
	COUNT(DISTINCT playerId) / 3003 AS "MAU %"
FROM
	fernandofg2.Players p
GROUP BY
	MONTH(Date)
)
SELECT
    DAU.DAU AS "DAU",
    MAU.MAU AS "MAU",
    DAU.DAU / MAU.MAU * 100 AS "Stickiness"
FROM
	DAU DAU,
	MAU MAU