use employees;

SELECT first_name, last_name, birth_date
FROM employees
LIMIT 10;

SELECT * FROM dept_manager WHERE to_date > NOW();

SELECT *
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager WHERE to_date > NOW()
    )





