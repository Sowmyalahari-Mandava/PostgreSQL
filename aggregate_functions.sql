--COUNT
SELECT COUNT(*) AS total_students
FROM students;

--SUM
SELECT SUM(fee) AS total_fee
FROM courses;

--AVG
SELECT AVG(marks) AS average_marks
FROM enrollments;

--MAX
SELECT MAX(marks) AS highest_marks
FROM enrollments;

--MIN
SELECT MIN(marks) AS lowest_marks
FROM enrollments;