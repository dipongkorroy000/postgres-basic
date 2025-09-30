-- Active: 1759210675376@@127.0.0.1@5432@school
create DATABASE school;

DROP DATABASE school;

CREATE TABLE students (
    id SERIAL,
    name VARCHAR(50),
    age int,
    isActive BOOLEAN,
    dob DATE
);

drop TABLE students;

drop TABLE if EXISTS students;

create TABLE students (
    id SERIAL,
    username VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    age SMALLINT check (age > = 18),
    isActive BOOLEAN DEFAULT true,
    UNIQUE (username, email),
    PRIMARY KEY (username, email)
);

CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(50) UNIQUE,
    age INT check (age >= 18),
    isActive BOOLEAN DEFAULT true
)

insert INTO person (username, email, age)VALUES ('rana', 'rana@gmail.com', 20), ('raju', 'raju@gmail.com', 23);

INSERT INTO person VALUES ("saju", 'saju@gmail.com', 21);

SELECT * FROM person;