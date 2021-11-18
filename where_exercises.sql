# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Find all employees whose last name starts with 'E' — 7,330 rows.
# Find all employees with a 'q' in their last name — 1,873 rows.
USE employees;

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT first_name
FROM employees
WHERE first_name LIKE 'e%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

#     Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
#     Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
#     Find all employees whose last name starts or ends with 'E' — 30,723 rows.
#     Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
#     Find all employees with a 'q' in their last name but not 'qu' — 547 rows
SELECT first_name
FROM employees
WHERE first_name
   OR ('Irena', 'Vidya', 'Maya');

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M';

SELECT last_name
FROM employees
WHERE last_name LIKE '%e'
    OR 'e%';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
    AND last_name != '%qu%';
