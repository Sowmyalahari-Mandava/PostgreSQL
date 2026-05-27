SELECT department, AVG(age)
FROM students
GROUP BY department
HAVING AVG(age) > 21;