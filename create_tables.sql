--CREATE STUDENTS TABLE
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

--CREATE COURSES TABLE
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    fee NUMERIC(10,2),
    duration_months INT
);

--CREATE ENROLLMENTS TABLE
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),
    marks INT,
    enrollment_date DATE DEFAULT CURRENT_DATE
);
