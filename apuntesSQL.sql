CREATE SCHEMA tienda;

-- CREATE DATABASE nombre ; crea una coleccion de esquemas 

USE tienda; -- seleccionar base de datos

/*
comentario multilinea
el primer rayo ejecuta todo el codigo, 
el segundo rayo solo ejecuta la linea seleccionada
*/
-- comentario de una sóla linea

DROP SCHEMA nombre; -- DROP sirve para eliminar base de datos/schema

-- crear una tabla 

CREATE TABLE Productos(id int NOT NULL AUTO_INCREMENT, primary key(id));
/*
para poder crear una tabla debemos agregar una columna por lo menos
*/

-- agrgar columna
ALTER TABLE productos ADD COLUMN nombre varchar(255) NOT NULL;

ALTER TABLE productos ADD COLUMN precio int NOT NULL AFTER id;

-- renombrar tabla 
ALTER TABLE productos RENAME inventario;

-- Es para mostrar las tablas de una base de datos
USE tienda;-- seleccionar primero la base de datos a manipular

SHOW TABLES;

-- eliminar una tabla
DROP TABLE inventario;

CREATE TABLE Productos(id int NOT NULL AUTO_INCREMENT, primary key(id));
ALTER TABLE productos ADD COLUMN nombre varchar(255) NOT NULL;

-- para renombrar y cambiar el tipo de dato en una columna
ALTER TABLE productos CHANGE COLUMN nombre precio INT NOT NULL;

-- borrar la columna
ALTER TABLE productos DROP COLUMN precio;

/*
crear una BD llamada tienda_abarrotes
productos
clientes
proveedores

c/tablas 5 columnas
*/







