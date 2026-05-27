CREATE TABLE student_log (
    log_id SERIAL PRIMARY KEY,
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    message TEXT
);

CREATE OR REPLACE FUNCTION log_student_insert()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO student_log(message)
    VALUES ('New student added: ' || NEW.name);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER student_insert_trigger
AFTER INSERT ON students
FOR EACH ROW
EXECUTE FUNCTION log_student_insert();