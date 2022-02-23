/*
>> SÓLO SE PUEDEN UTILIZAR CON VALORE NUMÉRICOS <<
MAX nos permite obtener el valor máximo(sólo devuleve un dato*)
MIN nos permite obtener el vaor mínimo
AVG nos permite obtener un promedio
SUM nos suma los elementos de una columna
*/
/* filmes con la película con mayor duracion length */
SELECT * FROM film ORDER BY length DESC LIMIT 1;

-- Obtiene la mayor duración 
SELECT MAX(length) FROM film;

SELECT MAX(rental_rate) FROM film;

-- OBTIENE LA MENOR DURACION
SELECT MIN(length) FROM film;

-- NOS PERMITE OBTENER EL PROMEDIO 
SELECT AVG(length) FROM film;

-- Nos permite obtener la suma de los valores de las columnas
-- cuanto cuesta reemplazar el inventario
SELECT SUM(replacement_cost) FROM film;