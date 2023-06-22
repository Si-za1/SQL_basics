SELECT e.employee, e.department, d.designation
FROM employee e
JOIN designation d 
ON e.id=d.id; 
 