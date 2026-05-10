CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    gender VARCHAR(10),
    math INT,
    science INT,
    english INT,
    attendance INT
);

INSERT INTO students VALUES
(1,'Aarav','M',78,82,75,92),
(2,'Diya','F',88,91,85,96),
(3,'Rahul','M',45,56,50,60),
(4,'Sneha','F',92,89,94,98),
(5,'Varun','M',66,70,72,80),
(6,'Ananya','F',85,88,90,95),
(7,'Karan','M',55,60,58,65),
(8,'Priya','F',95,97,96,99);

SELECT * FROM students;

SELECT 
name,
(math + science + english)/3 AS average_marks
FROM students;

SELECT *
FROM students
ORDER BY (math + science + english)/3 DESC
LIMIT 1;

SELECT 
gender,
AVG((math + science + english)/3) AS avg_score
FROM students
GROUP BY gender;

SELECT *
FROM students
WHERE attendance >= 90;