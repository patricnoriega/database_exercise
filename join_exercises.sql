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
SELECT d.dept_name AS 'Dept Name', CONCAT(departments, ' ', dept_manager) AS 'Departments Managed by Women'
FROM departments AS d
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN dept_manager AS dm ON d.dept_no  = dm.dept_name
WHERE dm.to_date LIKE '9999%'AND gender = 'F'
ORDER BY dept_name;


#     Find the current titles of employees currently working in the Customer Service department.
SELECT concat(titles, ' ', salary) AS 'Salaries in Customer Service'
FROM titles AS t
JOIN employess AS e on t.emp_no = e.emp_no
JOIN departments AS d on de.dept_no = d.dept_no
JOIN dept_emp de on e.emp_no = de.emp_no
WHERE t.to_date LIKE '9999%' AND de.to_date LIKE '9999%' AND dept_name = 'customer service dept'


#     Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', salary AS Salary
FROM departments AS d
JOIN dept_manager AS dm on d.dept_no = dm.dept_no
JOIN departments AS e on dm.emp_no = e.emp_no
JOIN salaries AS s on e.emp_no = salary
WHERE dm.to_date LIKE '9999%' AND s.to_date LIKE '9999%'
ORDER BY dept_name;


#     Bonus Find the names of all current employees, their department name, and their current manager's name .