SELECT department, SUM(salary) AS total_sum
FROM employee
GROUP BY department
HAVING total_sum>12000;

