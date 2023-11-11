SELECT
    SUM(
        CASE itemId
            WHEN '1' THEN itemId * 0.99
            WHEN '2' THEN itemId * 1.99
            WHEN '3' THEN itemId * 9.99
            WHEN '4' THEN itemId * 49.99
            WHEN '5' THEN itemId * 99.99
        END
    ) / COUNT(DISTINCT(userId)) AS "ARPPU"
FROM
    fernandofg2.Purchases