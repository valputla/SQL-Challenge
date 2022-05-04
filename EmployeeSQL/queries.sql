SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries AS s ON
s.emp_no = e.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_manager AS dm ON
dm.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = dm.dept_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp AS de ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_emp AS de ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_emp AS de ON
de.emp_no = e.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

SELECT e.last_name, COUNT(last_name) AS frequency
FROM employees e
GROUP BY e.last_name
ORDER BY frequency DESC;

