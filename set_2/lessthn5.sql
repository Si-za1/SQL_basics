SELECT p.name, COUNT(g.player_id) AS Goals_Scored
FROM players p
LEFT JOIN goals g ON p.id = g.player_id
WHERE p.position = 'Striker'
GROUP BY p.name
HAVING Goals_Scored < 5 
ORDER BY p.name;

