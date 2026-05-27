--CREATE PROCEDURE
CREATE OR REPLACE PROCEDURE add_student(
    s_name VARCHAR,
    s_email VARCHAR,
    s_department VARCHAR,
    s_age INT,
    s_city VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO students(
        student_name,
        email,
        department,
        age,
        city
    )
    VALUES(
        s_name,
        s_email,
        s_department,
        s_age,
        s_city
    );
END;
$$;

--CALL PROCEDURE
CALL add_student(
    'Krishna',
    'krishna@gmail.com',
    'IT',
    22,
    'Vijayawada'
);