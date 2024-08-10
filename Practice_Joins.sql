CREATE DATABASE Office;
USE Office;

CREATE TABLE employee (
emp_id varchar(20),
emp_name varchar(50),
salary int,
dept_id varchar(20),
manager_id varchar(20)
);
	
INSERT INTO employee 
VALUES   
("E1", "Rahul", 15000, "D1", "M1"),
("E2", "Manoj", 15000, "D1", "M1"),
("E3", "James", 55000, "D2", "M2"),
("E4", "Michael", 25000, "D2", "M2"),
("E5", "Ali", 20000, "D10", "M3"),
("E6", "Robin", 35000, "D10", "M3");

CREATE TABLE department (
dept_id varchar(20),
dept_name varchar(50)
);

INSERT INTO department 
VALUES
("D1", "IT"),
("D2", "HR"),
("D3", "Finance"),
("D4", "Admin");

CREATE TABLE Manager(
manager_id varchar(20),
manager_name varchar(50),
dept_id varchar(20)
);

INSERT INTO Manager
VALUES
("M1", "Pream", "D3"),
("M2", "Shripadh", "D4"),
("M3", "Nick", "D1"),
("M4", "Cory", "D1");

CREATE TABLE projects(
project_id varchar(20),
project_name varchar(50),
team_member_id varchar(20)
);

INSERT INTO projects
VALUES
("P1","Data Migration", "E1"),
("P1","Data Migration", "E2"),
("P1","Data Migration", "M3"),
("P2","ETL Tool", "E1"),
("P2","ETL Tool", "M4");

SELECT * FROM employee;
SELECT * FROM department;
SELECT * FROM Manager;
SELECT * FROM projects;

-- Fetch the employee name and the department name they belong to.

SELECT e.emp_name, d.dept_name
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id;

-- Fetch ALL the employee name and the department name they belong to.
SELECT e.emp_name, d.dept_name
FROM employee e
LEFT JOIN department d ON e.dept_id = d.dept_id;

SELECT e.emp_name, d.dept_name
FROM employee e
RIGHT JOIN department d ON e.dept_id = d.dept_id;

-- Fetch details of ALL emp, their manager, their department and the projects they working on.

SELECT e.emp_name, d.dept_name, m.manager_name, p.team_member_id, p.project_name
FROM employee e
LEFT JOIN department d ON e.dept_id = d.dept_id
LEFT JOIN manager m ON m.manager_id = e.manager_id
LEFT JOIN projects p ON p.team_member_id = e.emp_id;

-- FULL JOIN
SELECT e.emp_name, d.dept_name
FROM employee e
LEFT JOIN department d ON e.dept_id = d.dept_id
UNION
SELECT e.emp_name, d.dept_name
FROM employee e
RIGHT JOIN department d ON e.dept_id = d.dept_id;

-- CROSS JOIN

SELECT e.emp_name, d.dept_name
FROM employee e
CROSS JOIN department d; 

-- SELF JOIN

CREATE TABLE family (
member_id varchar(10),
name varchar(50),
age int,
parent_id varchar(10)
);

INSERT INTO family 
VALUES   
("F1", "David", "4", "F5"),
("F2", "Carol", "10", "F5"),
("F3", "Michael", "12", "F5"),
("F4", "Johnson", "36","" ),
("F5", "Maryam", "40", "F6"),
("F6", "Stewart", "70" ,""),
("F7", "Rohan", "6", "F4"),
("F8", "Asha", "8", "F4");

SELECT * FROM family;

-- Write a query to fetch the child name and their age corresponding to their parent name and parent id

SELECT a.name as child_name, b.name as paernt_name, b.age as parent_age
FROM family as a
JOIN family as b ON a.parent_id = b.member_id; 


CREATE TABLE employee_2 (
emp_id varchar(20),
emp_name varchar(50),
salary int,
dept_id varchar(20),
manager_id varchar(20),
dept varchar(20)
);

INSERT INTO employee_2
VALUES 
("E1", "Rahul", 15000, "D1", "M1", "IT"),
("E2", "Manoj", 15000, "D1", "M1", "IT"),
("E3", "James", 55000, "D2", "M2", "HR"),
("E4", "Michael", 25000, "D2", "M2", "Finance"),
("E5", "Ali", 20000, "D10", "M3","HR"),
("E6", "Robin", 35000, "D10", "M3", "Cyber");

SELECT * FROM employee_2;

SELECT *
FROM employee_2
WHERE (dept, salary ) IN (SELECT dept, MAX(salary) 
						  FROM employee_2
                          GROUP BY dept);
                          