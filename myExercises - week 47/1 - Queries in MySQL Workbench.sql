USE sakila;
SELECT * FROM actor;
SELECT * FROM actor WHERE last_name = 'CAGE';
SELECT * FROM actor WHERE NOT first_name = 'ZERO' AND NOT first_name = 'NICK';
SELECT * FROM actor WHERE first_name IN ('NICK', 'JOHNNY', 'JAMES', 'MORGAN', 'WHOOPI');
SELECT * FROM actor WHERE actor_id BETWEEN 50 AND 150;
SELECT * FROM actor WHERE first_name LIKE 'C%';
SELECT * FROM actor ORDER BY first_name;
SELECT * FROM actor ORDER BY last_name DESC;
SELECT count(*) FROM actor;
SELECT count(DISTINCT first_name) FROM actor;






