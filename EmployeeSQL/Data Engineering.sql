-- Table schema for departments
CREATE TABLE departments (
  dept_no VARCHAR(255) NOT NULL Primary Key,
  dept_name VARCHAR(255) NOT NULL
);

select * from departments;

-- Table schema for department employees
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
	Foreign Key (emp_no) References employees(emp_no),
  dept_no VARCHAR(255) NOT NULL,
	Foreign Key (dept_no) References departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

select * from dept_emp;

-- Table schema for department manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(255) NOT NULL,
	Foreign Key (dept_no) References departments(dept_no),
    emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

select * from dept_manager;

-- Table schema for titles
CREATE TABLE titles (
  title_id VARCHAR(255) NOT NULL Primary Key,
  title VARCHAR(255) NOT NULL
);

select * from titles;


-- Table schema for employees
CREATE TABLE employees (
  emp_no INT NOT NULL Primary Key,
    emp_title VARCHAR(255) NOT NULL,
	Foreign Key (emp_title) References titles(title_id),
	birth_date VARCHAR(255) NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(255) NOT NULL,
	hire_date VARCHAR(255) NOT NULL
);

select * from employees;

-- Table schema for salaries
CREATE TABLE salaries (
  emp_no INT NOT NULL Primary Key,
	Foreign Key (emp_no) References employees(emp_no),
  salary INT NOT NULL
);

select * from salaries;
