1. SELECT matchid, player FROM goal
   WHERE teamid LIKE 'GER'
2. SELECT id,stadium,team1,team2
FROM game JOIN goal ON goal.matchid = game.id GROUP BY id HAVING game.id = 1012
3. SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON game.id = goal.matchid WHERE teamid LIKE 'GER'
4. SELECT team1, team2, player 
FROM game
JOIN goal
ON game.id = goal.matchid
WHERE player LIKE 'MARIO%'
5. SELECT player, teamid, coach,gtime
FROM goal
JOIN eteam
ON goal.teamid = id
WHERE gtime <= 10
6. SELECT mdate, teamname
FROM game
JOIN eteam
ON team1 = eteam.id
WHERE coach LIKE 'Fernando Santos'
7. SELECT player
FROM game
JOIN goal
ON goal.matchid = game.id
WHERE stadium LIKE 'National Stadium, Warsaw'
8. SELECT DISTINCT player
  FROM game JOIN goal ON matchid = id 
    WHERE (team1='GER' OR team2='GER') AND teamid <> 'GER'
9. SELECT teamname, COUNT(teamid)
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname
10. SELECT stadium, COUNT(matchid)
FROM game
JOIN goal
ON goal.matchid = game.id
GROUP BY stadium
11. SELECT matchid, mdate, COUNT(teamid)
FROM game
JOIN goal
ON goal.matchid = game.id
WHERE team1 LIKE 'POL' OR team2 LIKE 'POL'
GROUP BY matchid, mdate
12. SELECT matchid, mdate, COUNT(teamid)
FROM game
JOIN goal
ON matchid = id
WHERE teamid LIKE 'GER'
GROUP BY matchid
13. SELECT mdate,team1,
SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) AS score1,
team2,
SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) AS score2
FROM game
JOIN goal
ON matchid = id
GROUP BY mdate, matchid, team1, team2