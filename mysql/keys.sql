

USE dummydb;

SELECT * FROM employees
    WHERE salary > 10000
UNION
SELECT * FROM employees
    WHERE department_id = 100;

SELECT * FROM employees
    WHERE salary > 10000
INTERSECT -- UNION
SELECT * FROM employees
    WHERE department_id = 100;

-- alternative
SELECT * FROM employees
    WHERE salary > 10000 AND department_id = 100

SELECT * FROM employees
    GROUP BY department_id

