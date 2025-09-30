create TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

DROP TABLE IF EXISTS students;

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'Alice',
        'Smith',
        20,
        'A',
        'Chemistry',
        'alice.smith@email.com',
        '2005-01-15',
        'A+',
        'USA'
    ),
    (
        'Bob',
        'Johnson',
        21,
        'B',
        'Chemistry',
        'bob.johnson@email.com',
        '2004-03-22',
        'B+',
        'Canada'
    ),
    (
        'Charlie',
        'Lee',
        22,
        'C',
        'Chemistry',
        'charlie.lee@email.com',
        '2005-07-09',
        'O-',
        'UK'
    ),
    (
        'Diana',
        'King',
        24,
        'B',
        'English',
        'diana.king@email.com',
        '2004-11-30',
        'AB+',
        'Australia'
    ),
    (
        'Ethan',
        'Brown',
        23,
        'A',
        'Math',
        'ethan.brown@email.com',
        '2005-05-18',
        'A-',
        'USA'
    ),
    (
        'Fiona',
        'Clark',
        21,
        'C',
        'Physics',
        'fiona.clark@email.com',
        '2004-09-25',
        'B-',
        'Canada'
    ),
    (
        'George',
        'Hall',
        22,
        'B',
        'Chemistry',
        'george.hall@email.com',
        '2005-02-15',
        'O+',
        'UK'
    ),
    (
        'Hannah',
        'Adams',
        20,
        'A',
        'English',
        'hannah.adams@email.com',
        '2004-11-30',
        'AB+',
        'Australia'
    ),
    (
        'Ian',
        'Baker',
        23,
        'B',
        'Math',
        'ian.baker@email.com',
        '2005-10-03',
        'A+',
        'USA'
    ),
    (
        'Julia',
        'Carter',
        21,
        'C',
        'Bengali',
        'julia.carter@email.com',
        '2004-12-12',
        'B+',
        'Canada'
    ),
    (
        'Kevin',
        'Davis',
        24,
        'A',
        'Chemistry',
        'kevin.davis@email.com',
        '2005-04-27',
        'O-',
        'UK'
    ),
    (
        'Laura',
        'Evans',
        20,
        'B',
        'English',
        'laura.evans@email.com',
        '2004-08-16',
        'AB+',
        'Australia'
    ),
    (
        'Mike',
        'Foster',
        23,
        'C',
        'Math',
        'mike.foster@email.com',
        '2005-03-05',
        'A-',
        'USA'
    ),
    (
        'Nina',
        'Green',
        21,
        'A',
        'Physics',
        'nina.green@email.com',
        '2004-07-19',
        'B-',
        'Canada'
    ),
    (
        'Oscar',
        'Harris',
        22,
        'B',
        'Chemistry',
        'oscar.harris@email.com',
        '2005-11-01',
        'O+',
        'UK'
    ),
    (
        'Paula',
        'Irving',
        20,
        'C',
        'Biology',
        'paula.irving@email.com',
        '2004-05-23',
        'AB-',
        'Australia'
    ),
    (
        'Quentin',
        'Jones',
        23,
        'A',
        'Math',
        'quentin.jones@email.com',
        '2005-09-11',
        'A+',
        'Nepal'
    ),
    (
        'Rachel',
        'Kim',
        25,
        'B',
        'Physics',
        'rachel.kim@email.com',
        '2004-02-28',
        'B+',
        'Canada'
    ),
    (
        'Sam',
        'Lewis',
        22,
        'C',
        'Chemistry',
        'sam.lewis@email.com',
        '2005-06-06',
        'O-',
        'UK'
    ),
    (
        'Tina',
        'Martin',
        25,
        'A',
        'Biology',
        'tina.martin@email.com',
        '2004-10-15',
        'AB+',
        'Bangladesh'
    ),
    (
        'Uma',
        'Nelson',
        23,
        'B',
        'Math',
        'uma.nelson@email.com',
        '2005-12-29',
        'A-',
        'Bangladesh'
    ),
    (
        'Victor',
        'Owens',
        24,
        'C',
        'Physics',
        'victor.owens@email.com',
        '2004-04-10',
        'B+',
        'Canada'
    ),
    (
        'Wendy',
        'Perez',
        22,
        'A',
        'Chemistry',
        'wendy.perez@email.com',
        '2005-08-22',
        'O+',
        'UK'
    ),
    (
        'Xander',
        'Quinn',
        20,
        'B',
        'Biology',
        'xander.quinn@email.com',
        '2004-01-05',
        'AB-',
        'Bangladesh'
    ),
    (
        'Yara',
        'Reed',
        24,
        'C',
        'Math',
        'yara.reed@email.com',
        '2005-11-15',
        'A+',
        'USA'
    ),
    (
        'Zack',
        'Scott',
        21,
        'A',
        'Physics',
        'zack.scott@email.com',
        '2004-06-30',
        'B-',
        'Nepal'
    ),
    (
        'Amber',
        'Taylor',
        25,
        'B',
        'Chemistry',
        'amber.taylor@email.com',
        '2005-01-20',
        'O+',
        'UK'
    ),
    (
        'Brian',
        'Underwood',
        20,
        'C',
        'Biology',
        'brian.underwood@email.com',
        '2004-03-15',
        'AB-',
        'Australia'
    ),
    (
        'Cathy',
        'Vincent',
        25,
        'A',
        'Math',
        'cathy.vincent@email.com',
        '2005-02-10',
        'A+',
        'USA'
    ),
    (
        'David',
        'White',
        21,
        'B',
        'Physics',
        'david.white@email.com',
        '2004-12-05',
        'B+',
        'Nepal'
    );

-- using select
SELECT * FROM students;

SELECT first_name, last_name, age FROM students;

SELECT
    first_name,
    last_name,
    age,
    country
FROM students
ORDER BY first_name;

-- column alias
SELECT
    first_name AS "First Name",
    last_name AS "Last Name",
    age AS "Age"
FROM students
ORDER BY "Age";

SELECT
    first_name,
    last_name,
    age,
    country
FROM students
WHERE
    age > 21;

-- sorting
SELECT
    first_name,
    last_name,
    age,
    country
FROM students
ORDER BY student_id DESC;

-- distinct

SELECT DISTINCT course FROM students;

SELECT DISTINCT age FROM students;

-- where

SELECT first_name, age, course, country
FROM students
WHERE
    country = 'UK';

SELECT first_name, country FROM students WHERE grade = 'C';

SELECT first_name, country
FROM students
WHERE
    country = 'UK'
    or country = 'Canada';

SELECT *
FROM students
WHERE (
        grade = 'A'
        OR grade = 'B'
    )
    AND (
        course = 'Physics'
        OR course = 'Chemistry'
    );

SELECT * FROM students WHERE country = 'USA' and age = 20;

SELECT * FROM students WHERE country = 'UK' AND grade = 'B'

SELECT * FROM students WHERE age = 25

SELECT * FROM students WHERE country != 'Nepal';
-- or
SELECT * FROM students WHERE NOT country = 'Nepal';

SELECT * FROM students WHERE country <> 'Nepal';

--- between

SELECT * FROM students WHERE age BETWEEN 20 AND 21;

SELECT DISTINCT age FROM students;

-- SELECT * FROM students WHERE country = 'Bangladesh' OR country = 'USA' OR = 'Nepal'
SELECT * FROM students WHERE country IN ('Bangladesh', 'Nepal');

SELECT * FROM students WHERE course IN ('Physics', 'Chemistry');

----------- Like vs ILike------ ILike is case insensitive

SELECT * FROM students WHERE first_name LIKE 'D%';

SELECT * FROM students WHERE first_name LIKE '%d';

SELECT * FROM students WHERE first_name LIKE '%d%';

SELECT * FROM students WHERE first_name LIKE '%d_'; -- must be last, single character

SELECT * FROM students WHERE email ILIKE 'A%'; -- must be last, single character

------------ NOT ------

SELECT * FROM students WHERE NOT country = 'Bangladesh';

SELECT * FROM students WHERE NOT grade = 'A';

SELECT upper(first_name) as name FROM students;

SELECT concat(first_name, ' ', last_name) as "full name" FROM students;

SELECT length(first_name) as "name" FROM students ORDER BY name ASC;

SELECT avg(age) as avg_age FROM students;
SELECT max(age) as max_age FROM students;
SELECT min(age) as min_age FROM students;

SELECT sum(age) as sum_of_age FROM students;

SELECT count(*) FROM students; --- count row



