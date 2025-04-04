-- Crear y usar una base de datos.
CREATE DATABASE tienda;
USE tienda;

--
-- Crear las tablas de la tienda
--

-- Clientes
CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE, 
    telefono VARCHAR(15) UNIQUE,
    dni VARCHAR(9) NOT NULL UNIQUE,
    direccion VARCHAR(255) NOT NULL
);

-- Productos
CREATE TABLE productos (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

-- Pedidos
CREATE TABLE pedidos (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado ENUM('pendiente', 'procesado', 'enviado', 'cancelado') DEFAULT 'pendiente',
    fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    cantidad INT NOT NULL,
    precio_total DECIMAL(10, 2) NOT NULL,
    id_cliente INT NOT NULL,
    id_producto INT NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES Productos(id) ON DELETE CASCADE
);