SELECT *
FROM(
SELECT salary, employee, id, dense_rank() 
OVER (ORDER BY salary ASC)fourthhigh FROM employee) AS high
WHERE fourthhigh=4
OR fourthhigh=3;