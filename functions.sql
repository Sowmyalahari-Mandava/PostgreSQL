CREATE OR REPLACE FUNCTION total_students()
RETURNS INTEGER AS $$
BEGIN
    RETURN (SELECT COUNT(*) FROM students);
END;
$$ LANGUAGE plpgsql;

SELECT total_students();