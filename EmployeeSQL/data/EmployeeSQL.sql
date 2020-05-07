SELECT 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM Employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT
	first_name,
	last_name,
	hire_date
FROM Employees
WHERE hire_date > '12/31/1985'
	AND hire_date < '01/01/1987';
	
SELECT
	dept_manager.emp_no,
	dept_manager.dept_no,
	departments.dept_name,
	employees.first_name,
	employees.last_name
FROM dept_manager
	INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
	INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;
	
SELECT
	dept_emp.emp_no,
	dept_emp.dept_no,
	departments.dept_name,
	employees.first_name,
	employees.last_name
FROM dept_emp
	INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no;

SELECT
	first_name,
	last_name,
	sex
FROM Employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'
	
SELECT
	dept_emp.emp_no,
	dept_emp.dept_no,
	departments.dept_name,
	employees.first_name,
	employees.last_name
FROM dept_emp
	INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales';
	
SELECT
	dept_emp.emp_no,
	dept_emp.dept_no,
	departments.dept_name,
	employees.first_name,
	employees.last_name
FROM dept_emp
	INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE departments.dept_name = 'Sales'
	OR departments.dept_name = 'Development'


SELECT last_name, COUNT(last_name) AS NameCount
FROM employees
GROUP BY last_name
ORDER BY last_name
	