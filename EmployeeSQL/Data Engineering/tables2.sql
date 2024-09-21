-- View titles table
SELECT * FROM titles;

-- View dept_emp table
SELECT * FROM dept_emp;

-- View departments table
SELECT * FROM departments;

-- View employees table
SELECT * FROM employees;

-- View salaries table
SELECT * FROM salaries;

-- View dept_manager table
SELECT * FROM dept_manager;

-- Drop titles table for editing code
DROP TABLE titles;

-- Drop dept_emp table for editing code
DROP TABLE dept_emp;

-- Drop departments table for editing code
DROP TABLE departments;

-- Drop table for editing code
DROP TABLE employees CASCADE;

-- Drop salaries table for editing code
DROP TABLE salaries;

-- Drop dept_manager table for editing code
DROP TABLE dept_manager;


CREATE TABLE departments (
    dept_no VARCHAR(50) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(50) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(50) NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (emp_no)
);



CREATE TABLE titles (
    title_id VARCHAR(100) PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);