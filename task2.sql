-- Drop tables if they already exist (clean start)
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Courses;


-- Create Tables

CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_name TEXT NOT NULL,
    credits INTEGER NOT NULL
);

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER,
    course_id INTEGER,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);



INSERT INTO Courses (course_name, credits) VALUES ('Computer Science', 4);
INSERT INTO Courses (course_name, credits) VALUES ('Mathematics', 3);
INSERT INTO Courses (course_name, credits) VALUES ('Physics', 4);

-- Insert sample students
INSERT INTO Students (name, age, course_id) VALUES ('Rajesh', 20, 1);
INSERT INTO Students (name, age, course_id) VALUES ('Priya', 22, 2);
INSERT INTO Students (name, age, course_id) VALUES ('Anil', 19, 3);
INSERT INTO Students (name, age, course_id) VALUES ('Kavya', 21, 2);

-
-- Update student's age
UPDATE Students
SET age = 23
WHERE name = 'Priya';

-- Change Anil’s course from Physics to Computer Science
UPDATE Students
SET course_id = 1
WHERE name = 'Anil';

-- Update course credits
UPDATE Courses
SET credits = 5
WHERE course_name = 'Computer Science';


-- Delete Kavya's record
DELETE FROM Students
WHERE name = 'Kavya';

-- Delete courses with less than 4 credits
DELETE FROM Courses
WHERE credits < 4;


-- Show remaining students with their courses
SELECT s.student_id, s.name, s.age, c.course_name, c.credits
FROM Students s
LEFT JOIN Courses c ON s.course_id = c.course_id;

-- Show remaining courses
SELECT * FROM Courses;