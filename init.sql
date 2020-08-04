CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email VARCHAR(32),
    phone_number INT
);

-- INSERT STATEMENT

INSERT INTO students
(name, email, phone_number)
VALUES
('Spongebob', 'frycook@krusty.krab', 9898901),
('Squidward', 'clarinetlover@hotmail.com', 8320809),
('Patrick', 'nothisispatrick@krusty.krab', 1234567);

-- SELECT STATEMENT

SELECT * FROM students;

SELECT * FROM students
WHERE id = 2;

SELECT name, email FROM students;

SELECT * FROM students
WHERE name IN ('Spongebob', 'Squidward')

SELECT * FROM students
WHERE id >=2;

SELECT COUNT(*) FROM track;

SELECT SUM(millisecods) FROM track;

SELECT MAX(millisecods) FROM track;
SELECT MIN(millisecods) FROM track;

SELECT AVG(unit_price) FROM track;

-- UPDATE

UPDATE students
SET name = 'Plankton';

UPDATE students
SET name = 'Spongebob',
email = 'mermaidman@diner.com'
WHERE id = 1;

SELECT * FROM students;

-- DELETE (be very careful, irreversible)
DELETE FROM students
WHERE id = 3;

-- DROP (be very careful, irreversible)

DROP TABLE IF EXISTS students;


--

-- #1

SELECT * FROM artist;

SELECT first_name, last_name, country FROM employee;

SELECT name, composer, milliseconds FROM track WHERE milliseconds > 299000;

SELECT COUNT(*) FROM track 
WHERE milliseconds > 299000;

-- Black Diamond

SELECT AVG(milliseconds) FROM track;

SELECT * FROM invoice;

-- 2
SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';

-- 3
SELECT first_name FROM customer
WHERE first_name LIKE '%a%';

SELECT * FROM track
ORDER BY milliseconds DESC
LIMIT 10;
