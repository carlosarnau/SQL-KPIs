select sum(totalPrice) / 1000 as "ARPPU"
from carlosam15.sessions s
join carlosam15.transactions t on s.player_id = t.player_id