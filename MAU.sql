select month(lastControl) as "Month nº", count(distinct player_id) as "MAU"
from carlosam15.Users s
join carlosam15.Sessions p
on s.user_id = p.player_id
group by month(lastControl)
order by 1 asc;