INSERT INTO students(student_name,email,department,age,city)
VALUES
('Sowmya','sowmya@gmail.com','CSE',21,'Vijayawada'),
('Rahul','rahul@gmail.com','ECE',22,'Hyderabad'),
('Anjali','anjali@gmail.com','CSE',20,'Guntur'),
('Kiran','kiran@gmail.com','EEE',23,'Chennai'),
('Sneha','sneha@gmail.com','IT',21,'Bangalore'),
('Rohit','rohit@gmail.com','MECH',24,'Mumbai'),
('Priya','priya@gmail.com','CIVIL',22,'Delhi'),
('Arjun','arjun@gmail.com','CSE',21,'Pune'),
('Keerthi','keerthi@gmail.com','IT',20,'Vizag'),
('Varun','varun@gmail.com','ECE',23,'Warangal');

INSERT INTO courses(course_name,fee,duration_months)
VALUES
('PostgreSQL',5000,3),
('Java Full Stack',12000,6),
('Python AI',15000,8),
('Data Science',20000,10),
('Cyber Security',18000,7);

INSERT INTO enrollments(student_id,course_id,marks)
VALUES
(1,1,85),
(2,2,78),
(3,3,92),
(4,4,66),
(5,5,88),
(6,1,75),
(7,2,81),
(8,3,95),
(9,4,72),
(10,5,89);