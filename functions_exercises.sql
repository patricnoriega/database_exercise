# -----------ORDER BY EXERCISES-----------
# SELECT *
# FROM employees
# WHERE (first_name ='Irena'
#     OR first_name ='Vidya'
#     OR first_name ='Maya')
# ORDER BY first_name ASC;
# # Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Boguraev.
# SELECT *
# FROM employees
# WHERE (first_name ='Irena'
#     OR first_name ='Vidya'
#     OR first_name ='Maya')
# ORDER BY first_name, last_name;
# # Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Vidya Quittner.
# SELECT *
# FROM employees
# WHERE (first_name ='Irena'
#     OR first_name ='Vidya'
#     OR first_name ='Maya')
# ORDER BY last_name ASC , first_name ASC;

# -------------FUNCTIONS EXERCISE--------------
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, " ", last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'e%' OR '%e'
LIMIT 10;
# Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;
# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25
AND hire_date LIKE '199%';
# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date ASC;
# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT CONCAT('Days at company: ', DATEDIFF(NOW(), hire_date)) AS 'DAYS AT COMPANY'
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND hire_date LIKE '199%';