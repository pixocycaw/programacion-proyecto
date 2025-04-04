-- Crear y usar la base de datos
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
    precio_total DECIMAL(10, 2) NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id) ON DELETE CASCADE
);

-- Detalles_Pedido
CREATE TABLE detalles_pedido (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES productos(id) ON DELETE CASCADE
);