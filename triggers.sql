--TRIGGER FUNCTION
CREATE OR REPLACE FUNCTION log_student_insert()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO student_logs(message)
    VALUES ('Student Added: ' || NEW.student_name);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--CREATE TRIGGER
CREATE TRIGGER student_insert_trigger
AFTER INSERT ON students
FOR EACH ROW
EXECUTE FUNCTION log_student_insert();

--TEST TRIGGER
INSERT INTO students(
    student_name,
    email,
    department,
    age,
    city
)
VALUES(
    'Ajay',
    'ajay@gmail.com',
    'CSE',
    21,
    'Hyderabad'
);