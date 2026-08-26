-- Active: 1787211127687@@127.0.0.1@3306@dummydb
USE pdb

SELECT * FROM employees

SELECT m.first_name, e.manager_id FROM employees AS e
    JOIN employees AS m ON e.manager_id = m.employee_id

SELECT * FROM employees

SELECT COUNT(salary) FROM employees

SELECT DISTINCT salary FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 2

SELECT MIN(department_id) AS min_dep, MAX(department_id) AS max_dep FROM departments

SELECT department_name, employees.department_id FROM departments
    JOIN employees ON departments.department_id = employees.department_id

SELECT DISTINCT department_name, COUNT(employees.department_id) FROM departments
    JOIN employees ON departments.department_id = employees.department_id
        GROUP BY department_name

SELECT AVG(salary) AS avg_sal from employees;

WITH tem AS (SELECT AVG(salary) AS avg_sal from employees)

SELECT first_name, salary FROM employees WHERE salary > (SELECT avg_sal from tem);


SELECT first_name FROM employees
    WHERE salary < (SELECT salary from employees WHERE first_name = "Steven" AND last_name = "King")


SELECT DISTINCT location_id FROM departments

WITH tem AS (SELECT DISTINCT location_id FROM departments)

SELECT city FROM locations
    JOIN tem ON tem.location_id = locations.location_id