SELECT * FROM countries

SELECT * FROM employees

SELECT * FROM departments

SELECT * FROM employees WHERE department_id = 60

SELECT first_name, salAry, salary + 10 FROM employees

SELECT COUNT(salary) FROM employees

USE pdb

CREATE TABLE stu(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(200) NOT NULL
)

INSERT INTO stu(name) VALUES("hai")

SELECT * FROM stu

TRUNCATE TABLE stu

DROP Table stu

SELECT * FROM employees WHERE department_id != 20

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