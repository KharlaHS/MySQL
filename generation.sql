CREATE SCHEMA Generation;
USE Generation;
-- crear tabla 
CREATE TABLE cohorte(id int NOT NULL AUTO_INCREMENT, PRIMARY KEY(id));
ALTER TABLE cohorte ADD COLUMN nombre varchar(255) NOT NULL;
ALTER TABLE cohorte ADD COLUMN edad INT NOT NULL;


-- agregar datos
INSERT INTO cohorte(nombre, edad) values
("Pedro", 15),
("Ash Ketchup", 12),
("Patricio", 22);

-- Mostrar datos de una tabla
SELECT * FROM cohorte; -- para la tabla seleccionada por defecto

SELECT * FROM world.city; -- para mostrar una tabla que no esta seleccionada

SELECT nombre FROM cohorte;

SELECT countryCode, Population FROM world.city;

SELECT Name AS "Nombre de los paises" FROM world.country; -- agregar un alias al nombre de la columna

-- UPDATE permite actualizar valores

UPDATE cohorte SET nombre = 'Juan'; -- sino uasamos el where se corre el riesgo de cambiar todos los valores de la columna

UPDATE cohorte SET 
nombre = 'Calamardo', 
edad = 30 
WHERE id = 6;

-- DELETE  Borra un registr de toda la columna 

DELETE FROM cohorte;
/*
nunca usar DELETE sin el WHERE
*/
DELETE FROM cohorte WHERE id = 5;