-- Active: 1787211127687@@127.0.0.1@3306@mysql
CREATE DATABASE pdb DEFAULT CHARACTER SET = 'utf8mb4';

DROP DATABASE pdb

USE pdb

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    date_of_birth DATE,
    department_id VARCHAR(100),
    salary INT
)

DROP TABLE employees;

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(101) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    budget INT
)

CREATE TABLE employee_projects (
    employee_id INT NOT NULL,
    project_id INT NOT NULL,
    PRIMARY KEY (employee_id, project_id),
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employees (id),
    CONSTRAINT fk_project FOREIGN KEY (project_id) REFERENCES projects (id)
)

INSERT INTO
    employees (
        first_name,
        last_name,
        date_of_birth,
        department_id,
        salary
    )
VALUES (
        'raj',
        'khan',
        STR_TO_DATE('11-02-2027', '%d-%m-%Y'),
        'XYZ123IK',
        45000
    );

INSERT INTO
    projects (
        project_name,
        start_date,
        end_date,
        budget
    )
VALUES (
        "soft project",
        STR_TO_DATE("15-04-2027", "%d-%m-%Y"),
        STR_TO_DATE("15-04-2027", "%d-%m-%Y"),
        55000
    ),
    (
        "web project",
        STR_TO_DATE("25-04-2027", "%d-%m-%Y"),
        STR_TO_DATE("19-04-2027", "%d-%m-%Y"),
        59000
    )

INSERT INTO
    employee_projects (employee_id, project_id)
VALUES (1, 1)

SELECT * FROM employees

SELECT * FROM projects

SELECT e.first_name, e.last_name, p.project_name, p.start_date
FROM
    employee_projects AS ep
    JOIN employees AS e ON ep.employee_id = e.id
    JOIN projects AS p ON ep.project_id = p.id;


