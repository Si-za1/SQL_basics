SELECT cb.name AS club_name, 
       CASE WHEN c.end_date IS NULL THEN m.name
       END AS current_manager
FROM club_managers c
LEFT JOIN managers m ON c.manager_id = m.id
LEFT JOIN clubs cb ON c.club_id = cb.id
GROUP BY club_name, current_manager
ORDER BY club_name, current_manager;
