-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/jIFYIg
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Departments (
    dept_no varchar(10)   NOT NULL,
    dept_name varchar(30)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Dept_Emp (
    emp_no BIGINT   NOT NULL,
    dept_no varchar(10)   NOT NULL
);

CREATE TABLE Dept_Manager (
    dept_no varchar(10)   NOT NULL,
    emp_no BIGINT   NOT NULL,
    CONSTRAINT pk_Dept_Manager PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Employees (
    emp_no BIGINT   NOT NULL,
    emp_title_id varchar(10)   NOT NULL,
    birth_date varchar(10)   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    sex varchar(10)   NOT NULL,
    hire_date varchar(10)   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Salaries (
    emp_no BIGINT   NOT NULL,
    salary BIGINT   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Titles (
    title_id varchar(10)   NOT NULL,
    title varchar(30)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

