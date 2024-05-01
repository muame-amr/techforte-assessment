-- Query to list all players name from team that call "Chichago Bulls", 
-- and each players average score and average assist.

SELECT
	p.name AS player_name,
	AVG(pms.score) AS average_score,
	AVG(pms.assist) AS average_assist
FROM
	team t
JOIN
	player p ON
	p.team_id = t.id
JOIN
	player_match_stat pms ON
	pms.player_id = p.id
WHERE
	t.name = 'Chicago Bulls'
GROUP BY
	p.name;

-- Query to list Top 5 players with highest total score within Year 2021.
-- The result should show team name, player name and total score.
-- The result also should display highest score player first.

SELECT
	p.name AS player_name,
	t.name AS team_name,
	SUM(pms.score) AS total_score
FROM
	team t
JOIN player p ON
	p.team_id = t.id
JOIN player_match_stat pms ON
	pms.player_id = p.id
WHERE
	EXTRACT(YEAR FROM pms.match_date) = 2021
GROUP BY
	p.name,
	t.name
ORDER BY
	total_score DESC
LIMIT 5;

-- Query that have "Jordan" as input, and return results if match any team
-- name or player name. The search is case insensitive and by wildcard. The
-- result should return "Name" (either team name or player name) and result
-- type ("Player" or "Team").

SELECT 
	name,
	'team' AS result_type 
FROM
	team t
WHERE
	t.name ILIKE '%Jordan%'
UNION ALL
SELECT 
	name,
	'player' AS result_type
FROM
	player p 
WHERE
	p.name  ILIKE '%Jordan%';