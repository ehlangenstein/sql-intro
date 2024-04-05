-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT sum(hits)
FROM stats
where player_id = (SELECT id FROM players where first_name = "Barry" and last_name = "Bonds");


-- class solution 
select SUM(stats.hits) FROM players
inner join stats ON players.id = stats.player_id 
where first_name = "Barry" 
AND last_name = "Bonds"; 