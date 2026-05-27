CREATE VIEW student_course_view AS
SELECT students.student_name,
       courses.course_name,
       enrollments.marks
FROM enrollments
JOIN students
ON students.student_id = enrollments.student_id
JOIN courses
ON courses.course_id = enrollments.course_id;