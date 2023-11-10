select month(lastControl) as "Month nº", count(distinct player_id) as "MAU"
from carlosam15.Sessions p
join carlosam15.Users s
on s.user_id = p.player_id
group by month(lastControl)
order by 1 asc;