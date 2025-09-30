create table employe ( id SERIAL, name varchar(100), age INT )

ALTER TABLE employe RENAME to employee;

SELECT * FROM employee;

DROP TABLE employee

alter TABLE employee add COLUMN email VARCHAR(50);
# column name change
ALTER TABLE employee RENAME COLUMN name to user_name;

ALTER TABLE employee alter COLUMN user_name type VARCHAR(50);

ALTER TABLE employee alter COLUMN email set NOT NULL;

ALTER TABLE employee alter COLUMN email DROP NOT NULL;

-- set default value
INSERT INTO employee (user_name, age) VALUES ('mir', 28);

ALTER TABLE employee
alter COLUMN email
set DEFAULT 'example@gmail.com';

--  add constraint (table level constraint)
ALTER TABLE employee
add constraint unique_employee_email UNIQUE (email);

INSERT INTO employee (user_name, age) values ('kamal', 20);

ALTER TABLE employee ADD constraint pk_employee_id PRIMARY KEY (email);