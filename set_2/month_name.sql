SELECT month_name, COUNT(player_id) AS goal_scored
FROM (
    SELECT 
        player_id,
        MONTHNAME(scored_at) AS month_name
    FROM goals
) AS subquery
GROUP BY month_name
ORDER BY FIELD(month_name,
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December');
