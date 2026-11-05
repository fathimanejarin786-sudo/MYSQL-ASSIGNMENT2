USE employee;

SELECT
    e.employee_name,
    e.designation,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
SELECT
    d.department_name,
    COUNT(e.employee_id) AS Total_Employees
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
SELECT
    l.location,
    e.employee_name
FROM employees e
RIGHT JOIN location l
ON e.location_id = l.location_id;