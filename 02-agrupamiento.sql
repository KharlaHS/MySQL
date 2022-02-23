/*
Consultas de agrupamiento
LAs utilizamos para agregar resultados que tengan el mismo valor
*/

-- Selecciona los datos de inventory agrupados por store_id
SELECT * FROM inventory GROUP BY store_id;

-- Selecciona los datos de rental agrupados por customer_id
SELECT * FROM rental GROUP BY customer_id;

-- Selecciona el coutry_id y el número de ciudades que tiene cada pais agrupado por pais
SELECT country_id, COUNT(city_id) AS "Total_de_ciudades" FROM city GROUP BY country_id;

-- Esta consulta para saber si la parte de arriba arroja los datos correctos
SELECT * FROM city WHERE country_id = 4;

-- Selecciona el coutry_id y el número de ciudades que tiene cada pais agrupado por pais que tengan mas de 2 ciudades 
SELECT country_id, COUNT(city_id) AS "Total_de_ciudades" FROM city GROUP BY country_id HAVING total_de_ciudades > 2;

-- Seleccionar el pais que tiene mas ciudades;
SELECT country_id, COUNT(city_id) AS "total_de_ciudades" FROM city GROUP BY country_id ORDER BY total_de_ciudades DESC LIMIT 1;

/* filmes con la película con mayor duracion length*/
SELECT * FROM film ORDER BY length DESC LIMIT 1;

-- otra manera de obtener la pelicula con mayor duracion es utilizando...03-funciones>>
