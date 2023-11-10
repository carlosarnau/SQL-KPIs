SELECT COUNT(player_id) AS session_count
FROM carlosam15.Users u
LEFT JOIN carlosam15.Sessions s
ON s.player_id = u.user_id AND DATE(start - INTERVAL 3 DAY) = DATE(dateCreated);