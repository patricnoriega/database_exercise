# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Find all employees whose last name starts with 'E' — 7,330 rows.
# Find all employees with a 'q' in their last name — 1,873 rows.
USE employees;

SELECT *
FROM employees
WHERE (first_name ='Irena'
OR first_name ='Vidya'
OR first_name ='Maya');

SELECT *
FROM employees
WHERE first_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

#     Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
#     Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
#     Find all employees whose last name starts or ends with 'E' — 30,723 rows.
#     Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
#     Find all employees with a 'q' in their last name but not 'qu' — 547 rows
SELECT *
FROM employees
WHERE (first_name ='Irena'
OR first_name ='Vidya'
OR first_name ='Maya');

SELECT *
FROM employees
WHERE (first_name ='Irena'
OR first_name ='Vidya'
OR first_name ='Maya')
AND gender = 'M';

SELECT *
FROM employees
WHERE last_name LIKE '%e'
AND last_name LIKE 'e%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';
