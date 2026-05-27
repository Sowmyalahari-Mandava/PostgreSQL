SELECT * FROM students;

UPDATE students
SET department = 'AI & DS'
WHERE student_id = 1;

DELETE FROM students
WHERE student_id = 2;

SELECT students.name, courses.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.student_id
JOIN courses
ON enrollments.course_id = courses.course_id;

CREATE VIEW student_course_view AS
SELECT students.name, courses.course_name
FROM students
JOIN enrollments
ON students.student_id = enrollments.student_id
JOIN courses
ON courses.course_id = enrollments.course_id;

CREATE INDEX idx_student_name
ON students(name);