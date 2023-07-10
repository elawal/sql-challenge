

--List the employee number, last name, first name, sex, and salary of each employee.
SELECT * FROM employees;

SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name.

SELECT dept_manager.emp_no, departments.dept_no, dept_name, last_name, 
first_name
FROM ((dept_manager
INNER JOIN departments on dept_manager.dept_no = departments.dept_no)
INNER JOIN employees on dept_manager.emp_no = employees.emp_no);

--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name

SELECT dept_emp.emp_no, departments.dept_no, dept_name, last_name, first_name
FROM ((dept_emp
INNER JOIN departments on dept_emp.dept_no = departments.dept_no)
INNER JOIN employees on dept_emp.emp_no = employees.emp_no);

--List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, 
--and first name.

SELECT employees.emp_no, last_name, first_name
FROM ((employees 
INNER JOIN dept_emp on employees.emp_no = dept_emp.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no))
WHERE dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number,
--last name, first name, and department name.

SELECT employees.emp_no, last_name, first_name, dept_name
FROM ((employees 
INNER JOIN dept_emp on employees.emp_no = dept_emp.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no))
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee 
--last names (that is, how many employees share each last name).

SELECT
count(last_name) AS "Number of Employees"
FROM employees
GROUP BY last_name
ORDER BY last_name desc;









