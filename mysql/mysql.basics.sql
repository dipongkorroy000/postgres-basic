use pdb

CREATE TABLE Student(
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    roll CHAR(3) UNIQUE NOT NULL,
    email VARCHAR(100) NOT NULL,
    age TINYINT NOT NULL, -- TINYINT == (1 - 127)
    address VARCHAR(250),

    Constraint UNIQUE(email)
)

CREATE TABLE `Library`(
    bookName VARCHAR(50) UNIQUE PRIMARY KEY,
    stu_id INT,
    FOREIGN KEY (stu_id) REFERENCES Student(id)
)



INSERT INTO Student(`firstName`, `lastName`, roll, email, age, address) 
    VALUES("dip", "rk", 101, "diprk@gmail.com", 23, "ramnagar")

INSERT INTO `Library`(`bookName`, stu_id) VALUES("Physics", 1)



SELECT * FROM Student;
SELECT * FROM `Library`;



-- ❌ কাজ করে না (FOREIGN KEY থাকলে)
-- TRUNCATE TABLE `Library`;
-- TRUNCATE TABLE Student;



-- প্রথমে Library-এর ডাটা ডিলিট করুন
DELETE FROM `Library`;

-- তারপর Student-এর ডাটা ডিলিট করুন
DELETE FROM Student;



-- অথবা একসাথে (যদি ON DELETE CASCADE থাকে)
-- DELETE FROM Student;  -- Library-এর ডাটাও ডিলিট হবে



DROP Table `Library`;
DROP Table Student;



-- multiple field according primary key

CREATE TABLE Users(
    name VARCHAR(30),
    class INT(2),

    PRIMARY KEY(name, class)
)

INSERT INTO Users(name, class) VALUES("sunny", 5);

-- INSERT INTO Users(name, class) VALUES("sunny", 5); not set for primary key