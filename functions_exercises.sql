USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT (first_name, ' ' , last_name) AS 'Employee Names' FROM employees WHERE first_name LIKE 'E%' AND last_name LIKE '%E';

# Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE year(hire_date) BETWEEN 1990 AND 1999 AND month(birth_date) = 12 AND day(birth_date) = 25;
#OR
SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date)=25 AND hire_date LIKE '199%';

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees WHERE year(hire_date) BETWEEN 1990 AND 1999 AND month(birth_date) = 12 AND day(birth_date) = 25 ORDER BY birth_date;
#OR
SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date)=25 AND hire_date LIKE '199%' ORDER BY birth_date, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate())
SELECT * ,datediff(now(), hire_date) FROM employees WHERE year(hire_date) BETWEEN 1990 AND 1999 AND month(birth_date) = 12 AND day(birth_date) = 25;
#OR
SELECT CONCAT ('Day at Company: ', DATEDIFF(NOW(), hire_date)) AS 'Days At Company' FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '12-25%';