-- Selecciona todas las peliculas que tienen la categoria de drama 
SELECT * FROM film_category WHERE category_id = 7;

-- Obtener los datos de las peliculas de una categoría... a esto se le conoce como subconsultas
SELECT * FROM film  WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 7);

-- Obtener todas las peliculas en donde haya participado un actor
SELECT film_id FROM film_actor WHERE actor_id = 33; 
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 33);
-- esta es una consulta a partir  del nombre y apellido del actor
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id IN (SELECT actor_id FROM actor WHERE first_name = 'RITA' AND last_name = 'REYNOLDS'));

-- BETWEEN nos permite seleccionar un rango de valores 
SELECT * FROM actor WHERE actor_id BETWEEN 16 AND 34;

