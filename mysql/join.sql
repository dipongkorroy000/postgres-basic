-- Active: 1787211127687@@127.0.0.1@3306@pdb
USE pdb

SELECT employees.first_name, departments.department_name, employees.department_id FROM employees, departments
WHERE employees.department_id = departments.department_id

SELECT employees.first_name, departments.department_name, employees.department_id FROM employees
    JOIN departments on employees.department_id = departments.department_id

SELECT first_name, employees.department_id, departments.department_id FROM employees
    JOIN departments ON employees.department_id = departments.department_id


SELECT employees.first_name, departments.department_name FROM employees 
    INNER JOIN departments ON employees.department_id = departments.department_id

SELECT * FROM employees

SELECT employees.first_name, employees.salary, (SELECT AVG(salary) FROM employees WHERE department_id = employees.department_id) FROM departments 
    LEFT JOIN employees ON departments.department_id  = employees.department_id


SELECT a.first_name, b.first_name FROM employees AS a 
    JOIN employees AS b ON a.employee_id = b.manager_id

SELECT b.first_name, a.first_name FROM employees AS a 
    JOIN employees AS b ON a.employee_id = b.manager_id

SELECT departments.department_name FROM departments 
    LEFT JOIN employees ON departments.department_id = employees.department_id
        WHERE employees.department_id IS NULL

SELECT AVG(salary), department_id FROM employees WHERE department_id = 10 

SELECT employees.first_name, employees.salary,
    ((SELECT AVG(salary) FROM employees WHERE department_id = employees.department_id) - employees.salary) AS dept
    FROM employees
    JOIN departments ON employees.department_id = departments.department_id

SELECT department_name, MIN(salary), AVG(salary) FROM employees 
    JOIN departments ON employees.department_id = departments.department_id
    GROUP BY department_name HAVING MIN(salary) > 2000;

