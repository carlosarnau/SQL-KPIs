SELECT (country) as "Contry Name",
avg(timestampdiff(second, start, end))/60 as "Session time"

FROM carlosam15.Users u left join carlosam15.Sessions s
on u.user_id = s.player_id
group by u.country
order by 2 desc