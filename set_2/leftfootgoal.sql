SELECT p.name
FROM goals g
LEFT JOIN players p ON g.player_id = p.id
WHERE g.body_part_used IN ('Head', 'Left Foot')
GROUP BY p.name
HAVING COUNT(CASE WHEN g.body_part_used = 'Head' THEN 1 END) >= 2
   AND COUNT(CASE WHEN g.body_part_used IN ('Left Foot') THEN 1 END) >= 1;
