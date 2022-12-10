DROP TABLE IF EXISTS Departments
DROP TABLE IF EXISTS DepartmentEmployees
DROP TABLE IF EXISTS DepartmentManager
DROP TABLE IF EXISTS Employees
DROP TABLE IF EXISTS Salaries
DROP TABLE IF EXISTS Titles

CREATE TABLE Departments (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE DepartmentEmployees (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE DepartmentManager (
    dept_no CHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE Employees (
    emp_no INT NOT NULL,
    emp_title CHAR(5) NOT NULL,
    birth_date date NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex CHAR NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE Salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE Titles (
    title_id CHAR(5) NOT NULL,
    title VARCHAR(30) NOT NULL,
    PRIMARY KEY (title_id)
);

ALTER TABLE Departments
ADD FOREIGN KEY (dept_no) REFERENCES DepartmentEmployees(dept_no);

ALTER TABLE DepartmentEmployees
ADD FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
ADD FOREIGN KEY (emp_no) REFERENCES Employees(emp_no);

ALTER TABLE Salaries
ADD FOREIGN KEY (emp_no) REFERENCES Employees(emp_no);

ALTER TABLE Employees 
ADD FOREIGN KEY (emp_title) REFERENCES Titles(title_id),
ADD FOREIGN KEY (emp_no) REFERENCES Salaries(emp_no);


SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
JOIN Salaries
ON (Employees.emp_no = Salaries.emp_no);

SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT DepartmentManager.dept_no, Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM DepartmentManager
JOIN Departments
ON (DepartmentManager.dept_no = Departments.dept_no)
JOIN Employees
ON (DepartmentManager.emp_no = Employees.emp_no);

SELECT DepartmentEmployees.dept_no, Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM DepartmentEmployees
JOIN Departments
ON (DepartmentEmployees.dept_no = Departments.dept_no)
JOIN Employees
ON (DepartmentEmployees.emp_no = Employees.emp_no);

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM DepartmentEmployees
JOIN Departments
ON (DepartmentEmployees.dept_no = Departments.dept_no)
JOIN Employees
ON (DepartmentEmployees.emp_no = Employees.emp_no)
WHERE Departments.dept_name = 'Sales';

SELECT Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM DepartmentEmployees
JOIN Departments
ON (DepartmentEmployees.dept_no = Departments.dept_no)
JOIN Employees
ON (DepartmentEmployees.emp_no = Employees.emp_no)
WHERE Departments.dept_name = 'Sales' OR Departments.dept_name = 'Development';

SELECT last_name, COUNT(*)
FROM Employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;
