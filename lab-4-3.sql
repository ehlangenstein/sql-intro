-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


select teams.name, players.first_name, players.last_name, max(stats.home_runs)
from ((players 
inner join stats ON stats.player_id=players.id)
INNER JOIN teams ON stats.team_id=teams.id)
where year=2019;

