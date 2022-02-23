/*
Where nos permite detener valores a través de un campo específico, tambien hace la funcion de una condicional
*/

-- Obtiene toda la informacion de la tabla actor
SELECT * FROM actor;

SELECT actor_id, first_name, last_name FROM actor;

/*
Operadores de comparación
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

-- Selecciona de la tabla actor todas las personas que se llamen Penelope
SELECT * FROM actor WHERE first_name = "Penelope";

-- Selecciona de la tabla actor todas las personas que No se llamen Penelope
SELECT * FROM actor WHERE first_name != "Penelope";

-- Selecciona de la tabla film todos los films cuya fila_id sea mayor a 50
SELECT * FROM film WHERE film_id > 50;

-- Selecciona de la tabla film todos los films cuya fila_id sea menor a 50
SELECT * FROM film WHERE film_id < 50;

-- Selecciona de la tabla customer todos los datos cuyo customer_id sea par
SELECT * FROM customer WHERE customer_id % 2 = 0;

SELECT * FROM film WHERE rental_rate = 2.99 AND rating = "PG-13";

/* Comodines */
-- Selecciona de la tabla actor todas las personas cuyo first_name termina con e
SELECT * FROM actor WHERE first_name LIKE "%e";

-- Selecciona de la tabla actor todas las personas cuyo first_name inicia con an
SELECT * FROM actor WHERE first_name LIKE "an%";

-- Selecciona de la tabla actor todas las personas cuyo last_name contenga n 
SELECT * FROM actor WHERE last_name LIKE "%n%";

-- Selecciona de la tabla actor todas las personas cuyo first_name o last_name empiecen con b
SELECT * FROM actor WHERE first_name LIKE "b%" OR last_name like "b%";

-- Selecciona de la tabla actor todas las personas cuyo first_name contenga k_caracter_r
SELECT * FROM actor WHERE first_name LIKE "%k_r%";
