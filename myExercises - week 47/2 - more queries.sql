USE sakila;
INSERT INTO actor(first_name, last_name) VALUES('Magnus', 'Granno');
INSERT INTO film_actor(actor_id, film_id) VALUES(201, 3);
INSERT INTO film_actor(actor_id, film_id) VALUES(201, 6);
INSERT INTO film_actor(actor_id, film_id) VALUES(201, 403);
INSERT INTO film_actor(actor_id, film_id) VALUES(201, 371);
INSERT INTO film_actor(actor_id, film_id) VALUES(201, 153);
UPDATE actor SET first_name = 'Jax' WHERE actor_id = 201;
SELECT * FROM actor WHERE actor_id = 201;
DELETE FROM film_actor WHERE actor_id = 201;
DELETE FROM actor where actor_id = 201;