USE employees;

# SELECT * FROM employees LIMIT 10;

# write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY departments.dept_name;

# Find the name of all departments currently managed by women.
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN  employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01'
AND employees.gender = 'F'

Find the current titles of employees currently working in the Customer Service department.





