SELECT *
FROM(
SELECT salary, employee, id, dense_rank() 
OVER (ORDER BY salary DESC)fourthhigh FROM employee) AS high
WHERE fourthhigh=4;