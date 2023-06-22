SELECT m.name AS manager_name, 
       CASE WHEN c.end_date IS NULL THEN cb.name
       ELSE m.name IS NULL
       END AS club_name
FROM club_managers c
LEFT JOIN managers m ON c.manager_id = m.id
LEFT JOIN clubs cb ON c.club_id = cb.id
GROUP BY  manager_name, club_name
ORDER BY  manager_name, club_name;
