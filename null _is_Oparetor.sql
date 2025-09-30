SELECT * FROM students WHERE email is NOT NULL;

SELECT COALESCE(NULL, NULL, 2, 3);

SELECT COALESCE(email, 'Not Provided') as email FROM students;

---------- update 
SELECT * FROM students;
SELECT * FROM students LIMIT 5;

SELECT * FROM students LIMIT 5 OFFSET 2; --- offset = skip first data
SELECT * FROM students LIMIT 5 OFFSET 2 * 1; --- offset = skip first data

UPDATE students SET email = 'default@gmail.com' WHERE email = NULL;

UPDATE students SET first_name= 'Sohodab', age = 25 WHERE student_id = 2 or student_id=3;
UPDATE students SET grade='C' WHERE student_id in (2,3);

---------- delete 

SELECT * FROM students;

DELETE FROM students;

DELETE FROM students WHERE grade='C';

DELETE FROM students WHERE age> 22 AND grade = 'B';


-------- group by

SELECT country, avg(age) as avgAge FROM students GROUP BY country; -- single data return by country

SELECT country, count(*) as totalStudent FROM students GROUP BY country;

SELECT grade, count(*) FROM students GROUP BY grade;


--------- group by and filter

SELECT course, count(*) FROM students GROUP BY course;
SELECT course, count(*) FROM students GROUP BY course HAVING count(*) > 4;

SELECT country, avg(age) FROM students GROUP BY country HAVING avg(age) > 22;

