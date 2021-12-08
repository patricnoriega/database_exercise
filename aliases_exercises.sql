USE employees
SELECT CONCAT(emp.no "- ", last_name, ", ", first_name) AS "full_Name", birth_date AS "D.O.B"
FROM employees
ORDER BY emp_no
LIMIT 10;