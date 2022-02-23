/*
crear una BD llamada tienda_abarrotes
productos
clientes
proveedores

c/tabla 5 columnas
*/
CREATE SCHEMA tienda_abarrotes;
USE tienda_abarrotes;
CREATE TABLE Productos(id int NOT NULL AUTO_INCREMENT, primary key(id));
CREATE TABLE clientes(id int NOT NULL AUTO_INCREMENT, primary key(id));
DROP TABLE clientes;
CREATE TABLE clientes(id int NOT NULL AUTO_INCREMENT, primary key(id));
CREATE TABLE proveedores(id int NOT NULL AUTO_INCREMENT, primary key(id));
ALTER TABLE productos ADD COLUMN articulo varchar(255) NOT NULL;
ALTER TABLE productos ADD COLUMN precio int NOT NULL;
ALTER TABLE productos ADD COLUMN tamanio char NOT NULL;
ALTER TABLE productos ADD COLUMN marca varchar(255) NOT NULL;
ALTER TABLE productos ADD COLUMN color varchar(255) NOT NULL;
ALTER TABLE clientes ADD COLUMN nombre varchar(255) NOT NULL;
ALTER TABLE clientes ADD COLUMN edad tinyint NOT NULL;
ALTER TABLE clientes ADD COLUMN email varchar(255) NOT NULL;
ALTER TABLE clientes ADD COLUMN contrasenia varchar(255) NOT NULL;
ALTER TABLE proveedores ADD COLUMN empresa varchar(255) NOT NULL;
ALTER TABLE proveedores ADD COLUMN fecha_pedido date NOT NULL;
ALTER TABLE proveedores ADD COLUMN  telefono varchar(255) NOT NULL;
ALTER TABLE proveedores ADD COLUMN nombre varchar(255) NOT NULL;