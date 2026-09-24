 -- =========================================================
-- STUDENT PERFORMANCE ANALYSIS
-- SQL DATA ANALYST PROJECT
-- =========================================================

-- Project Objective:
-- Analyze student performance using student details,
-- subjects, marks and attendance data.

-- Tool Used:
-- MySQL

-- SQL Concepts Used:
-- SELECT, WHERE, GROUP BY, HAVING, JOINs, CASE,
-- Subqueries, CTEs, EXISTS, UNION and Window Functions.


-- =========================================================
-- DATABASE
-- =========================================================

CREATE DATABASE student_performance;

USE student_performance;


-- =========================================================
-- TABLE 1: STUDENTS
-- =========================================================

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    gender VARCHAR(10)
);


-- =========================================================
-- INSERT DATA: STUDENTS
-- =========================================================

INSERT INTO students (student_id, name, city, gender) VALUES
(1, 'Aman', 'Delhi', 'Male'),
(2, 'Rohit', 'Mumbai', 'Male'),
(3, 'Pintu', 'Noida', 'Male'),
(4, 'Rahul', 'Lucknow', 'Male'),
(5, 'Priya', 'Delhi', 'Female'),
(6, 'Neha', 'Mumbai', 'Female'),
(7, 'Karan', 'Noida', 'Male'),
(8, 'Anjali', 'Lucknow', 'Female'),
(9, 'Vikas', 'Delhi', 'Male'),
(10, 'Sneha', 'Mumbai', 'Female'),
(11, 'Arjun', 'Noida', 'Male'),
(12, 'Simran', 'Lucknow', 'Female'),
(13, 'Mohit', 'Delhi', 'Male'),
(14, 'Riya', 'Mumbai', 'Female'),
(15, 'Sahil', 'Noida', 'Male'),
(16, 'Kavya', 'Lucknow', 'Female'),
(17, 'Nikhil', 'Delhi', 'Male'),
(18, 'Pooja', 'Mumbai', 'Female'),
(19, 'Aditya', 'Noida', 'Male'),
(20, 'Muskan', 'Lucknow', 'Female');


-- =========================================================
-- TABLE 2: SUBJECTS
-- =========================================================

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50)
);


-- =========================================================
-- INSERT DATA: SUBJECTS
-- =========================================================

INSERT INTO subjects (subject_id, subject_name) VALUES
(1, 'SQL'),
(2, 'Python'),
(3, 'Excel'),
(4, 'Power BI'),
(5, 'Statistics');


-- =========================================================
-- TABLE 3: MARKS
-- =========================================================

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    marks INT,
    attendance INT
);


-- =========================================================
-- INSERT DATA: MARKS
-- =========================================================

INSERT INTO marks (mark_id, student_id, subject_id, marks, attendance) VALUES
(1,1,1,85,92),
(2,1,2,78,88),
(3,1,3,91,95),
(4,1,4,82,90),
(5,1,5,88,93),

(6,2,1,72,80),
(7,2,2,81,85),
(8,2,3,76,82),
(9,2,4,69,78),
(10,2,5,74,81),

(11,3,1,91,95),
(12,3,2,88,92),
(13,3,3,94,96),
(14,3,4,89,94),
(15,3,5,92,95),

(16,4,1,68,75),
(17,4,2,74,79),
(18,4,3,70,77),
(19,4,4,65,72),
(20,4,5,71,76),

(21,5,1,95,98),
(22,5,2,90,94),
(23,5,3,93,96),
(24,5,4,97,99),
(25,5,5,91,95),

(26,6,1,79,85),
(27,6,2,83,88),
(28,6,3,87,91),
(29,6,4,80,86),
(30,6,5,85,89),

(31,7,1,76,82),
(32,7,2,71,78),
(33,7,3,80,84),
(34,7,4,74,80),
(35,7,5,78,83),

(36,8,1,88,91),
(37,8,2,92,95),
(38,8,3,85,90),
(39,8,4,90,94),
(40,8,5,89,93),

(41,9,1,67,74),
(42,9,2,73,79),
(43,9,3,69,76),
(44,9,4,75,81),
(45,9,5,72,78),

(46,10,1,84,90),
(47,10,2,86,92),
(48,10,3,81,88),
(49,10,4,87,91),
(50,10,5,83,89),

(51,11,1,93,96),
(52,11,2,89,94),
(53,11,3,91,95),
(54,11,4,95,97),
(55,11,5,90,94),

(56,12,1,77,84),
(57,12,2,82,87),
(58,12,3,79,85),
(59,12,4,85,89),
(60,12,5,81,86),

(61,13,1,86,91),
(62,13,2,80,86),
(63,13,3,88,92),
(64,13,4,83,89),
(65,13,5,85,90),

(66,14,1,90,94),
(67,14,2,87,91),
(68,14,3,92,95),
(69,14,4,89,93),
(70,14,5,94,96),

(71,15,1,73,80),
(72,15,2,78,84),
(73,15,3,75,82),
(74,15,4,81,86),
(75,15,5,77,83),

(76,16,1,89,93),
(77,16,2,84,89),
(78,16,3,91,95),
(79,16,4,86,91),
(80,16,5,88,92),

(81,17,1,82,88),
(82,17,2,79,84),
(83,17,3,85,90),
(84,17,4,80,86),
(85,17,5,83,89),

(86,18,1,96,98),
(87,18,2,91,95),
(88,18,3,94,97),
(89,18,4,92,96),
(90,18,5,95,98),

(91,19,1,75,81),
(92,19,2,80,85),
(93,19,3,78,83),
(94,19,4,72,79),
(95,19,5,76,82),

(96,20,1,87,92),
(97,20,2,85,89),
(98,20,3,90,94),
(99,20,4,88,93),
(100,20,5,86,91);


-- =========================================================
-- END OF DATABASE, TABLES AND DATA
-- =========================================================






-- =========================================================
-- ANALYSIS 1
-- How many students are there in the database?
-- =========================================================

SELECT COUNT(*) AS total_students
FROM students;


-- =========================================================
-- ANALYSIS 2
-- How many subjects are there in the project?
-- =========================================================

SELECT COUNT(*) AS total_subjects
FROM subjects;


-- =========================================================
-- ANALYSIS 3
-- How many marks records are there for each subject?
-- =========================================================

SELECT
    subject_id,
    COUNT(*) AS total_marks_records
FROM marks
GROUP BY subject_id;


-- =========================================================
-- ANALYSIS 4
-- How many marks records are there for each subject,
-- along with the subject name?
-- =========================================================

SELECT
    s.subject_name,
    COUNT(*) AS total_marks_records
FROM marks m
INNER JOIN subjects s
    ON m.subject_id = s.subject_id
GROUP BY s.subject_name;


-- =========================================================
-- ANALYSIS 5
-- What is the average marks for each subject?
-- =========================================================

SELECT
    s.subject_name,
    AVG(m.marks) AS average_marks
FROM marks m
INNER JOIN subjects s
    ON m.subject_id = s.subject_id
GROUP BY s.subject_name;


-- =========================================================
-- ANALYSIS 6
-- Which students scored more than 80 marks?
-- =========================================================

SELECT
    s.name,
    m.marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
WHERE m.marks > 80;


-- =========================================================
-- ANALYSIS 7
-- Display the names of students who scored
-- more than 80 marks.
-- =========================================================

SELECT
    s.name,
    m.marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
WHERE m.marks > 80;


-- =========================================================
-- ANALYSIS 8
-- How many students are there in each city?
-- =========================================================

SELECT
    city,
    COUNT(*) AS total_students
FROM students
GROUP BY city;


-- =========================================================
-- ANALYSIS 9
-- What is the average marks of students in each city?
-- =========================================================

SELECT
    s.city,
    AVG(m.marks) AS average_marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.city;


-- =========================================================
-- ANALYSIS 10
-- What is the highest mark in each subject?
-- =========================================================

SELECT
    s.subject_name,
    MAX(m.marks) AS highest_marks
FROM subjects s
INNER JOIN marks m
    ON s.subject_id = m.subject_id
GROUP BY s.subject_name;


-- =========================================================
-- ANALYSIS 11
-- Which students scored more than 90 marks?
-- Display their names and marks.
-- =========================================================

SELECT
    s.name,
    m.marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
WHERE m.marks > 90;


-- =========================================================
-- ANALYSIS 12
-- Find the total marks of each student.
-- =========================================================

SELECT
    s.name,
    SUM(m.marks) AS total_marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.name;


-- =========================================================
-- ANALYSIS 13
-- Find the average marks of each student.
-- =========================================================

SELECT
    s.name,
    AVG(m.marks) AS average_marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.name;


-- =========================================================
-- ANALYSIS 14
-- Which students have total marks greater than 400?
-- =========================================================

SELECT
    s.name,
    SUM(m.marks) AS total_marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.name
HAVING SUM(m.marks) > 400;


-- =========================================================
-- ANALYSIS 15
-- Which subjects have an average marks greater than 85?
-- =========================================================

SELECT
    s.subject_name,
    AVG(m.marks) AS average_marks
FROM subjects s
INNER JOIN marks m
    ON s.subject_id = m.subject_id
GROUP BY s.subject_name
HAVING AVG(m.marks) > 85;


-- =========================================================
-- ANALYSIS 16
-- What is the highest mark obtained by each student?
-- =========================================================

SELECT
    s.name,
    MAX(m.marks) AS highest_marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.name;


-- =========================================================
-- ANALYSIS 17
-- What is the lowest mark obtained by each student?
-- =========================================================

SELECT
    s.name,
    MIN(m.marks) AS lowest_marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.name;


-- =========================================================
-- ANALYSIS 18
-- Which students have an average marks greater than 80?
-- =========================================================

SELECT
    s.name,
    AVG(m.marks) AS average_marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.name
HAVING AVG(m.marks) > 80;


-- =========================================================
-- ANALYSIS 19
-- What is the highest mark in each city?
-- =========================================================

SELECT
    s.city,
    MAX(m.marks) AS highest_marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.city;


-- =========================================================
-- ANALYSIS 20
-- Which students have scored less than 70 marks
-- in any subject?
-- =========================================================

SELECT
    s.name,
    m.marks AS marks_below_70
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
WHERE m.marks < 70;


-- =========================================================
-- ANALYSIS 21
-- Find the average marks of each student and
-- assign a performance level.
--
-- Average >= 85  -> Excellent
-- Average >= 70  -> Good
-- Average < 70   -> Needs Improvement
-- =========================================================

SELECT
    s.name,
    AVG(m.marks) AS average_marks,
    CASE
        WHEN AVG(m.marks) >= 85 THEN 'Excellent'
        WHEN AVG(m.marks) >= 70 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS performance_level
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.name;


-- =========================================================
-- ANALYSIS 22
-- For each city, find the total number of students
-- and the number of students whose average marks
-- are greater than 80.
-- =========================================================

WITH student_average AS (
    SELECT
        s.student_id,
        s.name,
        s.city,
        AVG(m.marks) AS average_marks
    FROM students s
    INNER JOIN marks m
        ON s.student_id = m.student_id
    GROUP BY
        s.student_id,
        s.name,
        s.city
)
SELECT
    city,
    COUNT(*) AS total_students,
    SUM(
        CASE
            WHEN average_marks > 80 THEN 1
            ELSE 0
        END
    ) AS students_above_80
FROM student_average
GROUP BY city;


-- =========================================================
-- ANALYSIS 23
-- How many students scored more than 80 marks
-- in each subject?
-- =========================================================

SELECT
    s.subject_name,
    COUNT(*) AS students_above_80
FROM subjects s
INNER JOIN marks m
    ON s.subject_id = m.subject_id
WHERE m.marks > 80
GROUP BY s.subject_name;


-- =========================================================
-- ANALYSIS 24
-- Find students whose marks are greater than
-- the overall average marks of the database.
-- =========================================================

SELECT
    s.name,
    m.marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
WHERE m.marks > (
    SELECT AVG(marks)
    FROM marks
);


-- =========================================================
-- ANALYSIS 25
-- Using a CTE, calculate the total marks of each
-- student and display only students whose total
-- marks are greater than 400.
-- =========================================================

WITH student_total AS (
    SELECT
        s.name,
        SUM(m.marks) AS total_marks
    FROM students s
    INNER JOIN marks m
        ON s.student_id = m.student_id
    GROUP BY s.name
)
SELECT
    name,
    total_marks
FROM student_total
WHERE total_marks > 400;


-- =========================================================
-- ANALYSIS 26
-- Find students who have at least one marks record
-- where the marks are 95 or higher.
-- =========================================================

SELECT
    s.name
FROM students s
WHERE EXISTS (
    SELECT 1
    FROM marks m
    WHERE m.student_id = s.student_id
      AND m.marks >= 95
);


-- =========================================================
-- ANALYSIS 27
-- Retrieve students from Delhi and Mumbai and
-- combine both results into a single result.
-- =========================================================

SELECT
    name,
    city
FROM students
WHERE city = 'Delhi'

UNION

SELECT
    name,
    city
FROM students
WHERE city = 'Mumbai';


-- =========================================================
-- ANALYSIS 28
-- Calculate the total marks of each student and
-- assign a rank based on total marks.
-- =========================================================

SELECT
    s.name,
    SUM(m.marks) AS total_marks,
    RANK() OVER (
        ORDER BY SUM(m.marks) DESC
    ) AS total_rank
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY s.name;


-- =========================================================
-- ANALYSIS 29
-- Display each student's subject-wise marks along
-- with the marks obtained in the previous subject.
-- =========================================================

SELECT
    s.name,
    m.subject_id,
    m.marks,
    LAG(m.marks) OVER (
        PARTITION BY s.student_id
        ORDER BY m.subject_id
    ) AS previous_marks
FROM students s
INNER JOIN marks m
    ON s.student_id = m.student_id;


-- =========================================================
-- ANALYSIS 30
-- Create a complete student performance report
-- including:
--
-- 1. Student name
-- 2. City
-- 3. Total marks
-- 4. Average marks
-- 5. Highest marks
-- 6. Lowest marks
-- 7. Performance level
-- 8. Overall rank
-- 9. Previous student's total marks
--
-- Display only students whose average marks are
-- greater than 80 and sort by total marks descending.
-- =========================================================

WITH student_performance AS (
    SELECT
        s.student_id,
        s.name,
        s.city,
        SUM(m.marks) AS total_marks,
        AVG(m.marks) AS average_marks,
        MAX(m.marks) AS highest_marks,
        MIN(m.marks) AS lowest_marks
    FROM students s
    INNER JOIN marks m
        ON s.student_id = m.student_id
    GROUP BY
        s.student_id,
        s.name,
        s.city
)

SELECT
    name,
    city,
    total_marks,
    average_marks,
    highest_marks,
    lowest_marks,

    CASE
        WHEN average_marks >= 85 THEN 'Excellent'
        WHEN average_marks >= 70 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS performance_level,

    RANK() OVER (
        ORDER BY total_marks DESC
    ) AS student_rank,

    LAG(total_marks) OVER (
        ORDER BY total_marks DESC
    ) AS previous_student_marks

FROM student_performance

WHERE average_marks > 80

ORDER BY total_marks DESC;






 





