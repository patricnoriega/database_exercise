# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;
USE employees;
#     write a query that shows each department along with the name of the current manager for that department.
SELECT CONCAT(departments, ' ', dept_manager) AS 'Departments and Dept Managers'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = dm.emp_no
JOIN departments AS d ON d.dept_no  = d.dept_name
WHERE;
#     Find the name of all departments currently managed by women.
SELECT CONCAT(departments, ' ', dept_manager) AS 'Departments Managed by Women'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = dm.emp_no
JOIN departments AS d ON d.dept_no  = d.dept_name
WHERE
AND gender = 'F';


#     Find the current titles of employees currently working in the Customer Service department.
SELECT concat(titles, ' ', salary) AS 'Salaries in Customer Service'
FROM titles AS t
JOIN dept AS t on t.emp_no = db.emp_no
JOIN departments AS d on
WHERE;


#     Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
slary AS Salary
FROM employess AS e
JOIN dept_manager AS dm on e.emp_no = dm.emp_no
JOIN departments AS d on dm.dept_no = e.emp_no
JOIN
WHERE
AND
ORDER BY;


#     Bonus Find the names of all current employees, their department name, and their current manager's name .