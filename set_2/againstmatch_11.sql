SELECT
  c1.Name AS Club_A,
  c2.Name AS Club_B,
  COUNT(*) AS Game_Count
FROM Matches m
JOIN Clubs c1 ON m.Home_Team_Id = c1.Id
JOIN Clubs c2 ON m.Away_Team_Id = c2.Id
WHERE (m.Home_Team_Id = c1.Id OR m.Home_Team_Id = c2.Id) AND (m.Away_Team_Id = c1.Id OR m.Away_Team_Id = c2.Id)
GROUP BY c1.Name, c2.Name
HAVING Game_Count >= 1
ORDER BY Club_A, Club_B;
