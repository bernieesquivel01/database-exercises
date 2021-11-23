USE employees;

# SELECT * FROM employees LIMIT 10;

# write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name                                  AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
         JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
         JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY departments.dept_name;

# Find the name of all departments currently managed by women.
SELECT departments.dept_name                                  AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01'
  AND employees.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title, count(titles.emp_no) AS 'Total'
FROM departments
         JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
         JOIN titles ON dept_emp.emp_no = titles.emp_no
WHERE dept_name = 'Customer Service'
  AND dept_emp.to_date = '9999-01-01'
  AND titles.to_date = '9999-01-01'
GROUP BY titles.title;

# Find the current salary of all current managers.
SELECT departments.dept_name                                  AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager',
       salaries.salary
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
         JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01'
  AND salaries.to_date = '9999-01-01';

# BONUS
# Find the names of all current employees, their department name, and their current manager's name .

# SELECT CONCAT(employees.first_name, ' ', employees.last_name)   AS 'Employee',
#        departments.dept_name                                    AS 'Department',
#        CONCAT(employees2.first_name, ' ', employees2.last_name) AS 'Manager'
# FROM departments
#          JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
#          JOIN employees ON dept_emp.emp_no = employees.emp_no
#          JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
#          JOIN employees ON dept_manager.emp_no = employees2.emp_no
# WHERE dept_emp.to_date = '9999-01-01'
#   AND dept_manager.to_date = '9999-01-01';



