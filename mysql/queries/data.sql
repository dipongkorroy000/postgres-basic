-- Active: 1787211127687@@127.0.0.1@3306@mysql
USE pdb

DROP DATABASE test_db

CREATE TABLE Student (	
    StudentID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15)	
);

CREATE TABLE Instructor (	
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15),	
    Department VARCHAR(50)	
);

CREATE TABLE Course (	
    CourseID INT AUTO_INCREMENT PRIMARY KEY,	
    Title VARCHAR(255) NOT NULL,	
    Credits INT NOT NULL,	
    InstructorID INT,	
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)	
);

CREATE TABLE Enrollment (	
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,	
    StudentID INT,	
    CourseID INT,	
    EnrollmentDate DATE NOT NULL,	
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),	
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)	
);


-- Insert Demo Instructors
INSERT INTO Instructor (Name, Email, Phone, Department) VALUES 
('Dr. Alan Turing', 'alan.turing@university.edu', '555-0101', 'Computer Science'),
('Dr. Ada Lovelace', 'ada.lovelace@university.edu', '555-0102', 'Mathematics'),
('Dr. Grace Hopper', 'grace.hopper@university.edu', '555-0103', 'Software Engineering');

-- Insert Demo Students
INSERT INTO Student (Name, Email, Phone) VALUES 
('Alice Smith', 'alice.smith@student.edu', '555-1001'),
('Bob Jones', 'bob.jones@student.edu', '555-1002'),
('Charlie Brown', 'charlie.brown@student.edu', '555-1003'),
('Diana Prince', 'diana.prince@student.edu', '555-1004'),
('Evan Wright', 'evan.wright@student.edu', '555-1005');

-- Insert Demo Courses (Linked to Instructors)
INSERT INTO Course (Title, Credits, InstructorID) VALUES 
('Introduction to Computer Science', 3, 1),
('Advanced Algorithms', 4, 1),
('Calculus I', 4, 2),
('Linear Algebra', 3, 2),
('Software Architecture', 3, 3);

-- Insert Demo Enrollments (Linked to Students and Courses)
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES 
(1, 1, '2026-01-10'),
(1, 3, '2026-01-10'),
(1, 5, '2026-01-11'),
(2, 1, '2026-01-10'),
(2, 2, '2026-01-12'),
(3, 3, '2026-01-10'),
(3, 4, '2026-01-10'),
(4, 1, '2026-01-11'),
(4, 2, '2026-01-11'),
(4, 5, '2026-01-11'),
(5, 5, '2026-01-12');

SELECT * FROM `Student`

SELECT * FROM `Instructor`

SELECT * FROM `Course`

SELECT * FROM `Enrollment`

-- 2
INSERT INTO `Enrollment`(`StudentID`,`CourseID`,`EnrollmentDate`)
VALUES(
    5,
    (SELECT `CourseID` FROM `Course` ORDER BY `Credits` DESC LIMIT 1),
    CURDATE()
)

-- 3
UPDATE Course SET InstructorID = 2 WHERE CourseID = 3;

-- 4
SELECT i.Name, SUM(c.Credits) AS TotalCredits FROM Instructor i
    JOIN Course c ON i.InstructorID = c.InstructorID
        GROUP BY i.InstructorID, i.Name
            ORDER BY TotalCredits DESC
                LIMIT 1;

SELECT CURDATE()

-- 5
SELECT s.StudentID, s.Name, COUNT(e.CourseID) AS CourseCount FROM Student AS s
    JOIN Enrollment e ON s.StudentID = e.StudentID
        GROUP BY s.StudentID, s.Name
            HAVING COUNT(e.CourseID) > 2;

CREATE TABLE Instructor(
    name VARCHAR(50) PRIMARY KEY,
    salary INT
)

TRUNCATE TABLE Instructor

INSERT INTO Instructor(name, salary) VALUES ("Khan", 5000),("Sunny", 3000), ("Ali", 4000), ("Bali", 8000)

SELECT * FROM Instructor  ORDER BY salary DESC LIMIT 1 OFFSET 1



CREATE TABLE Instructor (   
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,    
    Name VARCHAR(255) NOT NULL, 
    Email VARCHAR(255) NOT NULL UNIQUE, 
    Phone VARCHAR(15),  
    Department VARCHAR(50)  
);  

CREATE TABLE Course (   
    CourseID INT AUTO_INCREMENT PRIMARY KEY,    
    Title VARCHAR(255) NOT NULL,    
    Credits INT NOT NULL,   
    InstructorID INT,   
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID) ON DELETE CASCADE
);