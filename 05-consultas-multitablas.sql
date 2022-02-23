-- cuando se consultan dos o mas tablas se combinan todas las columnas de la otra tabla 
SELECT * FROM category, language;

SELECT city_id, city, country FROM city INNER JOIN country ON city.country_id = country.country_id ORDER BY city_id ASC;

-- Seleccionar el nombre del pais, el nombre de la ciudad y direccion
-- primero identifico columnas y tablas, luego identifico mi sentencia, primero con la primera tabla y despues las demás
-- despues se filtra la información relacionando las columnas
-- las relaciones no tienen que ser entre todas las tablas pero actuan como una cadena
-- NO HAY RELCIONES BIDIRECCIONALES porque se repiten datos, sólo debe haber un camino
SELECT country, city, address FROM country
INNER JOIN city ON country.country_id = city.country_id
INNER JOIN address ON city.city_id = address.city_id;

-- Selecciona el actor y las peiculas en las cuales ha estado involucrado asi como la descripcion de cada pelicula
SELECT CONCAT(first_name, " ", last_name) AS "name", title, description FROM film_text
INNER JOIN film_actor ON film_actor.film_id = film_text.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id;