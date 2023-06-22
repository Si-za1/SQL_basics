SELECT department, AVG(salary) 
FROM employee
GROUP BY department
ORDER BY department;
