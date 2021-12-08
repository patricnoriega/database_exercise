USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT *
FROM employees
WHERE emp_no IN (
SELECT emp_no FROM departments WHERE to_date > NOW())
LIMIT 10;

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT titles
FROM employees
WHERE emp_no IN (SELECT emp_no FROM departments WHERE first_name = 'Aamod');

# Find all the current department managers that are female.
SELECT *
FROM employees
WHERE emp_no in (
SELECT * FROM dept_manager WHERE gender = 'F');