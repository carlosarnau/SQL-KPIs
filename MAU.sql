select month(Date) as "Month nº", count(distinct playerId) as "MAU"

from fernandofg2.Players p
join fernandofg2.Sessions s

on s.userId = p.playerId
group by month(Date)
order by 1 asc;