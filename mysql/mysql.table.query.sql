USE pdb

SELECT * FROM countries

SELECT * FROM employees

SELECT * FROM departments

SELECT first_name, email FROM employees

SELECT first_name AS "First Name", email FROM employees

SELECT first_name, salAry, salary + 10 FROM employees

SELECT first_name, email, salary FROM employees ORDER BY salary DESC

SELECT employee_id, first_name, email, salary FROM employees ORDER BY salary DESC LIMIT 10 OFFSET 10

SELECT first_name, email FROM employees WHERE (department_id = 60 AND salary > 5000);

SELECT * FROM employees WHERE last_name LIKE 'green%'

SELECT * FROM employees WHERE last_name LIKE '%ee%'

SELECT * FROM employees WHERE last_name LIKE '%ey'



SELECT COUNT(salary) FROM employees


CREATE TABLE stu(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(200) NOT NULL
)

INSERT INTO stu(name) VALUES("hai")

SELECT * FROM stu

TRUNCATE TABLE stu

DROP Table stu

SELECT department_id, AVG(salary)
FROM employees
WHERE
    department_id != 20
GROUP BY
    department_id
HAVING
    AVG(salary) > 5000

SELECT *
FROM employees
WHERE
    department_id = (
        SELECT department_id
        FROM departments
        WHERE
            department_name = 'IT'
    )