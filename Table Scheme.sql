CREATE TABLE dept_emp (emp_no int, dept_no varchar)

CREATE TABLE dept_manager (dept_no varchar, emp_no int);
SELECT * FROM dept_manager;

CREATE TABLE departments (dept_no varchar, dept_name varchar);
SELECT * FROM departments;

CREATE TABLE employees (emp_no int, emp_title_id varchar, birth_date date, first_name varchar,
					 last_name varchar, sex varchar, hire_date date);
SELECT * FROM employees;

CREATE TABLE salaries (emp_no int, salary int);

CREATE TABLE titles (title_id varchar, title varchar);
SELECT * FROM titles;


ALTER TABLE employees
ADD PRIMARY KEY (emp_no);

ALTER TABLE dept_emp 
ADD CONSTRAINT fk
FOREIGN KEY(emp_no)
REFERENCES employees(emp_no);

ALTER TABLE dept_emp 
ADD CONSTRAINT fkey
FOREIGN KEY(dept_no)
REFERENCES departments(dept_no);

ALTER TABLE departments
ADD PRIMARY KEY (dept_no);

ALTER TABLE titles
ADD PRIMARY KEY (title_id);

ALTER TABLE employees
ADD CONSTRAINT fkeys
FOREIGN KEY(emp_title_id)
REFERENCES titles(title_id);


ALTER TABLE salaries
ADD CONSTRAINT fksal
FOREIGN KEY(emp_no)
REFERENCES employees(emp_no);

