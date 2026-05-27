--INNER JOIN
SELECT students.student_name,
       courses.course_name,
       enrollments.marks
FROM enrollments
INNER JOIN students
ON students.student_id = enrollments.student_id
INNER JOIN courses
ON courses.course_id = enrollments.course_id;

--LEFT JOIN 
SELECT students.student_name,
       enrollments.marks
FROM students
LEFT JOIN enrollments
ON students.student_id = enrollments.student_id;

--RIGHT JOIN
SELECT courses.course_name,
       enrollments.marks
FROM enrollments
RIGHT JOIN courses
ON courses.course_id = enrollments.course_id;

--FULL OUTER JOIN
SELECT students.student_name,
       courses.course_name
FROM students
FULL OUTER JOIN enrollments
ON students.student_id = enrollments.student_id
FULL OUTER JOIN courses
ON courses.course_id = enrollments.course_id;
