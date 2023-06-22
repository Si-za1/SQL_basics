/* LOGIC FOR THE CASE:

SELECT 
CASE
WHEN 
manager_employee_id= id
THEN
manager_name = employee
END,
id, manager_employee_id, employee AS manager_name
FROM employee;
*/ 
SELECT
    e.employee AS employee_name,
    m.employee AS manager_name
FROM employee e
LEFT JOIN employee m ON e.manager_employee_id = m.id;
