-- Create tables and import data
----------------------------------

-- Create departments table and import data from departments.csv file
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
); 

SELECT * FROM departments;

-- Create titles table and import data from titles.csv file
CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
); 

SELECT * FROM titles;

-- Create employees table and import data from employees.csv file
CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	title_id VARCHAR NOT NULL,
	FOREIGN KEY (title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
); 

SELECT * FROM employees;

-- Create dept_emp table and import data from dept_emp.csv file
CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
); 

SELECT * FROM dept_emp;

-- Create dept_manager table and import data from dept_manager.csv file
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

-- Create salaries table and import data from salaries.csv
CREATE TABLE salaries(
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER
);

SELECT * FROM salaries;